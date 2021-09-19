# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ardrone_as: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iardrone_as:/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ardrone_as_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneAction.msg" NAME_WE)
add_custom_target(_ardrone_as_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ardrone_as" "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneAction.msg" "ardrone_as/ArdroneFeedback:ardrone_as/ArdroneActionResult:ardrone_as/ArdroneResult:actionlib_msgs/GoalStatus:ardrone_as/ArdroneGoal:sensor_msgs/CompressedImage:actionlib_msgs/GoalID:std_msgs/Header:ardrone_as/ArdroneActionFeedback:ardrone_as/ArdroneActionGoal"
)

get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg" NAME_WE)
add_custom_target(_ardrone_as_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ardrone_as" "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg" "std_msgs/Header:ardrone_as/ArdroneGoal:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg" NAME_WE)
add_custom_target(_ardrone_as_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ardrone_as" "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg" "ardrone_as/ArdroneResult:actionlib_msgs/GoalStatus:sensor_msgs/CompressedImage:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg" NAME_WE)
add_custom_target(_ardrone_as_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ardrone_as" "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg" "ardrone_as/ArdroneFeedback:actionlib_msgs/GoalStatus:sensor_msgs/CompressedImage:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg" NAME_WE)
add_custom_target(_ardrone_as_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ardrone_as" "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg" ""
)

get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg" NAME_WE)
add_custom_target(_ardrone_as_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ardrone_as" "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg" "sensor_msgs/CompressedImage:std_msgs/Header"
)

get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg" NAME_WE)
add_custom_target(_ardrone_as_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ardrone_as" "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg" "sensor_msgs/CompressedImage:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_as
)
_generate_msg_cpp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_as
)
_generate_msg_cpp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_as
)
_generate_msg_cpp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_as
)
_generate_msg_cpp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_as
)
_generate_msg_cpp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_as
)
_generate_msg_cpp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_as
)

### Generating Services

### Generating Module File
_generate_module_cpp(ardrone_as
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_as
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ardrone_as_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ardrone_as_generate_messages ardrone_as_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneAction.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_cpp _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_cpp _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_cpp _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_cpp _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_cpp _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_cpp _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_cpp _ardrone_as_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ardrone_as_gencpp)
add_dependencies(ardrone_as_gencpp ardrone_as_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ardrone_as_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ardrone_as
)
_generate_msg_eus(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ardrone_as
)
_generate_msg_eus(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ardrone_as
)
_generate_msg_eus(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ardrone_as
)
_generate_msg_eus(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ardrone_as
)
_generate_msg_eus(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ardrone_as
)
_generate_msg_eus(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ardrone_as
)

### Generating Services

### Generating Module File
_generate_module_eus(ardrone_as
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ardrone_as
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ardrone_as_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ardrone_as_generate_messages ardrone_as_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneAction.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_eus _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_eus _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_eus _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_eus _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_eus _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_eus _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_eus _ardrone_as_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ardrone_as_geneus)
add_dependencies(ardrone_as_geneus ardrone_as_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ardrone_as_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_as
)
_generate_msg_lisp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_as
)
_generate_msg_lisp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_as
)
_generate_msg_lisp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_as
)
_generate_msg_lisp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_as
)
_generate_msg_lisp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_as
)
_generate_msg_lisp(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_as
)

### Generating Services

### Generating Module File
_generate_module_lisp(ardrone_as
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_as
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ardrone_as_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ardrone_as_generate_messages ardrone_as_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneAction.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_lisp _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_lisp _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_lisp _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_lisp _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_lisp _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_lisp _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_lisp _ardrone_as_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ardrone_as_genlisp)
add_dependencies(ardrone_as_genlisp ardrone_as_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ardrone_as_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ardrone_as
)
_generate_msg_nodejs(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ardrone_as
)
_generate_msg_nodejs(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ardrone_as
)
_generate_msg_nodejs(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ardrone_as
)
_generate_msg_nodejs(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ardrone_as
)
_generate_msg_nodejs(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ardrone_as
)
_generate_msg_nodejs(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ardrone_as
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ardrone_as
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ardrone_as
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ardrone_as_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ardrone_as_generate_messages ardrone_as_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneAction.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_nodejs _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_nodejs _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_nodejs _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_nodejs _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_nodejs _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_nodejs _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_nodejs _ardrone_as_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ardrone_as_gennodejs)
add_dependencies(ardrone_as_gennodejs ardrone_as_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ardrone_as_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneAction.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_as
)
_generate_msg_py(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_as
)
_generate_msg_py(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_as
)
_generate_msg_py(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_as
)
_generate_msg_py(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_as
)
_generate_msg_py(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_as
)
_generate_msg_py(ardrone_as
  "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_as
)

### Generating Services

### Generating Module File
_generate_module_py(ardrone_as
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_as
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ardrone_as_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ardrone_as_generate_messages ardrone_as_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneAction.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_py _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionGoal.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_py _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionResult.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_py _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneActionFeedback.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_py _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneGoal.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_py _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneResult.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_py _ardrone_as_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/share/ardrone_as/msg/ArdroneFeedback.msg" NAME_WE)
add_dependencies(ardrone_as_generate_messages_py _ardrone_as_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ardrone_as_genpy)
add_dependencies(ardrone_as_genpy ardrone_as_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ardrone_as_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_as)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ardrone_as
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(ardrone_as_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(ardrone_as_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ardrone_as_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ardrone_as)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ardrone_as
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(ardrone_as_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(ardrone_as_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ardrone_as_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_as)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ardrone_as
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(ardrone_as_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(ardrone_as_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ardrone_as_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ardrone_as)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ardrone_as
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(ardrone_as_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(ardrone_as_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ardrone_as_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_as)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_as\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ardrone_as
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(ardrone_as_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(ardrone_as_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ardrone_as_generate_messages_py std_msgs_generate_messages_py)
endif()
