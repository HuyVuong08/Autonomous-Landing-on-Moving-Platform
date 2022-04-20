# Install script for directory: /home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/autonomous_drone_plant_detection/tello_rqt_gui

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
  include("/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/build/autonomous_drone_plant_detection/tello_rqt_gui/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tello_rqt_gui/cmake" TYPE FILE FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/build/autonomous_drone_plant_detection/tello_rqt_gui/catkin_generated/installspace/tello_rqt_gui-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/devel/share/roseus/ros/tello_rqt_gui")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/devel/lib/python2.7/dist-packages/tello_rqt_gui")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/devel/lib/python2.7/dist-packages/tello_rqt_gui")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/build/autonomous_drone_plant_detection/tello_rqt_gui/catkin_generated/installspace/tello_rqt_gui.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tello_rqt_gui/cmake" TYPE FILE FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/build/autonomous_drone_plant_detection/tello_rqt_gui/catkin_generated/installspace/tello_rqt_gui-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tello_rqt_gui/cmake" TYPE FILE FILES
    "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/build/autonomous_drone_plant_detection/tello_rqt_gui/catkin_generated/installspace/tello_rqt_guiConfig.cmake"
    "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/build/autonomous_drone_plant_detection/tello_rqt_gui/catkin_generated/installspace/tello_rqt_guiConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tello_rqt_gui" TYPE FILE FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/autonomous_drone_plant_detection/tello_rqt_gui/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/tello_rqt_gui" TYPE PROGRAM FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/autonomous_drone_plant_detection/tello_rqt_gui/scripts/tello_rqt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tello_rqt_gui" TYPE DIRECTORY FILES
    "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/autonomous_drone_plant_detection/tello_rqt_gui/resource"
    "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/autonomous_drone_plant_detection/tello_rqt_gui/cfg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/tello_rqt_gui" TYPE FILE FILES "/home/tello1804/Autonomous-Landing-on-Moving-Platform/tello_michealwachl_ws/src/autonomous_drone_plant_detection/tello_rqt_gui/plugin.xml")
endif()

