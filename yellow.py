
import cv2
import numpy as np
import math

def getthresholdedimg(hsv):
    blue = cv2.inRange(hsv,np.array((30,100,100)),np.array((50,255,255)))
    return blue

c = cv2.VideoCapture(0)
c.set(3,500)
c.set(4,500)
#c = cv2.VideoCapture('/usb_cam/image_raw')
print c.isOpened()
width,height = c.get(3),c.get(4)
print "frame width and height : ", width, height

def draw_center(f):
    w_W = int(width/2)
    #print w_W
    h_H = int(height/2)
    #print h_H
    cv2.circle(f,(w_W,h_H),10,[0,0,0],2)

def write_text(f,x,y):
    x_s = int(x-width/2)
    y_s = int(y-height/2)
    cv2.putText(f,"x:"+str(x_s)+"y"+str(y_s),(x,y),cv2.FONT_HERSHEY_SIMPLEX,1,(0,0,0))

Frame_Max_Y = width #ubuntu
Frame_Max_X = height #ubuntu

while(1):
    _,f = c.read()
    f = cv2.flip(f,1)
    blur = cv2.medianBlur(f,5)
    hsv = cv2.cvtColor(f,cv2.COLOR_BGR2HSV)
    draw_center(f)
    #both = hsv
    both = getthresholdedimg(hsv)
    erode = cv2.erode(both,None,iterations = 3)
    dilate = cv2.dilate(erode,None,iterations = 10)

    contours,hierarchy = cv2.findContours(dilate,cv2.RETR_LIST,cv2.CHAIN_APPROX_SIMPLE)


    for cnt in contours:
        x,y,w,h = cv2.boundingRect(cnt)
        cx,cy = x+w/2, y+h/2

    # print str(hsv.item(cy,cx,0))

	if 30 < hsv.item(cy,cx,0) < 50:
            cv2.rectangle(f,(x,y),(x+w,y+h),[0,255,255],2)
            print "Yellow :"
            print "Center : (", str((x+w)/2) , "," , str((y+h)/2) , ")"
	    #print("BLUE : ")
	    #print("Position : ("+str(x)+","+str(y)+")")
	    #print("Width : = "+str(w)+" Height"+str(h))
	    #c_x = cx-(Frame_Max_X)/2 # right+ & left-
	    #c_y = cy-(Frame_Max_Y)/2 # up- & down+y
	    # print("Center1 : ("+str(cx)+","+str(cy)+")")
	    # print("Center2 : ("+str(c_x)+","+str(c_y)+")")
	    write_text(f,cx,cy)


    cv2.imshow('YELLOW',f)

    if cv2.waitKey(25) == 27:
        break

cv2.destroyAllWindows()
c.release()
