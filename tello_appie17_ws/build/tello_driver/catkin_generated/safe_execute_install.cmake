execute_process(COMMAND "/home/tello1804/tello_appie17_ws/build/tello_driver/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/tello1804/tello_appie17_ws/build/tello_driver/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
