#! /usr/bin/env python
import os
import rospy
from sumit_xl_tools.srv import SumitXLPose, SumitXLPoseResponse, SumitXLPoseRequest
from geometry_msgs.msg import PoseWithCovarianceStamped
import rospkg

"""
# topic: /amcl_pose
# geometry_msgs/PoseWithCovarianceStamped 

std_msgs/Header header                                                                                                                                       
  uint32 seq                                                                                                                                                 
  time stamp                                                                                                                                                 
  string frame_id                                                                                                                                            
geometry_msgs/PoseWithCovariance pose                                                                                                                        
  geometry_msgs/Pose pose                                                                                                                                    
    geometry_msgs/Point position                                                                                                                             
      float64 x                                                                                                                                              
      float64 y                                                                                                                                              
      float64 z                                                                                                                                              
    geometry_msgs/Quaternion orientation                                                                                                                     
      float64 x                                                                                                                                              
      float64 y                                                                                                                                              
      float64 z                                                                                                                                              
      float64 w                                                                                                                                              
  float64[36] covariance
"""

class SummitXLPose(object):
    def __init__(self):
        self.pose_service = rospy.Service('/get_pose_sumitxl_service', SumitXLPose , self.pose_service_callback) # create the Service called my_service with the defined callback
        rospy.Subscriber("/amcl_pose", PoseWithCovarianceStamped, self.amcl_pose_callback)
        self.pose_now = PoseWithCovarianceStamped()
        
        rospack = rospkg.RosPack()
        self.spot_file_path = rospack.get_path('sumit_xl_tools') + "/spots/spots_saved.yaml"
        
        try:
            os.remove(self.spot_file_path)
        except:
            rospy.loginfo("File Not Found "+str(self.spot_file_path) )
        # Init File for Spot saving
        file2write=open(self.spot_file_path,'a')
        file2write.write("### This is the Spot Saving File ###\n")
        file2write.close()
        
    def start_loop_service(self):
        rospy.spin() # mantain the service open.
        
    def pose_service_callback(self, request):
        spot_name = request.label
        spot_pose = self.pose_now.pose.pose
        
        self.save_spot_in_yaml(spot_name, spot_pose)
        
        response = SumitXLPoseResponse()
        response.navigation_successfull = True
        response.message = "Spot <"+spot_name+"> Saved"

        return response
    
    
    def save_spot_in_yaml(self, spot_name, spot_pose):
        
        with open(self.spot_file_path, "a") as myfile:
            myfile.write(spot_name+":\n"+str(spot_pose)+"\n\n")
   
    
    def amcl_pose_callback(self, message):
        self.pose_now = message
        


def startPoseService():
    rospy.init_node('sumitxl_poseservice_server')
    sumitpose = SummitXLPose()
    sumitpose.start_loop_service()

if __name__ == "__main__":
    startPoseService()
    