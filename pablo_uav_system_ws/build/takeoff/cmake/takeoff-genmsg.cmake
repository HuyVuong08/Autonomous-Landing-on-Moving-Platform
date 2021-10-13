# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "takeoff: 1 messages, 0 services")

set(MSG_I_FLAGS "-Itakeoff:/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Itakeoff:/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(takeoff_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg/GroundtruthAltitude.msg" NAME_WE)
add_custom_target(_takeoff_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "takeoff" "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg/GroundtruthAltitude.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(takeoff
  "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg/GroundtruthAltitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/takeoff
)

### Generating Services

### Generating Module File
_generate_module_cpp(takeoff
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/takeoff
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(takeoff_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(takeoff_generate_messages takeoff_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg/GroundtruthAltitude.msg" NAME_WE)
add_dependencies(takeoff_generate_messages_cpp _takeoff_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(takeoff_gencpp)
add_dependencies(takeoff_gencpp takeoff_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS takeoff_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(takeoff
  "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg/GroundtruthAltitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/takeoff
)

### Generating Services

### Generating Module File
_generate_module_eus(takeoff
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/takeoff
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(takeoff_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(takeoff_generate_messages takeoff_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg/GroundtruthAltitude.msg" NAME_WE)
add_dependencies(takeoff_generate_messages_eus _takeoff_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(takeoff_geneus)
add_dependencies(takeoff_geneus takeoff_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS takeoff_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(takeoff
  "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg/GroundtruthAltitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/takeoff
)

### Generating Services

### Generating Module File
_generate_module_lisp(takeoff
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/takeoff
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(takeoff_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(takeoff_generate_messages takeoff_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg/GroundtruthAltitude.msg" NAME_WE)
add_dependencies(takeoff_generate_messages_lisp _takeoff_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(takeoff_genlisp)
add_dependencies(takeoff_genlisp takeoff_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS takeoff_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(takeoff
  "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg/GroundtruthAltitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/takeoff
)

### Generating Services

### Generating Module File
_generate_module_nodejs(takeoff
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/takeoff
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(takeoff_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(takeoff_generate_messages takeoff_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg/GroundtruthAltitude.msg" NAME_WE)
add_dependencies(takeoff_generate_messages_nodejs _takeoff_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(takeoff_gennodejs)
add_dependencies(takeoff_gennodejs takeoff_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS takeoff_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(takeoff
  "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg/GroundtruthAltitude.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/takeoff
)

### Generating Services

### Generating Module File
_generate_module_py(takeoff
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/takeoff
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(takeoff_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(takeoff_generate_messages takeoff_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/takeoff/msg/GroundtruthAltitude.msg" NAME_WE)
add_dependencies(takeoff_generate_messages_py _takeoff_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(takeoff_genpy)
add_dependencies(takeoff_genpy takeoff_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS takeoff_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/takeoff)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/takeoff
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(takeoff_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET takeoff_generate_messages_cpp)
  add_dependencies(takeoff_generate_messages_cpp takeoff_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/takeoff)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/takeoff
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(takeoff_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET takeoff_generate_messages_eus)
  add_dependencies(takeoff_generate_messages_eus takeoff_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/takeoff)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/takeoff
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(takeoff_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET takeoff_generate_messages_lisp)
  add_dependencies(takeoff_generate_messages_lisp takeoff_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/takeoff)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/takeoff
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(takeoff_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET takeoff_generate_messages_nodejs)
  add_dependencies(takeoff_generate_messages_nodejs takeoff_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/takeoff)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/takeoff\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/takeoff
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(takeoff_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET takeoff_generate_messages_py)
  add_dependencies(takeoff_generate_messages_py takeoff_generate_messages_py)
endif()
