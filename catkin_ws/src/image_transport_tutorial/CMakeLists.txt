cmake_minimum_required(VERSION 3.0.2)
project(image_transport_tutorial)

find_package(catkin REQUIRED)

find_package(catkin REQUIRED COMPONENTS
    roscpp
    rospy
    std_msgs
    cv_bridge
    sensor_msgs
    image_transport
    )

find_package(OpenCV REQUIRED)

catkin_package( CATKIN_DEPENDS
    cv_bridge
    image_transport
    roscpp
    sensor_msgs
    std_msgs
    tf
)

include_directories(
    ${catkin_INCLUDE_DIRS}
)

add_executable(my_subscriber src/my_subscriber.cpp)
target_link_libraries(my_subscriber ${OpenCV_LIBS} ${catkin_LIBRARIES})
