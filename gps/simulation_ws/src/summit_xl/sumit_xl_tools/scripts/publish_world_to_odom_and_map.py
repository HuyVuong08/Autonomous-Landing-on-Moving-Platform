#!/usr/bin/env python 

# Import geonav tranformation module
import geonav_transform.geonav_conversions as gc
reload(gc)
# Import AlvinXY transformation module
import alvinxy.alvinxy as axy
reload(axy)
import rospy
import tf
from nav_msgs.msg import Odometry


def get_xy_based_on_lat_long(lat,lon, name):
    # Define a local orgin, latitude and longitude in decimal degrees
    # Robotnik position at Fuente del Jarro
    olat = 39.5080331
    olon = -0.4619816
    
    xg2, yg2 = gc.ll2xy(lat,lon,olat,olon)
    utmy, utmx, utmzone = gc.LLtoUTM(lat,lon)
    xa,ya = axy.ll2xy(lat,lon,olat,olon)

    rospy.loginfo("#########  "+name+"  ###########")  
    rospy.loginfo("LAT COORDINATES ==>"+str(lat)+","+str(lon))  
    rospy.loginfo("COORDINATES ==>"+str(xg2)+","+str(yg2))
    rospy.loginfo("COORDINATES ==>"+str(xa)+","+str(ya))
    rospy.loginfo("COORDINATES ==>"+str(utmx)+","+str(utmy))

    return xg2, yg2

class GPSXY(object):
    def __init__(self):
        rospy.Subscriber("/odometry/gps", Odometry, self.callback)
        self.x = 0.0
        self.y= 0.0

    def callback(self,msg):
        
        self.x = msg.pose.pose.position.x
        self.y= msg.pose.pose.position.y
        


if __name__ == '__main__':
    rospy.init_node('utm_to_map_node')
    br = tf.TransformBroadcaster()
    rate = rospy.Rate(3.0)
    xg2, yg2 = get_xy_based_on_lat_long(lat=39.5080331,lon=-0.4619816, name="MAP")
    
    gps_pos = GPSXY()
    
    while not rospy.is_shutdown():
        br.sendTransform((gps_pos.x, gps_pos.y, 0.0),
                         (0.0, 0.0, 0.0, 1.0),
                         rospy.Time.now(),
                         "odom",
                         "gps_origin")
                         
        br.sendTransform((xg2, yg2, 0.0),
                         (0.0, 0.0, 0.0, 1.0),
                         rospy.Time.now(),
                         "map",
                         "gps_origin")

        rate.sleep()