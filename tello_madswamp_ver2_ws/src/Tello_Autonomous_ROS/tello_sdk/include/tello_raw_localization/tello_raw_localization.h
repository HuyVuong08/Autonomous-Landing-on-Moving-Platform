//
// Created by madswamp on 21/04/21.
//

#ifndef TELLO_SDK_TELLO_RAW_LOCALIZATION_H
#define TELLO_SDK_TELLO_RAW_LOCALIZATION_H

#include <ros/ros.h>
#include <geometry_msgs/TwistStamped.h>
#include <sensor_msgs/Imu.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2/LinearMath/Quaternion.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PointStamped.h>

class tello_raw_localization
{
private:

    ros::NodeHandle nh;
    ros::Subscriber linear_speed_sub,imu_sub;
    ros::Publisher raw_pose_pub;

    sensor_msgs::Imu imu_data;

    geometry_msgs::PointStamped gimbal_data;

    geometry_msgs::PointStamped velocity_integrator;

    ros::Time prev_integration_time;

    std::string aircraft_name;

    void linear_speed_callback(const geometry_msgs::TwistStampedConstPtr& msg);
    void imu_callback(const sensor_msgs::ImuConstPtr& msg);



public:
    tello_raw_localization();
    ~tello_raw_localization();

    bool flag_imu=false,flag_linear_speed=false;

    void pub_pose_broadcast_tf();
};

#endif //TELLO_SDK_TELLO_RAW_LOCALIZATION_H
