//
// Created by madswamp on 14/04/21.
//

#include "tello_sdk.h"

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/BatteryState.h>
#include <sensor_msgs/Temperature.h>
#include <sensor_msgs/Imu.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/opencv.hpp>
#include <geometry_msgs/TwistStamped.h>
#include <geometry_msgs/PointStamped.h>
#include <tf2/LinearMath/Quaternion.h>
#include <tf2/LinearMath/Matrix3x3.h>
#include <camera_info_manager/camera_info_manager.h>


#ifndef SRC_TELLO_ROS_H
#define SRC_TELLO_ROS_H

using namespace cv;

class tello_ros{
public:

    tello_ros();

    ~tello_ros();

    bool flag_command_to_send=false,flag_end_threads=false;

    tello_sdk sdk;

    std_msgs::String command_to_send;

    void tello_status_function();

    void video_feed_function();

private:

    void commandsCallback(const std_msgs::StringConstPtr& command);

    std::string camurl;

    std::string camera_name;

    bool flag_first_data=false;

    ros::NodeHandle nh;

    ros::Publisher linear_speed_rad_pub,imu_rad_pub,linear_speed_deg_pub,imu_deg_pub,battery_pub,
            temperature_pub,barometer_altitude_pub,altitude_pub,video_feed_pub,camera_info_pub;

    ros::Subscriber commands_subscriber;
};
#endif //SRC_TELLO_ROS_H
