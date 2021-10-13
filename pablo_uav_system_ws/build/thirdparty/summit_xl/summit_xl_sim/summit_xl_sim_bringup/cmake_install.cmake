# Install script for directory: /home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/thirdparty/summit_xl/summit_xl_sim/summit_xl_sim_bringup

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_sim/summit_xl_sim_bringup/catkin_generated/installspace/summit_xl_sim_bringup.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/summit_xl_sim_bringup/cmake" TYPE FILE FILES
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_sim/summit_xl_sim_bringup/catkin_generated/installspace/summit_xl_sim_bringupConfig.cmake"
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_sim/summit_xl_sim_bringup/catkin_generated/installspace/summit_xl_sim_bringupConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/summit_xl_sim_bringup" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/thirdparty/summit_xl/summit_xl_sim/summit_xl_sim_bringup/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/summit_xl_sim_bringup" TYPE DIRECTORY FILES
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/thirdparty/summit_xl/summit_xl_sim/summit_xl_sim_bringup/launch"
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src/thirdparty/summit_xl/summit_xl_sim/summit_xl_sim_bringup/config"
    )
endif()

