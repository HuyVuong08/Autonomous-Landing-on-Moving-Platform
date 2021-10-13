execute_process(COMMAND "/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/vision_opencv/image_geometry/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/huy/Autonomous-Landing-on-Moving-Platform/pablo_uav_system_ws/build/thirdparty/vision_opencv/image_geometry/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
