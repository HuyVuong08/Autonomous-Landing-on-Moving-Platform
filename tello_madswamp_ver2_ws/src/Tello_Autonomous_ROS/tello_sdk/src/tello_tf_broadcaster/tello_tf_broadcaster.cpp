//
// Created by madswamp on 21/05/21.
//

#include "../../include/tello_tf_broadcaster/tello_tf_broadcaster.h"

tello_tf_broadcaster::tello_tf_broadcaster()
{
    aircraft_name = nh.getNamespace();
    linear_speed_sub=nh.subscribe("raw_localization/linear_speed",1,&tello_tf_broadcaster::linear_speed_callback,this);
    imu_sub=nh.subscribe("sensor_measurement/imu",1,&tello_tf_broadcaster::imu_callback,this);
    raw_pose_pub=nh.advertise<geometry_msgs::PoseStamped>("raw_localization/raw_pose",1,true);
    geometry_msgs::TransformStamped static_transformStamped;
    static_transformStamped.header.stamp=ros::Time::now();
    static_transformStamped.header.frame_id=aircraft_name;
    static_transformStamped.child_frame_id=aircraft_name+"_gimbal";
    static_transformStamped.transform.translation.x=0;
    static_transformStamped.transform.translation.y=0;
    static_transformStamped.transform.translation.z=0;
    static_transformStamped.transform.rotation.x=0;
    static_transformStamped.transform.rotation.y=0;
    static_transformStamped.transform.rotation.z=0;
    static_transformStamped.transform.rotation.w=1;
    tf_static_broadcaster.sendTransform(static_transformStamped);
    static_transformStamped.header.stamp=ros::Time::now();
    static_transformStamped.header.frame_id=aircraft_name+"_gimbal";
    static_transformStamped.child_frame_id=aircraft_name+"_image";
    static_transformStamped.transform.translation.x=0;
    static_transformStamped.transform.translation.y=0;
    static_transformStamped.transform.translation.z=0;

    tf2::Quaternion q0,q1,q2;

    q0.setRPY(0,90*M_PI/180,0);
    q1.setRPY(0,0,90*M_PI/180);
    q2=q0*q1;

    static_transformStamped.transform.rotation.x=q2.x();
    static_transformStamped.transform.rotation.y=q2.y();
    static_transformStamped.transform.rotation.z=q2.z();
    static_transformStamped.transform.rotation.w=q2.w();
    tf_static_broadcaster.sendTransform(static_transformStamped);
}

tello_tf_broadcaster::~tello_tf_broadcaster()
{


}

void tello_tf_broadcaster::imu_callback(const sensor_msgs::ImuConstPtr &msg)
{
    imu_data= *msg;
    flag_imu=true;
}
void tello_tf_broadcaster::linear_speed_callback(const geometry_msgs::TwistStampedConstPtr &msg)
{
    linear_speed_data = *msg;
    flag_new_speed_data =true;

}
void tello_tf_broadcaster::velocity_integrator()
{
    if(!flag_linear_speed)
    {
        prev_integration_time=ros::Time::now();
        velocity_integrator_data.point.x=0;
        velocity_integrator_data.point.y=0;
        velocity_integrator_data.point.z=0;
        flag_linear_speed=true;
    }
    else
    {
        ros::Time current_integration_time=ros::Time::now();
        double diffTime=(current_integration_time - prev_integration_time).nsec / 1E9;
        velocity_integrator_data.point.x=velocity_integrator_data.point.x+linear_speed_data.twist.linear.x*diffTime;
        velocity_integrator_data.point.y=velocity_integrator_data.point.y+linear_speed_data.twist.linear.y*diffTime;
        velocity_integrator_data.point.z=velocity_integrator_data.point.z+linear_speed_data.twist.linear.z*diffTime;

        prev_integration_time=current_integration_time;
    }
}

void tello_tf_broadcaster::pub_pose_broadcast_tf()
{
    static tf2_ros::TransformBroadcaster tf;
    geometry_msgs::TransformStamped transformStamped;
    geometry_msgs::PoseStamped pose_msg;

    transformStamped.header.stamp=ros::Time::now();
    transformStamped.header.frame_id="world";
    transformStamped.child_frame_id=aircraft_name;
    transformStamped.transform.translation.x=velocity_integrator_data.point.x;
    transformStamped.transform.translation.y=velocity_integrator_data.point.y;
    transformStamped.transform.translation.z=velocity_integrator_data.point.z;
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
    pose_msg.pose.position=velocity_integrator_data.point;
    raw_pose_pub.publish(pose_msg);
}