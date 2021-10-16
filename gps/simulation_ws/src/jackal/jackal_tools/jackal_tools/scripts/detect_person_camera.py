#!/usr/bin/env python

import rospy
import cv2
import numpy as np
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Image
from pedestrian_detector import PedestrianDetector

class DetectPersonCam(object):

    def __init__(self):
    
        self.bridge_object = CvBridge()
        self.image_sub = rospy.Subscriber("/front/left/image_raw",Image,self.camera_callback)
        self.pedestrian_detector = PedestrianDetector()
        self.init_time = rospy.get_time()
        self.now_pitch = 0
        self.now_roll = 0
        self.process_this_frame = True
        
    def camera_callback(self,data):
        
        try:
            # We select bgr8 because its the OpneCV encoding by default
            cv_image = self.bridge_object.imgmsg_to_cv2(data, desired_encoding="bgr8")
        except CvBridgeError as e:
            print(e)

        # To process only half of the images for faster performance
        if self.process_this_frame:
            self.pedestrian_detector.detect_pedestrian(cv_image)
        
        self.process_this_frame = not self.process_this_frame
    
    


def main():
    rospy.init_node('detect_person_camera_node', anonymous=True)
    
    detect_personcam_object = DetectPersonCam()
    
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main()