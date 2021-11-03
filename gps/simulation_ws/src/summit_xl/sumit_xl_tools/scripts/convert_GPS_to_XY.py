#!/usr/bin/env python 
'''
Example illustrating use of local coordinate systems.
'''

# Import geonav tranformation module
import geonav_transform.geonav_conversions as gc
reload(gc)
# Import AlvinXY transformation module
import alvinxy.alvinxy as axy
reload(axy)

# Define a local orgin, latitude and longitude in decimal degrees
# Robotnik position at Fuente del Jarro
olat = 0.0
olon = 0.0

# Pick a point not too far from the origin
#lat = olat+0.01
#lon = olon+0.01
# Lecture of GPS after movin 1 meter in X, 0 in Y
lat = 39.5080331
lon = -0.4619816


xg1, yg1 = gc.ll2xy(olat,olon,olat,olon)
xg2, yg2 = gc.ll2xy(lat,lon,olat,olon)
deltax = xg2- xg1
deltay = yg2 - yg1

print('X1: %.1f, Y1: %.1f'
      %(xg1,yg1))
print('X2: %.1f, Y2: %.1f'
      %(xg2,yg2))
      
print('Delta_X: %.1f,Delta_Y: %.1f'
      %(deltax,deltay))

print "It should give around 1 meter in X and 0 in Y, but it can vary a lot depending on the GPS lecture, in this case 0.8 and 0.2"


# Convert to X/Y and back
# Convert a lat/lon to a local x/y
"""
print('Convert from lat/lon to x/y')
xg, yg = gc.ll2xy(lat,lon,olat,olon)
xa, ya = axy.ll2xy(lat,lon,olat,olon)
print('Geonav ll2xy, Lat: %.4f, Lon:%.4f >> X: %.1f, Y: %.1f'
      %(lat,lon,xg,yg))
print('AlvinXY ll2xy, Lat: %.4f, Lon:%.4f >> X: %.1f, Y: %.1f'
      %(lat,lon,xa,ya))


# Back to lat/lon
glat, glon = gc.xy2ll(xg,yg,olat,olon)
alat, alon = axy.xy2ll(xg,yg,olat,olon)
print('Geonav xy2xy, X: %.1f, Y: %.1f >> Lat: %.4f, Lon:%.4f '
      %(xg,yg,glat,glon))
print('\t Delta, Lat: %.12f, Lon: %.12f [deg]'
      %(lat-glat,lon-glon))
print('AlvinXY xy2xy, X: %.1f, Y: %.1f >> Lat: %.4f, Lon:%.4f '
      %(xa,ya,alat,alon))
print('\t Delta, Lat: %.12f, Lon: %.12f [deg]'
      %(lat-alat,lon-alon))
"""
