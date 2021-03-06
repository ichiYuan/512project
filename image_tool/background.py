from PIL import Image
from collections import Counter
import time
import random
import sys
def debug(obj):
    #print obj
    return obj

def randperm(N):
    s = list(range(N))
    random.shuffle(s)
    return s

def mostCommon(lst):
    data = Counter(lst)
    ret = data.most_common(1)[0][0]
    return ret, [x==ret and 1 or 0 for x in lst]    

def background(img):
    w, h = img.size
    debug("bgcolor")
    start = time.clock()
    colors = sorted(img.getcolors(w*h))
    debug(time.clock() - start)
    return debug(colors[-1][1])

def convert_data(img):
    debug("convert_data")
    start = time.clock()
    ret = list(img.getdata())
    debug(time.clock() - start)
    return ret

class ImageProcessor:

    class ImageData:
        def __init__(self, img):
            self.img = img
            self.data = list(img.getdata())
            self.W, self.H = img.size
            self.state = {}

        @property
        def imgdata(self):
            if "imgdata" not in self.state:
                self.state["imgdata"] = convert_data(self.img)
            self.cachedata = self.state["imgdata"]
            return self.cachedata

        @property
        def bgcolor(self):
            if "bgcolor" not in self.state:
                self.state["bgcolor"] = background(self.img)
            return self.state["bgcolor"]

        def at(self, i, j):
            idx = i * self.W + j
            return self.cachedata[idx]

    def __init__(self, imgfile, r = 0,c = 0,h = 0,w = 0):
        self.fullImg = Image.open(imgfile)
        self.W, self.H = self.fullImg.size
        self.fullData = self.ImageData(self.fullImg)
        if h != 0 and w != 0:
            self.set_region(r,c,h,w)

    def set_region(self,r,c,h,w):
        self.region = {'r':r,'c':c,'h':h,'w':w}
        self.subImg = self.fullImg.crop((c,r,c+w,r+h))
        self.subData = self.ImageData(self.subImg)
        return self

    def borderwidth(self):
        outerbg = self.fullData.bgcolor
        innerbg = self.subData.bgcolor
        self.subData.imgdata

        width = []
        for i in range(self.subData.H):
            j = 0
            while j < self.subData.W and self.subData.at(i,j) == outerbg:
                j += 1
            leftJ = j
            while j < self.subData.W and self.subData.at(i,j) != innerbg:
                j += 1
            rightJ = j
            width.append(rightJ-leftJ)
        return mostCommon(width)


    def padding(self):
        return self.leftpadding()

    def leftpadding(self):
        outerbg = self.fullData.bgcolor
        self.subData.imgdata

        minPad = self.subData.W
        for i in randperm(self.subData.H):
            j = 0
            while j < minPad and self.subData.at(i,j) == outerbg:
                j += 1
            minPad = j
        return minPad

    def rightpadding(self):
        outerbg = self.fullData.bgcolor
        self.subData.imgdata

        minPad = self.subData.W
        for i in randperm(self.subData.H):
            j = self.subData.W - 1
            while j >= self.subData.W - minPad and self.subData.at(i,j) == outerbg:
                j -= 1
            minPad = self.subData.W - j
        return minPad

    def toppadding(self):
        outerbg = self.fullData.bgcolor
        self.subData.imgdata

        minPad = self.subData.H
        for j in randperm(self.subData.W):
            i = 0
            while i < minPad and self.subData.at(i,j) == outerbg:
                i += 1
            minPad = i
        return minPad

    def bottompadding(self):
        outerbg = self.fullData.bgcolor
        self.subData.imgdata

        minPad = self.subData.H
        for j in randperm(self.subData.W):
            i = self.subData.H - 1
            while i >= self.subData.H - minPad and self.subData.at(i,j) == outerbg:
                j -= 1
            minPad = self.subData.H - i
        return minPad

    def bordercolor(self):
        outerbg = self.fullData.bgcolor
        innerbg = self.subData.bgcolor
        start = time.clock()
        pad = self.padding()
        width, mask = self.borderwidth()
        colors = set()
        for i in range(self.subData.H):
            j = pad
            if (not mask[i]) or self.subData.at(i,j) == outerbg:
                continue
            while j < pad+width and self.subData.at(i,j) != innerbg:
                colors.add(self.subData.at(i,j))
                j += 1
        #print time.clock() - start
        return list(colors)

    def imagesize(self):
        Lpad = self.leftpadding()
        Rpad = self.rightpadding()
        Tpad = self.toppadding()
        Bpad = self.bottompadding()
        return (self.subData.W-Lpad-Rpad, self.subData.H-Tpad-Bpad)

    def isCentered(self, thres = 5):
        Lpad = self.leftpadding()
        Rpad = self.rightpadding()
        return abs(Lpad - Rpad) < thres

    def isGlobalCentered(self, thres = 5):
        Lpad = self.leftpadding() + self.region['c']
        Rpad = self.rightpadding() + (self.fullData.W - self.region['c'] - self.region['w'])
        return abs(Lpad - Rpad) < thres
        
        
ip = ImageProcessor(sys.argv[-2])
for line in open(sys.argv[-1]):
    w = line.split()
    if (int(w[3])*int(w[4])==0):
        continue
    ip.set_region(int(w[1]),int(w[2]),int(w[3]),int(w[4]))
    print "imgprop('%s','left_pad',%d)."%(w[0],ip.leftpadding())
    print "imgprop('%s','right_pad',%d)."%(w[0],ip.rightpadding())
    print "imgprop('%s','top_pad',%d)."%(w[0],ip.toppadding())
    print "imgprop('%s','bottom_pad',%d)."%(w[0],ip.bottompadding())
    print "imgprop('%s','contentwidth',%d)."%(w[0],ip.imagesize()[0])
    print "imgprop('%s','contentheight',%d)."%(w[0],ip.imagesize()[1])
    print "imgprop('%s','bg_color','%s')."%(w[0],str(ip.subData.bgcolor))
    
    bwidth = ip.borderwidth()[0]
    if bwidth > 0:
        print "imgprop('%s','borderwidth',%d)."%(w[0],bwidth)
        print "imgprop('%s','bordercolor','%s')."%(w[0],str(ip.bordercolor()[:2]))

    
            


    

