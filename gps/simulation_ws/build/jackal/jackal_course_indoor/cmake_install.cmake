# Install script for directory: /home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/jackal/jackal_course_indoor

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/build/jackal/jackal_course_indoor/catkin_generated/installspace/jackal_course_indoor.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jackal_course_indoor/cmake" TYPE FILE FILES
    "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/build/jackal/jackal_course_indoor/catkin_generated/installspace/jackal_course_indoorConfig.cmake"
    "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/build/jackal/jackal_course_indoor/catkin_generated/installspace/jackal_course_indoorConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jackal_course_indoor" TYPE FILE FILES "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/jackal/jackal_course_indoor/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/jackal_course_indoor" TYPE DIRECTORY FILES "/home/mercedes-benz-s-450/Desktop/Autonomous-Landing-on-Moving-Platform/gps/simulation_ws/src/jackal/jackal_course_indoor/launch")
endif()

