#!/usr/bin/env python
import rospy
from sensor_msgs.msg import NavSatFix
from sensor_msgs.msg import JointState
from geometry_msgs.msg import Twist

"""
POSITION:
rostopic info /gps/fix                                                                                                                                             
Type: sensor_msgs/NavSatFix

uint8 COVARIANCE_TYPE_UNKNOWN=0                                                                                                                                           
uint8 COVARIANCE_TYPE_APPROXIMATED=1                                                                                                                                      
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN=2                                                                                                                                    
uint8 COVARIANCE_TYPE_KNOWN=3                                                                                                                                             
std_msgs/Header header                                                                                                                                                    
  uint32 seq                                                                                                                                                              
  time stamp                                                                                                                                                              
  string frame_id                                                                                                                                                         
sensor_msgs/NavSatStatus status                                                                                                                                           
  int8 STATUS_NO_FIX=-1                                                                                                                                                   
  int8 STATUS_FIX=0                                                                                                                                                       
  int8 STATUS_SBAS_FIX=1                                                                                                                                                  
  int8 STATUS_GBAS_FIX=2                                                                                                                                                  
  uint16 SERVICE_GPS=1                                                                                                                                                    
  uint16 SERVICE_GLONASS=2                                                                                                                                                
  uint16 SERVICE_COMPASS=4                                                                                                                                                
  uint16 SERVICE_GALILEO=8                                                                                                                                                
  int8 status                                                                                                                                                             
  uint16 service                                                                                                                                                          
float64 latitude                                                                                                                                                          
float64 longitude                                                                                                                                                         
float64 altitude                                                                                                                                                          
float64[9] position_covariance                                                                                                                                            
uint8 position_covariance_type


SPEED:
rostopic info /gps/fix_velocity                                                                                                                                    
Type: geometry_msgs/Vector3Stamped

std_msgs/Header header                                                                                                                                                    
  uint32 seq                                                                                                                                                              
  time stamp                                                                                                                                                              
  string frame_id                                                                                                                                                         
geometry_msgs/Vector3 vector                                                                                                                                              
  float64 x                                                                                                                                                               
  float64 y                                                                                                                                                               
  float64 z

"""

class MoveWithGPS(object):

    def __init__(self):
        rospy.loginfo("GPS Moving Initialising...")
        rospy.Subscriber("/gps/fix", NavSatFix, self.gps_pos_callback)
        rospy.Subscriber("/gps/fix_velocity", Vector3Stamped, self.gps_vel_callback)
        self.gps_pos = NavSatFix()
        self.gps_vel = Vector3Stamped()
        
    def gps_pos_callback(self,msg):
        self.gps_pos = msg
        
    def gps_vel_callback(self,msg):
        self.gps_vel = msg

class MoveSummitXL(object):
    def __init__(self):
        rospy.loginfo("SummitXL Movement Initialising...")
        
    

if __name__ == "__main__":
    
    rospy.init_node('gps_move_node', anonymous=True, log_level=rospy.INFO)
    summit_move_with_gps_object = MoveWithGPS()