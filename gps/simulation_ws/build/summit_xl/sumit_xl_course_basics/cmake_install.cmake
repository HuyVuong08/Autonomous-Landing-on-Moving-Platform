# Install script for directory: /home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_course_basics

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/build/summit_xl/sumit_xl_course_basics/catkin_generated/installspace/sumit_xl_course_basics.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sumit_xl_course_basics/cmake" TYPE FILE FILES
    "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/build/summit_xl/sumit_xl_course_basics/catkin_generated/installspace/sumit_xl_course_basicsConfig.cmake"
    "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/build/summit_xl/sumit_xl_course_basics/catkin_generated/installspace/sumit_xl_course_basicsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sumit_xl_course_basics" TYPE FILE FILES "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_course_basics/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/sumit_xl_course_basics" TYPE DIRECTORY FILES "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/summit_xl/sumit_xl_course_basics/launch")
endif()

