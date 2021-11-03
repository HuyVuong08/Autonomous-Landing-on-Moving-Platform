#! /usr/bin/env python

import rospy
import time
import actionlib
import rospkg
import yaml
from std_msgs.msg import Header
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal, MoveBaseResult, MoveBaseFeedback
from geometry_msgs.msg import Pose

"""
class SimpleGoalState:
    PENDING = 0
    ACTIVE = 1
    DONE = 2
    WARN = 3
    ERROR = 4

"""
# We create some constants with the corresponing vaules from the SimpleGoalState class
PENDING = 0
ACTIVE = 1
DONE = 2
WARN = 3
ERROR = 4


# definition of the feedback callback. This will be called when feedback
# is received from the action server
# it just prints a message indicating a new message has been received
def feedback_callback(feedback):
    #print(str(feedback))
    pass


def get_pose_from_file(spot_name, spot_file_path):
    """
    Gets the Pose from the given yaml file of the give spot
    """
    with open(spot_file_path, 'r') as f:
        doc = yaml.load(f)
    
    spot_pose_str = doc[spot_name]
    
    spot_pose = Pose()
    spot_pose.position.x = doc[spot_name]["position"]["x"]
    spot_pose.position.y = doc[spot_name]["position"]["y"]
    spot_pose.position.z = doc[spot_name]["position"]["z"]
    
    spot_pose.orientation.x = doc[spot_name]["orientation"]["x"]
    spot_pose.orientation.y = doc[spot_name]["orientation"]["y"]
    spot_pose.orientation.z = doc[spot_name]["orientation"]["z"]
    spot_pose.orientation.w = doc[spot_name]["orientation"]["w"]
    
    return spot_pose


# initializes the action client node
rospy.init_node('sumit_xl_patrole_node')

action_server_name = '/move_base'
client = actionlib.SimpleActionClient(action_server_name, MoveBaseAction)

# waits until the action server is up and running
rospy.loginfo('Waiting for action Server '+action_server_name)
client.wait_for_server()
rospy.loginfo('Action Server Found...'+action_server_name)

# creates a goal to send to the action server
goal = MoveBaseGoal()
"""
# MoveBaseGoal
geometry_msgs/PoseStamped target_pose

# PoseStamped
[geometry_msgs/PoseStamped]:                                                                                                                                 
std_msgs/Header header                                                                                                                                       
  uint32 seq                                                                                                                                                 
  time stamp                                                                                                                                                 
  string frame_id                                                                                                                                            
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

"""
h = Header()
h.stamp = rospy.Time.now() # Note you need to call rospy.init_node() before this will work
h.frame_id = "map"
goal.target_pose.header = h

#spot_name="big_room_table"
spot_name="start"
rospack = rospkg.RosPack()
spot_file_path = rospack.get_path('sumit_xl_tools') + "/spots/basic_spots.yaml"

goal.target_pose.pose = get_pose_from_file(spot_name, spot_file_path) 
rospy.loginfo(str(goal))

client.send_goal(goal, feedback_cb=feedback_callback)


# You can access the SimpleAction Variable "simple_state", that will be 1 if active, and 2 when finished.
#Its a variable, better use a function like get_state.
#state = client.simple_state
# state_result will give the FINAL STATE. Will be 1 when Active, and 2 if NO ERROR, 3 If Any Warning, and 3 if ERROR
state_result = client.get_state()

rate = rospy.Rate(1)

rospy.loginfo("state_result: "+str(state_result))

while state_result < DONE:
    rospy.loginfo("Doing Stuff while waiting for the Server to give a result....")
    rate.sleep()
    state_result = client.get_state()
    rospy.loginfo("state_result: "+str(state_result))
    
rospy.loginfo("[Result] State: "+str(state_result))
if state_result == ERROR:
    rospy.logerr("Something went wrong in the Server Side")
if state_result == WARN:
    rospy.logwarn("There is a warning in the Server Side")

