# Install script for directory: /home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ped_traj_pred/msg" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/msg/PathWithId.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ped_traj_pred/cmake" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/ped_traj_pred/catkin_generated/installspace/ped_traj_pred-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/devel/include/ped_traj_pred")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/devel/share/roseus/ros/ped_traj_pred")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/devel/share/common-lisp/ros/ped_traj_pred")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/devel/share/gennodejs/ros/ped_traj_pred")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/devel/lib/python2.7/dist-packages/ped_traj_pred")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/devel/lib/python2.7/dist-packages/ped_traj_pred")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/ped_traj_pred/catkin_generated/installspace/ped_traj_pred.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ped_traj_pred/cmake" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/ped_traj_pred/catkin_generated/installspace/ped_traj_pred-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ped_traj_pred/cmake" TYPE FILE FILES
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/ped_traj_pred/catkin_generated/installspace/ped_traj_predConfig.cmake"
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/ped_traj_pred/catkin_generated/installspace/ped_traj_predConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ped_traj_pred" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/ped_traj_pred/package.xml")
endif()

