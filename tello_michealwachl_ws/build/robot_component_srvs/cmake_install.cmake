# Install script for directory: /home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_component_srvs/srv" TYPE FILE FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/srv/SetBool.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_component_srvs/cmake" TYPE FILE FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/build/robot_component_srvs/catkin_generated/installspace/robot_component_srvs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/devel/include/robot_component_srvs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/devel/share/roseus/ros/robot_component_srvs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/devel/share/common-lisp/ros/robot_component_srvs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/devel/share/gennodejs/ros/robot_component_srvs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/devel/lib/python2.7/dist-packages/robot_component_srvs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/devel/lib/python2.7/dist-packages/robot_component_srvs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/build/robot_component_srvs/catkin_generated/installspace/robot_component_srvs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_component_srvs/cmake" TYPE FILE FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/build/robot_component_srvs/catkin_generated/installspace/robot_component_srvs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_component_srvs/cmake" TYPE FILE FILES
    "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/build/robot_component_srvs/catkin_generated/installspace/robot_component_srvsConfig.cmake"
    "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/build/robot_component_srvs/catkin_generated/installspace/robot_component_srvsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robot_component_srvs" TYPE FILE FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/robot_component_srvs/package.xml")
endif()

