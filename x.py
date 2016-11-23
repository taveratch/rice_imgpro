import numpy as np
import cv2

cap = cv2.VideoCapture(0)
cap.set(3,500)
cap.set(4,500)

while(True):
    # Capture frame-by-frame
    ret, frame = cap.read()

    # Our operations on the frame come here
    gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
    hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
    lab = cv2.cvtColor(frame, cv2.COLOR_BGR2LAB)
    rgb = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)

    #blue
    lower_blue = np.array([110,50,50])
    upper_blue = np.array([130,255,255])
    mask_blue = cv2.inRange(hsv, lower_blue, upper_blue)
    res_blue = cv2.bitwise_and(frame,frame, mask= mask_blue)

    # Display the resulting frame
    cv2.imshow('GRAY',gray)
    cv2.imshow('HSV',hsv)
    cv2.imshow('LAB',lab)
    cv2.imshow('RGB',rgb)
    # cv2.imshow('BLUE',res_blue)

    if cv2.waitKey(1) & 0xFF == ord('q'):
        break

# When everything done, release the capture
cap.release()
cv2.destroyAllWindows()
