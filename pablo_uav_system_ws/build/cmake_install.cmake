# Install script for directory: /home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/src

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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install" TYPE PROGRAM FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install" TYPE PROGRAM FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install/setup.bash;/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install" TYPE FILE FILES
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/catkin_generated/installspace/setup.bash"
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install/setup.sh;/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install" TYPE FILE FILES
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/catkin_generated/installspace/setup.sh"
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install/setup.zsh;/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install" TYPE FILE FILES
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/catkin_generated/installspace/setup.zsh"
    "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/install" TYPE FILE FILES "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/gtest/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/vision_opencv/opencv_tests/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/robotnik_sensors/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/tum_simulator/cvg_sim_msgs/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_common/summit_xl_common/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_sim/summit_xl_control/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_sim/summit_xl_gazebo/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_common/summit_xl_navigation/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_sim/summit_xl_sim/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/tum_simulator/tum_simulator/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/vision_opencv/vision_opencv/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/ped_traj_pred/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/summit_moves/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_sim/summit_xl_sim_bringup/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/ardrone_moves/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/vision_opencv/cv_bridge/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/vision_opencv/image_geometry/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_common/summit_xl_pad/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/tum_simulator/cvg_sim_gazebo/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/tum_simulator/cvg_sim_gazebo_plugins/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/tum_simulator/message_to_tf/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_sim/summit_xl_robot_control/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/takeoff/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_common/summit_xl_localization/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/uav_vision/cmake_install.cmake")
  include("/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/summit_xl/summit_xl_common/summit_xl_description/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
