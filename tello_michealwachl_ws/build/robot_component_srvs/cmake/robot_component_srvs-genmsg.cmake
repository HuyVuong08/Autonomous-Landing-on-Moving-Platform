# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_component_srvs: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_component_srvs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv" NAME_WE)
add_custom_target(_robot_component_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_component_srvs" "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(robot_component_srvs
  "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_component_srvs
)

### Generating Module File
_generate_module_cpp(robot_component_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_component_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_component_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_component_srvs_generate_messages robot_component_srvs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv" NAME_WE)
add_dependencies(robot_component_srvs_generate_messages_cpp _robot_component_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_component_srvs_gencpp)
add_dependencies(robot_component_srvs_gencpp robot_component_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_component_srvs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(robot_component_srvs
  "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_component_srvs
)

### Generating Module File
_generate_module_eus(robot_component_srvs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_component_srvs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_component_srvs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_component_srvs_generate_messages robot_component_srvs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv" NAME_WE)
add_dependencies(robot_component_srvs_generate_messages_eus _robot_component_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_component_srvs_geneus)
add_dependencies(robot_component_srvs_geneus robot_component_srvs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_component_srvs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(robot_component_srvs
  "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_component_srvs
)

### Generating Module File
_generate_module_lisp(robot_component_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_component_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_component_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_component_srvs_generate_messages robot_component_srvs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv" NAME_WE)
add_dependencies(robot_component_srvs_generate_messages_lisp _robot_component_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_component_srvs_genlisp)
add_dependencies(robot_component_srvs_genlisp robot_component_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_component_srvs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(robot_component_srvs
  "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_component_srvs
)

### Generating Module File
_generate_module_nodejs(robot_component_srvs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_component_srvs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_component_srvs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_component_srvs_generate_messages robot_component_srvs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv" NAME_WE)
add_dependencies(robot_component_srvs_generate_messages_nodejs _robot_component_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_component_srvs_gennodejs)
add_dependencies(robot_component_srvs_gennodejs robot_component_srvs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_component_srvs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(robot_component_srvs
  "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_component_srvs
)

### Generating Module File
_generate_module_py(robot_component_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_component_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_component_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_component_srvs_generate_messages robot_component_srvs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv" NAME_WE)
add_dependencies(robot_component_srvs_generate_messages_py _robot_component_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_component_srvs_genpy)
add_dependencies(robot_component_srvs_genpy robot_component_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_component_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_component_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_component_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(robot_component_srvs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_component_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_component_srvs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(robot_component_srvs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_component_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_component_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(robot_component_srvs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_component_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_component_srvs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(robot_component_srvs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_component_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_component_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_component_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(robot_component_srvs_generate_messages_py std_msgs_generate_messages_py)
endif()
