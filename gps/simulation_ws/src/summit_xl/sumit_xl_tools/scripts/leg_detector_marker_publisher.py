#!/usr/bin/env python
import rospy
from people_msgs.msg import PositionMeasurementArray


#!/usr/bin/env python

import rospy
from visualization_msgs.msg import Marker
from geometry_msgs.msg import Point


class MarkerBasics(object):

    def __init__(self):
        self.marker_objectlisher = rospy.Publisher('/marker_person_detected_leg', Marker, queue_size=1)
        self.rate = rospy.Rate(1)
        self.init_marker(index=0,z_val=0)
    
    def init_marker(self,index=0, z_val=0):
        self.marker_object = Marker()
        self.marker_object.header.frame_id = "/map"
        self.marker_object.header.stamp    = rospy.get_rostime()
        self.marker_object.ns = "haro"
        self.marker_object.id = index
        self.marker_object.type = Marker.MESH_RESOURCE
        self.marker_object.action = Marker.ADD
        
        my_point = Point()
        self.marker_object.pose.position = my_point
        
        self.marker_object.pose.orientation.x = 0
        self.marker_object.pose.orientation.y = 0
        self.marker_object.pose.orientation.z = 1.0
        self.marker_object.pose.orientation.w = 1.0
        self.marker_object.scale.x = 1.0
        self.marker_object.scale.y = 1.0
        self.marker_object.scale.z = 1.0
    
        self.marker_object.color.r = 0.0
        self.marker_object.color.g = 0.0
        self.marker_object.color.b = 0.0
        # This has to be otherwise it will be transparent
        self.marker_object.color.a = 0.0
        self.marker_object.mesh_resource = "package://person_sim/models/person_standing/meshes/standingv2.dae"
        self.marker_object.mesh_use_embedded_materials = True
        # If we want it for ever, 0, otherwise seconds before desapearing
        self.marker_object.lifetime = rospy.Duration(0)

    def update_position(self,position, reliability):
        
        self.marker_object.pose.position = position
        
        self.marker_objectlisher.publish(self.marker_object)

"""
### PositionMeasurementArray

std_msgs/Header header                                                                                                         
  uint32 seq                                                                                                                   
  time stamp                                                                                                                   
  string frame_id                                                                                                              
people_msgs/PositionMeasurement[] people                                                                                       
  std_msgs/Header header                                                                                                       
    uint32 seq                                                                                                                 
    time stamp                                                                                                                 
    string frame_id                                                                                                            
  string name                                                                                                                  
  string object_id                                                                                                             
  geometry_msgs/Point pos                                                                                                      
    float64 x                                                                                                                  
    float64 y                                                                                                                  
    float64 z                                                                                                                  
  float64 reliability                                                                                                          
  float64[9] covariance                                                                                                        
  byte initialization                                                                                                          
float32[] cooccurrence
"""
class LegDetector(object):
    def __init__(self):
        rospy.Subscriber("/leg_tracker_measurements", PositionMeasurementArray, self.leg_detect_callback)

        self.markerbasics_object = MarkerBasics()

    def leg_detect_callback(self,data):
        for people_object in data.people:
            self.markerbasics_object.update_position(people_object.pos, people_object.reliability)
    
    def start_loop(self):
        # spin() simply keeps python from exiting until this node is stopped
        rospy.spin()

if __name__ == '__main__':
    rospy.init_node('leg_detections_listener_node', anonymous=True)
    legdetector_object = LegDetector()
    legdetector_object.start_loop()
    