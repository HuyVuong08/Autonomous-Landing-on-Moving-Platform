#!/usr/bin/env python 

import rospy
import tf
from nav_msgs.msg import Odometry

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
        
    gps_pos = GPSXY()
    
    while not rospy.is_shutdown():
        br.sendTransform((gps_pos.x, gps_pos.y, 0.0),
                         (0.0, 0.0, 0.0, 1.0),
                         rospy.Time.now(),
                         "odom",
                         "gps_origin")
                         
        rate.sleep()