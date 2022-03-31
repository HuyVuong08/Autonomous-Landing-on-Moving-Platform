//
// Created by madswamp on 21/04/21.
//
#include "../../include/tello_raw_localization/tello_raw_localization.h"


void tello_raw_localization::linear_speed_callback(const geometry_msgs::TwistStampedConstPtr& msg)
{

    if(!flag_linear_speed)
    {
        prev_integration_time=ros::Time::now();
        velocity_integrator.point.x=0;
        velocity_integrator.point.y=0;
        velocity_integrator.point.z=0;
        flag_linear_speed=true;
    }
    else
    {
        ros::Time current_integration_time=ros::Time::now();
        double diffTime=(current_integration_time - prev_integration_time).nsec / 1E9;
        velocity_integrator.point.x=velocity_integrator.point.x+msg->twist.linear.x*diffTime;
        velocity_integrator.point.y=velocity_integrator.point.y+msg->twist.linear.y*diffTime;
        velocity_integrator.point.z=velocity_integrator.point.z+msg->twist.linear.z*diffTime;

        prev_integration_time=current_integration_time;
    }
}

void tello_raw_localization::imu_callback(const sensor_msgs::ImuConstPtr& msg)
{
    imu_data= *msg;
    flag_imu=true;
}

void tello_raw_localization::pub_pose_broadcast_tf()
{
    static tf2_ros::TransformBroadcaster tf;
    geometry_msgs::TransformStamped transformStamped;
    geometry_msgs::PoseStamped pose_msg;

    transformStamped.header.stamp=ros::Time::now();
    transformStamped.header.frame_id="world";
    transformStamped.child_frame_id=aircraft_name;
    transformStamped.transform.translation.x=velocity_integrator.point.x;
    transformStamped.transform.translation.y=velocity_integrator.point.y;
    transformStamped.transform.translation.z=velocity_integrator.point.z;
    transformStamped.transform.rotation=imu_data.orientation;
    tf.sendTransform(transformStamped);

    transformStamped.header.frame_id=aircraft_name;
    transformStamped.child_frame_id=aircraft_name+"_gimbal";
    transformStamped.transform.translation.x=0;
    transformStamped.transform.translation.y=0;
    transformStamped.transform.translation.z=0;
    transformStamped.transform.rotation.x=0;
    transformStamped.transform.rotation.y=0;
    transformStamped.transform.rotation.z=0;
    transformStamped.transform.rotation.w=1;
    tf.sendTransform(transformStamped);

    pose_msg.header.frame_id="world";
    pose_msg.header.stamp=ros::Time::now();
    pose_msg.pose.orientation=imu_data.orientation;
    pose_msg.pose.position=velocity_integrator.point;
    raw_pose_pub.publish(pose_msg);
}

tello_raw_localization::tello_raw_localization()
{
    aircraft_name = nh.getNamespace();
    linear_speed_sub=nh.subscribe("raw_localization/linear_speed",1,&tello_raw_localization::linear_speed_callback,this);
    imu_sub=nh.subscribe("sensor_measurement/imu",1,&tello_raw_localization::imu_callback,this);
    raw_pose_pub=nh.advertise<geometry_msgs::PoseStamped>("raw_localization/raw_pose",1,true);
    gimbal_data.header.stamp=ros::Time::now();
    gimbal_data.header.frame_id=aircraft_name;
    gimbal_data.point.x=0;
    gimbal_data.point.y=0;
    gimbal_data.point.z=0;
}

tello_raw_localization::~tello_raw_localization()
{

}