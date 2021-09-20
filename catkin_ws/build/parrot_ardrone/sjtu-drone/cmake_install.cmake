# Install script for directory: /home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/parrot_ardrone/sjtu-drone

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/parrot_ardrone/sjtu-drone/catkin_generated/installspace/sjtu_drone.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sjtu_drone/cmake" TYPE FILE FILES
    "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/parrot_ardrone/sjtu-drone/catkin_generated/installspace/sjtu_droneConfig.cmake"
    "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/build/parrot_ardrone/sjtu-drone/catkin_generated/installspace/sjtu_droneConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sjtu_drone" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/parrot_ardrone/sjtu-drone/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sjtu_drone" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/parrot_ardrone/sjtu-drone/bin")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sjtu_drone" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/parrot_ardrone/sjtu-drone/include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sjtu_drone" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/parrot_ardrone/sjtu-drone/launch")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sjtu_drone" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/parrot_ardrone/sjtu-drone/meshes")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sjtu_drone" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/parrot_ardrone/sjtu-drone/models")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sjtu_drone" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/parrot_ardrone/sjtu-drone/plugins")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sjtu_drone" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/parrot_ardrone/sjtu-drone/scripts")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sjtu_drone" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/parrot_ardrone/sjtu-drone/src")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sjtu_drone" TYPE DIRECTORY FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/catkin_ws/src/parrot_ardrone/sjtu-drone/worlds")
endif()

