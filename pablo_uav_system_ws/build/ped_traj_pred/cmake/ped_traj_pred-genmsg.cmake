# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ped_traj_pred: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iped_traj_pred:/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ped_traj_pred_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg" NAME_WE)
add_custom_target(_ped_traj_pred_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ped_traj_pred" "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:nav_msgs/Path:std_msgs/UInt8"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ped_traj_pred
  "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt8.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ped_traj_pred
)

### Generating Services

### Generating Module File
_generate_module_cpp(ped_traj_pred
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ped_traj_pred
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ped_traj_pred_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ped_traj_pred_generate_messages ped_traj_pred_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg" NAME_WE)
add_dependencies(ped_traj_pred_generate_messages_cpp _ped_traj_pred_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ped_traj_pred_gencpp)
add_dependencies(ped_traj_pred_gencpp ped_traj_pred_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ped_traj_pred_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ped_traj_pred
  "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt8.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ped_traj_pred
)

### Generating Services

### Generating Module File
_generate_module_eus(ped_traj_pred
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ped_traj_pred
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ped_traj_pred_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ped_traj_pred_generate_messages ped_traj_pred_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg" NAME_WE)
add_dependencies(ped_traj_pred_generate_messages_eus _ped_traj_pred_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ped_traj_pred_geneus)
add_dependencies(ped_traj_pred_geneus ped_traj_pred_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ped_traj_pred_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ped_traj_pred
  "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt8.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ped_traj_pred
)

### Generating Services

### Generating Module File
_generate_module_lisp(ped_traj_pred
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ped_traj_pred
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ped_traj_pred_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ped_traj_pred_generate_messages ped_traj_pred_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg" NAME_WE)
add_dependencies(ped_traj_pred_generate_messages_lisp _ped_traj_pred_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ped_traj_pred_genlisp)
add_dependencies(ped_traj_pred_genlisp ped_traj_pred_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ped_traj_pred_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ped_traj_pred
  "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt8.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ped_traj_pred
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ped_traj_pred
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ped_traj_pred
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ped_traj_pred_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ped_traj_pred_generate_messages ped_traj_pred_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg" NAME_WE)
add_dependencies(ped_traj_pred_generate_messages_nodejs _ped_traj_pred_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ped_traj_pred_gennodejs)
add_dependencies(ped_traj_pred_gennodejs ped_traj_pred_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ped_traj_pred_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ped_traj_pred
  "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/UInt8.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ped_traj_pred
)

### Generating Services

### Generating Module File
_generate_module_py(ped_traj_pred
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ped_traj_pred
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ped_traj_pred_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ped_traj_pred_generate_messages ped_traj_pred_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg" NAME_WE)
add_dependencies(ped_traj_pred_generate_messages_py _ped_traj_pred_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ped_traj_pred_genpy)
add_dependencies(ped_traj_pred_genpy ped_traj_pred_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ped_traj_pred_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ped_traj_pred)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ped_traj_pred
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ped_traj_pred_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(ped_traj_pred_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ped_traj_pred)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ped_traj_pred
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ped_traj_pred_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(ped_traj_pred_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ped_traj_pred)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ped_traj_pred
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ped_traj_pred_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(ped_traj_pred_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ped_traj_pred)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ped_traj_pred
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ped_traj_pred_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(ped_traj_pred_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ped_traj_pred)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ped_traj_pred\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ped_traj_pred
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ped_traj_pred_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(ped_traj_pred_generate_messages_py nav_msgs_generate_messages_py)
endif()
