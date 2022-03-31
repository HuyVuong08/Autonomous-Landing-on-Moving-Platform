//
// Created by madswamp on 21/05/21.
//

#ifndef APRILTAG_ROS_TELLO_TF_BROADCASTER_H
#define APRILTAG_ROS_TELLO_TF_BROADCASTER_H

#include <ros/ros.h>
#include <geometry_msgs/TwistStamped.h>
#include <sensor_msgs/Imu.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2/LinearMath/Quaternion.h>
#include <geometry_msgs/TransformStamped.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PointStamped.h>
#include <tf2_ros/static_transform_broadcaster.h>

class tello_tf_broadcaster
{

public:
    tello_tf_broadcaster();
    ~tello_tf_broadcaster();

    bool flag_imu=false,flag_linear_speed=false,flag_new_speed_data=false;

    void velocity_integrator();

    void pub_pose_broadcast_tf();

private:

    ros::NodeHandle nh;
    tf2_ros::TransformBroadcaster tf_broadcaster;
    tf2_ros::StaticTransformBroadcaster tf_static_broadcaster;
    ros::Subscriber imu_sub, linear_speed_sub;
    ros::Publisher raw_pose_pub;

    void linear_speed_callback(const geometry_msgs::TwistStampedConstPtr& msg);
    void imu_callback(const sensor_msgs::ImuConstPtr& msg);

    std::string aircraft_name;

    geometry_msgs::PointStamped velocity_integrator_data;

    ros::Time prev_integration_time;

    sensor_msgs::Imu imu_data;

    geometry_msgs::TwistStamped linear_speed_data;
};




#endif //APRILTAG_ROS_TELLO_TF_BROADCASTER_H
