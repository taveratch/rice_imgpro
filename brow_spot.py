import cv2
import numpy as np
import math
import sys
# c = cv2.imread('brow_spot.png')
path = sys.argv[1]
print "Path : ",path
c = cv2.imread(path)
height, width, channels = c.shape
print "Frame width : ", width
print "Frame height : ",height

def getthresholdedimg(hsv):
    blue = cv2.inRange(hsv,np.array((0,100,100)),np.array((20,255,255)))
    return blue

def write_text(f,x,y):
    x_s = int(x-width/2)
    y_s = int(y-height/2)
    cv2.putText(f,"x:"+str(x_s)+"y"+str(y_s),(x,y),cv2.FONT_HERSHEY_SIMPLEX,1,(0,0,0))

while(1):
    # cv2.imshow('ORIGINAL',c)
    blur = cv2.medianBlur(c,5)
    # cv2.imshow('BLUR',blur)
    hsv = cv2.cvtColor(c,cv2.COLOR_BGR2HSV)
    # cv2.imshow('HSV',hsv)
    both = getthresholdedimg(hsv)
    erode = cv2.erode(both,None,iterations = 3)
    dilate = cv2.dilate(erode,None,iterations = 10)
    contours,hierarchy = cv2.findContours(dilate,cv2.RETR_LIST,cv2.CHAIN_APPROX_SIMPLE)
    for cnt in contours:
        x,y,w,h = cv2.boundingRect(cnt)
        cx,cy = x+w/2, y+h/2
    if 0 < hsv.item(cy,cx,0) < 20:
            cv2.rectangle(c,(x,y),(x+w,y+h),[0,0,255],2)
            print "Red :"
            print "Center : (", str((x+w)/2) , "," , str((y+h)/2) , ")"
            write_text(c,cx,cy)

    cv2.imshow('RESULT',c)

    if cv2.waitKey(25) == 27:
        break

cv2.destroyAllWindows()
c.release()
