# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sumit_xl_tools: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sumit_xl_tools_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_tools/srv/SumitXLPose.srv" NAME_WE)
add_custom_target(_sumit_xl_tools_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sumit_xl_tools" "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_tools/srv/SumitXLPose.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(sumit_xl_tools
  "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_tools/srv/SumitXLPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sumit_xl_tools
)

### Generating Module File
_generate_module_cpp(sumit_xl_tools
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sumit_xl_tools
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sumit_xl_tools_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sumit_xl_tools_generate_messages sumit_xl_tools_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_tools/srv/SumitXLPose.srv" NAME_WE)
add_dependencies(sumit_xl_tools_generate_messages_cpp _sumit_xl_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sumit_xl_tools_gencpp)
add_dependencies(sumit_xl_tools_gencpp sumit_xl_tools_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sumit_xl_tools_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(sumit_xl_tools
  "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_tools/srv/SumitXLPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sumit_xl_tools
)

### Generating Module File
_generate_module_eus(sumit_xl_tools
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sumit_xl_tools
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sumit_xl_tools_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sumit_xl_tools_generate_messages sumit_xl_tools_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_tools/srv/SumitXLPose.srv" NAME_WE)
add_dependencies(sumit_xl_tools_generate_messages_eus _sumit_xl_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sumit_xl_tools_geneus)
add_dependencies(sumit_xl_tools_geneus sumit_xl_tools_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sumit_xl_tools_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(sumit_xl_tools
  "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_tools/srv/SumitXLPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sumit_xl_tools
)

### Generating Module File
_generate_module_lisp(sumit_xl_tools
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sumit_xl_tools
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sumit_xl_tools_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sumit_xl_tools_generate_messages sumit_xl_tools_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_tools/srv/SumitXLPose.srv" NAME_WE)
add_dependencies(sumit_xl_tools_generate_messages_lisp _sumit_xl_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sumit_xl_tools_genlisp)
add_dependencies(sumit_xl_tools_genlisp sumit_xl_tools_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sumit_xl_tools_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(sumit_xl_tools
  "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_tools/srv/SumitXLPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sumit_xl_tools
)

### Generating Module File
_generate_module_nodejs(sumit_xl_tools
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sumit_xl_tools
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sumit_xl_tools_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sumit_xl_tools_generate_messages sumit_xl_tools_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_tools/srv/SumitXLPose.srv" NAME_WE)
add_dependencies(sumit_xl_tools_generate_messages_nodejs _sumit_xl_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sumit_xl_tools_gennodejs)
add_dependencies(sumit_xl_tools_gennodejs sumit_xl_tools_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sumit_xl_tools_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(sumit_xl_tools
  "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_tools/srv/SumitXLPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sumit_xl_tools
)

### Generating Module File
_generate_module_py(sumit_xl_tools
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sumit_xl_tools
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sumit_xl_tools_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sumit_xl_tools_generate_messages sumit_xl_tools_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_tools/srv/SumitXLPose.srv" NAME_WE)
add_dependencies(sumit_xl_tools_generate_messages_py _sumit_xl_tools_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sumit_xl_tools_genpy)
add_dependencies(sumit_xl_tools_genpy sumit_xl_tools_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sumit_xl_tools_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sumit_xl_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sumit_xl_tools
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sumit_xl_tools_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sumit_xl_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sumit_xl_tools
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sumit_xl_tools_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sumit_xl_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sumit_xl_tools
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sumit_xl_tools_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sumit_xl_tools)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sumit_xl_tools
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sumit_xl_tools_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sumit_xl_tools)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sumit_xl_tools\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sumit_xl_tools
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sumit_xl_tools_generate_messages_py std_msgs_generate_messages_py)
endif()
