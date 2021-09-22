
if(NOT "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/src/ardronelib-stamp/ardronelib-gitinfo.txt" IS_NEWER_THAN "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/src/ardronelib-stamp/ardronelib-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/src/ardronelib-stamp/ardronelib-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/src/ardronelib"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/src/ardronelib'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout "git://github.com/AutonomyLab/ardronelib.git" "ardronelib"
    WORKING_DIRECTORY "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'git://github.com/AutonomyLab/ardronelib.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout 2f987029c55531e4c0119c3600f9c57f935851ed --
  WORKING_DIRECTORY "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/src/ardronelib"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '2f987029c55531e4c0119c3600f9c57f935851ed'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/src/ardronelib"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/src/ardronelib'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/src/ardronelib-stamp/ardronelib-gitinfo.txt"
    "/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/src/ardronelib-stamp/ardronelib-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/mercedes-benz-s450/Desktop/Autonomous-Landing-on-Moving-Platform/catkin_ws/devel/src/ardronelib-stamp/ardronelib-gitclone-lastrun.txt'")
endif()

