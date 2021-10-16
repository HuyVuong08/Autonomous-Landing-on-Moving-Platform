#!/usr/bin/env python
import time
import rospy
from math import pi, sin, cos, acos
import random
from robotnik_msgs.msg import ptz
from sensor_msgs.msg import JointState
from geometry_msgs.msg import Twist
"""
Topics To Write on:
type: std_msgs/Float64
/joint_pan_position_controller/command                                                                                                                       
/joint_tilt_position_controller/command


rostopic info /axis_camera/ptz_command                                                                                                      
Type: robotnik_msgs/ptz
# PAN value                                                                                                                                                  
float32 pan                                                                                                                                                  
# Tilt value                                                                                                                                                 
float32 tilt                                                                                                                                                 
# Zoom value                                                                                                                                                 
float32 zoom                                                                                                                                                 
# Flag for relative  movements                                                                                                                               
bool relative
"""

class PTZCamMove(object):

    def __init__(self):
        
        rospy.loginfo("PTZ Cam JointMover Initialising...")
        self.pub_joint_pan_position = rospy.Publisher('/axis_camera/ptz_command',
                                                            ptz,
                                                            queue_size=1)
        

    def init_ptz_pos(self):
        rospy.loginfo("Init Pos Start...")
        ptz_object = ptz()
        ptz_object.pan = pan
        ptz_object.tilt = 0.5
        ptz_object.zoom = zoom
        
        rate = rospy.Rate(5)
        for i in range(10):
            self.move_all_joints(ptz_object.pan, ptz_object.tilt, ptz_object.zoom, ptz_object.relative)
            rate.sleep()

    def move_all_joints(self, pan, tilt, zoom, relative=True):
        ptz_object = ptz()
        ptz_object.pan = pan
        ptz_object.tilt = tilt
        ptz_object.zoom = zoom
        ptz_object.relative = relative
        
        self.pub_joint_pan_position.publish(ptz_object)
    
    
    def pan_camera(self):
        
        rate = rospy.Rate(10)
        pan_speed = 1.0
        tilt_speed = 0.0
        zoom = 0.0
        
        rospy.loginfo("Pan left...")
        for i in range(40):
            self.move_all_joints(pan_speed, tilt_speed, zoom)
            rate.sleep()
            
        
        rospy.loginfo("Pan right...")
        pan_speed *= -1
        for i in range(80):
            self.move_all_joints(pan_speed, tilt_speed, zoom)
            rate.sleep()
            
        
        rospy.loginfo("Pan center...")
        pan_speed *= -1
        for i in range(40):
            self.move_all_joints(pan_speed, tilt_speed, zoom)
            rate.sleep()
            
    def tilt_camera(self):
        
        rate = rospy.Rate(10)
        pan_speed = 0.0
        tilt_speed = 1.0
        zoom = 0.0
        
        rospy.loginfo("Tilt left...")
        for i in range(40):
            self.move_all_joints(pan_speed, tilt_speed, zoom)
            rate.sleep()
            
        
        rospy.loginfo("Tilt right...")
        tilt_speed *= -1
        for i in range(80):
            self.move_all_joints(pan_speed, tilt_speed, zoom)
            rate.sleep()
            
        
        rospy.loginfo("Tilt center...")
        tilt_speed *= -1
        for i in range(40):
            self.move_all_joints(pan_speed, tilt_speed, zoom)
            rate.sleep()
            
    def zoom_camera(self):
        
        rate = rospy.Rate(10)
        pan_speed = 0.0
        tilt_speed = 0.0
        zoom = 100.0
        
        rospy.loginfo("Zoom in...")
        for i in range(40):
            self.move_all_joints(pan_speed, tilt_speed, zoom)
            rate.sleep()
            
        
        rospy.loginfo("Zoom out...")
        zoom *= -1
        for i in range(80):
            self.move_all_joints(pan_speed, tilt_speed, zoom)
            rate.sleep()
            
        
        rospy.loginfo("Zoom in...")
        zoom *= -1
        for i in range(40):
            self.move_all_joints(pan_speed, tilt_speed, zoom)
            rate.sleep()

    
    def start_loop(self):
        """
        Executed movements in a random way
        :return:
        """
        rospy.loginfo("Start PTZ Moving Test...")
        
        rospy.spin()



if __name__ == "__main__":
    rospy.init_node('ptz_cam_move_node', anonymous=True, log_level=rospy.INFO)
    jointmover_object = PTZCamMove()
    #jointmover_object.pan_camera()
    jointmover_object.tilt_camera()
    #jointmover_object.zoom_camera()