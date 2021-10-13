# Install script for directory: /home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/thirdparty/summit_xl/summit_xl_common/summit_xl_pad

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/summit_xl_pad/srv" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/thirdparty/summit_xl/summit_xl_common/summit_xl_pad/srv/enable_disable_pad.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/summit_xl_pad/cmake" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_common/summit_xl_pad/catkin_generated/installspace/summit_xl_pad-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/devel/include/summit_xl_pad")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/devel/share/roseus/ros/summit_xl_pad")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/devel/share/common-lisp/ros/summit_xl_pad")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/devel/share/gennodejs/ros/summit_xl_pad")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/devel/lib/python2.7/dist-packages/summit_xl_pad")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/devel/lib/python2.7/dist-packages/summit_xl_pad")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_common/summit_xl_pad/catkin_generated/installspace/summit_xl_pad.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/summit_xl_pad/cmake" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_common/summit_xl_pad/catkin_generated/installspace/summit_xl_pad-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/summit_xl_pad/cmake" TYPE FILE FILES
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_common/summit_xl_pad/catkin_generated/installspace/summit_xl_padConfig.cmake"
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_common/summit_xl_pad/catkin_generated/installspace/summit_xl_padConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/summit_xl_pad" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/thirdparty/summit_xl/summit_xl_common/summit_xl_pad/package.xml")
endif()

