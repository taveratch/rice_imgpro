import sys

#python summarize.py 01_sum.txt 01_001_ana.txt 01_002_ana.txt 01_003_ana.txt 01_004_ana.txt 01_005_ana.txt 01_006_ana.txt
o_put = sys.argv[1]
inputs = []

print "output",o_put
index = 0

for i in sys.argv:
    if index >= 2:
        inputs.append(i)
    index = index +1


objs = []

def zum(str):
    color = str.split(":")[0]
    coor = str.split(":")[1]
    x_a = int( coor.split(",")[0] )
    y_a = int( coor.split(",")[1] )
    class Color(object):
        c = color
        x = x_a
        y = y_a
    temp = Color()
    print temp.c
    print temp.x
    print temp.y
    objs.append(temp)

for inp in inputs:
    f = open(inp, 'r')
    print "----------------"
    for x in f:
        zum(x)
    print "----------------"

print inputs

blues_x = []
greens_x = []
purples_x = []
reds_x = []
yellows_x = []

blues_y = []
greens_y = []
purples_y = []
reds_y = []
yellows_y = []

print "xxxxxxxxxxxx"
for o in objs:
    print o.c
    if o.c == "BLUE ":
        print "BB"
        blues_x.append(o.x)
        blues_y.append(o.y)
    if o.c == "GREEN ":
        greens_x.append(o.x)
        greens_y.append(o.y)
    if o.c == "PURPLE ":
        purples_x.append(o.x)
        purples_y.append(o.y)
    if o.c == "RED ":
        reds_x.append(o.x)
        reds_y.append(o.y)
    if o.c == "YELLOW ":
        yellows_x.append(o.x)
        yellows_y.append(o.y)

avg_blue_x = 0
avg_blue_y = 0
avg_green_x = 0
avg_green_y = 0
avg_purple_x = 0
avg_purple_y = 0
avg_red_x = 0
avg_red_y = 0
avg_yellow_x = 0
avg_yellow_y = 0

if len(blues_x) > 0:
    avg_blue_x = sum(blues_x)/len(blues_x)
    avg_blue_y = sum(blues_y)/len(blues_y)
if len(greens_x) > 0:
    avg_green_x = sum(greens_x)/len(greens_x)
    avg_green_y = sum(greens_y)/len(greens_y)
if len(purples_x) > 0:
    avg_purple_x = sum(purples_x)/len(purples_x)
    avg_purple_y = sum(purples_y)/len(purples_y)
if len(reds_x) > 0:
    avg_red_x = sum(reds_x)/len(reds_x)
    avg_red_y = sum(reds_y)/len(reds_y)
if len(yellows_x) > 0:
    avg_yellow_x = sum(yellows_x)/len(yellows_x)
    avg_yellow_y = sum(yellows_y)/len(yellows_y) 

print "BLUE"
print blues_x,avg_blue_x
print blues_y,avg_blue_y
print "GREEN"
print greens_x,avg_green_x
print greens_y,avg_green_y
print "PURPLE"
print purples_x,avg_purple_x
print purples_y,avg_purple_y
print "RED"
print reds_x,avg_red_x
print reds_y,avg_red_y
print "YELLOW"
print yellows_x,avg_yellow_x
print yellows_y,avg_yellow_y

file = open(o_put, 'r+')
file.seek(0)
file.truncate()
file.write("BLUE :  "+str(avg_blue_x)+" , "+str(avg_blue_y)+" \n")
file.write("GREEN :  "+str(avg_green_x)+" , "+str(avg_green_y)+" \n")
file.write("PURPLE :  "+str(avg_purple_x)+" , "+str(avg_purple_y)+" \n")
file.write("RED :  "+str(avg_red_x)+" , "+str(avg_red_y)+" \n")
file.write("YELLOW :  "+str(avg_yellow_x)+" , "+str(avg_yellow_y)+" \n")
file.close()