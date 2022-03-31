cmake_minimum_required(VERSION 3.0.2)


set(PROJECT_NAME tello_sdk)
project(${PROJECT_NAME})

add_definitions(-std=c++11)

set(TELLO_SDK_SOURCE_DIR)

set(TELLO_SDK_DATA_INCLUDE_DIR
        include/tello_aerostack
        include/tello_main_node
        include/tello_raw_localization
        include/tello_teleop
        include/tello_tf_broadcaster)

set(TELLO_SDK_LIB_FILES
        include/tello_main_node/tello_sdk.h
        include/tello_main_node/tello_ros.h
        src/tello_main_node/tello_sdk.cpp
        src/tello_main_node/tello_ros.cpp)

set(TELLO_SDK_LIB_FILES_AEROSTACK
        include/tello_aerostack/tello_aerostack.h
        src/tello_aerostack/tello_aerostack.cpp
)

set(TELLO_SDK_LIB_FILES_TELEOP
        include/tello_teleop/tello_teleop.h
        src/tello_teleop/tello_teleop.cpp)

set(TELLO_RAW_LOCALIZATION_LIB_FILES
        include/tello_raw_localization/tello_raw_localization.h
        src/tello_raw_localization/tello_raw_localization.cpp)

set(TELLO_TF_BROADCASTER_LIB_FILES
        include/tello_tf_broadcaster/tello_tf_broadcaster.h
        src/tello_tf_broadcaster/tello_tf_broadcaster.cpp)


find_package(catkin REQUIRED COMPONENTS
        geometry_msgs
        roscpp
        rospy
        sensor_msgs
        std_msgs
        aerostack_msgs
        tf
        camera_info_manager)

find_package(OpenCV REQUIRED)

catkin_package(
        CATKIN_DEPENDS geometry_msgs roscpp rospy sensor_msgs std_msgs aerostack_msgs tf camera_info_manager)


include_directories(
        ${catkin_INCLUDE_DIRS} ${TELLO_SDK_INCLUDE_DIR}
)

add_library(tello_sdk_includes ${TELLO_SDK_LIB_FILES})
add_dependencies(tello_sdk_includes ${catkin_EXPORTED_TARGETS} ${OpenCV_LIBS})
target_link_libraries(tello_sdk_includes ${OpenCV_LIBS})

add_library(tello_teleop_includes ${TELLO_SDK_LIB_FILES_TELEOP})
add_dependencies(tello_teleop_includes ${catkin_EXPORTED_TARGETS} )

add_library(tello_aerostack_includes ${TELLO_SDK_LIB_FILES_AEROSTACK})
add_dependencies(tello_aerostack_includes ${catkin_EXPORTED_TARGETS} )

add_library(tello_raw_localization_includes ${TELLO_RAW_LOCALIZATION_LIB_FILES})
add_dependencies(tello_raw_localization_includes ${catkin_EXPORTED_TARGETS})

add_library(tello_tf_broadcaster_includes ${TELLO_TF_BROADCASTER_LIB_FILES})
add_dependencies(tello_tf_broadcaster_includes ${catkin_EXPORTED_TARGETS})


add_executable(tello_teleop_node src/tello_teleop/tello_teleop_node.cpp)
add_dependencies(tello_teleop_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(tello_teleop_node tello_teleop_includes)
target_link_libraries(tello_teleop_node ${catkin_LIBRARIES})

add_executable(tello_node src/tello_main_node/tello_node.cpp)
add_dependencies(tello_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(tello_node tello_sdk_includes)
target_link_libraries(tello_node ${catkin_LIBRARIES})

add_executable(tello_aerostack_node src/tello_aerostack/tello_aerostack_node.cpp)
add_dependencies(tello_aerostack_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(tello_aerostack_node tello_aerostack_includes)
target_link_libraries(tello_aerostack_node ${catkin_LIBRARIES})

add_executable(tello_raw_localization_node src/tello_raw_localization/tello_raw_localization_node.cpp)
add_dependencies(tello_raw_localization_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(tello_raw_localization_node tello_raw_localization_includes)
target_link_libraries(tello_raw_localization_node ${catkin_LIBRARIES})

add_executable(tello_tf_broadcaster_node src/tello_tf_broadcaster/tello_tf_broadcaster_node.cpp)
add_dependencies(tello_tf_broadcaster_node ${catkin_EXPORTED_TARGETS})
target_link_libraries(tello_tf_broadcaster_node tello_tf_broadcaster_includes)
target_link_libraries(tello_tf_broadcaster_node ${catkin_LIBRARIES})

#[[set_target_properties(tello_node PROPERTIES LINKER_LANGUAGE CXX)
set_target_properties(tello_teleop_node PROPERTIES LINKER_LANGUAGE CXX)
set_target_properties(tello_sdk_includes PROPERTIES LINKER_LANGUAGE CXX)
set_target_properties(tello_teleop_includes PROPERTIES LINKER_LANGUAGE CXX)
set_target_properties(tello_aerostack_includes PROPERTIES LINKER_LANGUAGE CXX)
set_target_properties(tello_raw_localization_includes PROPERTIES LINKER_LANGUAGE CXX)]]
