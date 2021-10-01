#!/usr/bin/env python
import rospy
from sensor_msgs.msg import NavSatFix

def callback(data):
    rospy.loginfo("Longitude: %f, Latitude %f" % (data.longitude, data.latitude))
    longitude = data.longitude
    latitude = data.latitude
    #Call for the programName(longitude,latitude)

def infoGetter():

    rospy.init_node('infoGetter', anonymous=True)

    rospy.Subscriber("bebop/fix", NavSatFix, callback)#First parameter is the name of the topic

    rospy.spin()

if __name__ == '__main__':
    infoGetter()