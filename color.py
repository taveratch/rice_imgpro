
import cv2
import numpy as np
import math

def check_blue(hsv):
    blue = cv2.inRange(hsv,np.array((100,100,100)),np.array((120,255,255)))
    return blue

def check_green(hsv):
    green = cv2.inRange(hsv,np.array((60,100,100)),np.array((80,255,255)))
    return green

def check_purple(hsv):
    purple = cv2.inRange(hsv,np.array((130,100,100)),np.array((150,255,255)))
    return purple

def check_red(hsv):
    red = cv2.inRange(hsv,np.array((0,100,100)),np.array((20,255,255)))
    return red

def check_yellow(hsv):
    yellow = cv2.inRange(hsv,np.array((30,100,100)),np.array((50,255,255)))
    return yellow

# c = cv2.VideoCapture(0)
c = cv2.imread('brow_spot.png')
# cv2.imshow('COLOR',c)
# c.set(3,500)
# c.set(4,500)

# print c.isOpened()
# width,height = c.get(3),c.get(4)
height, width, channels = c.shape
print "frame width and height : ", width, height

def draw_center(c):
    w_W = int(width/2)
    h_H = int(height/2)
    cv2.circle(c,(w_W,h_H),10,[255,255,255],2)

def write_text(c,x,y):
    x_s = int(x-width/2)
    y_s = int(y-height/2)
    cv2.putText(c,"x:"+str(x_s)+"y"+str(y_s),(x,y),cv2.FONT_HERSHEY_SIMPLEX,1,(0,0,0))

Frame_Max_Y = width #ubuntu
Frame_Max_X = height #ubuntu

while(1):
    # _,f = c.read()
    # f = cv2.flip(f,1)
    blur = cv2.medianBlur(c,5)
    hsv = cv2.cvtColor(c,cv2.COLOR_BGR2HSV)
    draw_center(c)
    both_blue = check_blue(hsv)
    both_green = check_green(both_blue)
    both_purple = check_purple(both_green)
    both_red = check_red(both_purple)
    both_yellow = check_yellow(both_red)
    erode = cv2.erode(both_yellow,None,iterations = 3)
    dilate = cv2.dilate(erode,None,iterations = 10)

    contours,hierarchy = cv2.findContours(dilate,cv2.RETR_LIST,cv2.CHAIN_APPROX_SIMPLE)


    for cnt in contours:
        x,y,w,h = cv2.boundingRect(cnt)
        cx,cy = x+w/2, y+h/2

    #BLUE
	if 100 < hsv.item(cy,cx,0) < 120:
            cv2.rectangle(c,(x,y),(x+w,y+h),[255,0,0],2)
            print "Blue :"
            print "Center : (", str((x+w)/2) , "," , str((y+h)/2) , ")"

        # write_text(f,cx,cy)
    #GREEN
    if 60 < hsv.item(cy,cx,0) < 80:
            cv2.rectangle(c,(x,y),(x+w,y+h),[0,255,0],2)
            print "Green :"
            print "Center : (", str((x+w)/2) , "," , str((y+h)/2) , ")"

	    # write_text(f,cx,cy)
    #PURPLE
    if 130 < hsv.item(cy,cx,0) < 150:
            cv2.rectangle(c,(x,y),(x+w,y+h),[255,0,165],2)
            print "Purple :"
            print "Center : (", str((x+w)/2) , "," , str((y+h)/2) , ")"

        # write_text(f,cx,cy)
    #RED
    if 0 < hsv.item(cy,cx,0) < 20:
            cv2.rectangle(c,(x,y),(x+w,y+h),[0,0,255],2)
            print "Red :"
            print "Center : (", str((x+w)/2) , "," , str((y+h)/2) , ")"

        # write_text(f,cx,cy)
    #YELLOW
    if 30 < hsv.item(cy,cx,0) < 50:
            cv2.rectangle(c,(x,y),(x+w,y+h),[0,255,255],2)
            print "Yellow :"
            print "Center : (", str((x+w)/2) , "," , str((y+h)/2) , ")"

        # write_text(f,cx,cy)

    cv2.imshow('COLOR',c)

    if cv2.waitKey(25) == 27:
        break

cv2.destroyAllWindows()
c.release()
