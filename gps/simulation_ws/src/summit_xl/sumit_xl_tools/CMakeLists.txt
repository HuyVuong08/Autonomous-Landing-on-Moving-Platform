cmake_minimum_required(VERSION 2.8.3)
project(sumit_xl_tools)

find_package(catkin REQUIRED COMPONENTS
  rospy
  summit_xl_gazebo
  std_msgs
  message_generation
)


## Generate services in the 'srv' folder
 add_service_files(
 FILES
 SumitXLPose.srv
 )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
   std_msgs
 )


catkin_package(
	CATKIN_DEPENDS
	rospy
)

###########
## Build ##
###########

include_directories(
  ${catkin_INCLUDE_DIRS}
)


#############
## Install ##
#############

install(
  DIRECTORY config docs launch maps models new_config params robots rviz_config scripts spots srv
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)