#!/usr/bin/env python 
'''
Illustrative example of UTM and local xy coordinates

Should be run with ipython --pylab
'''

import geonav_transform.geonav_conversions as gc
reload(gc)
import alvinxy.alvinxy as axy
reload(axy)


# Define local origin at lower right of UTM zone
olon = -126.0
olat = 40.0

Xutm = []
Yutm = []
Xxy = []
Yxy = []
Xa = []
Ya = []


lat = 41.0
lon = -126.0
utmy, utmx, utmzone = gc.LLtoUTM(lat,lon)
x, y = gc.ll2xy(lat,lon,olat,olon)
xa,ya = axy.ll2xy(lat,lon,olat,olon)
print utmzone
print "("+str(utmx)+","+str(utmy)+")"
print "("+str(x)+","+str(y)+")"
print "("+str(xa)+","+str(ya)+")"



