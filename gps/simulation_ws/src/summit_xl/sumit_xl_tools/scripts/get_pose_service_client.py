#! /usr/bin/env python

import rospy
from sumit_xl_tools.srv import SumitXLPose, SumitXLPoseResponse, SumitXLPoseRequest
import sys 

rospy.init_node('pose_sumitxl_service_client') # Initialise a ROS node with the name service_client
rospy.wait_for_service('/get_pose_sumitxl_service')
getpose_sumitxl_service_client = rospy.ServiceProxy('/get_pose_sumitxl_service', SumitXLPose) # Create the connection to the service
request_msg = SumitXLPoseRequest()
rospy.sleep(0.1)
request_msg.label = str(rospy.get_time())
result = getpose_sumitxl_service_client(request_msg)
print result # Print the result given by the service called
