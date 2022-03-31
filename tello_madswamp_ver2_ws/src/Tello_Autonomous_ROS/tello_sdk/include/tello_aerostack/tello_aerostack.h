//
// Created by madswamp on 18/04/21.
//

#ifndef TELLO_SDK_TELLO_AEROSTACK_H
#define TELLO_SDK_TELLO_AEROSTACK_H

#include <ros/ros.h>
#include <aerostack_msgs/FlightState.h>
#include <aerostack_msgs/FlightActionCommand.h>
#include <geometry_msgs/TwistStamped.h>
#include <geometry_msgs/PointStamped.h>
#include <std_msgs/String.h>

class tello_aerostack{
public:
    tello_aerostack();
    ~tello_aerostack();

    void send_state_to_aerostack();
    bool flag_flight_action=false;
    void send_flight_action();

private:

    void linear_speed_callback(const geometry_msgs::TwistStampedConstPtr& msg);
    void altitude_callback(const geometry_msgs::PointStampedConstPtr& msg);
    void flight_action_callback(const aerostack_msgs::FlightActionCommandConstPtr& msg);

    void set_up_aerostack();
    ros::Publisher aerostack_flight_state_pub,tello_command;
    ros::Subscriber aerostack_flight_action_sub,linear_speed_sub,altitude_sub;
    ros::NodeHandle nh;
    geometry_msgs::TwistStamped velocity_data;
    geometry_msgs::PointStamped altitude_data;
    aerostack_msgs::FlightActionCommand command_to_send;
    aerostack_msgs::FlightState aircraft_state;
    ros::Time time_takeoff;
};

#endif //TELLO_SDK_TELLO_AEROSTACK_H
