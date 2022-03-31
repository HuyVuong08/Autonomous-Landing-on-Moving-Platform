//
// Created by madswamp on 18/04/21.
//
#include "../../include/tello_aerostack/tello_aerostack.h"




tello_aerostack::tello_aerostack() {
    set_up_aerostack();
}

tello_aerostack::~tello_aerostack() {

}

void tello_aerostack::set_up_aerostack()
{
    aircraft_state.state=aerostack_msgs::FlightState::LANDED;
    command_to_send.action=aerostack_msgs::FlightActionCommand::UNKNOWN;
    linear_speed_sub=nh.subscribe("raw_localization/linear_speed",1,&tello_aerostack::linear_speed_callback, this);
    altitude_sub=nh.subscribe("sensor_measurement/altitude",1,&tello_aerostack::altitude_callback,this);
    aerostack_flight_action_sub=nh.subscribe("actuator_command/flight_action", 1,&tello_aerostack::flight_action_callback,this);
    aerostack_flight_state_pub=nh.advertise<aerostack_msgs::FlightState>("self_localization/flight_state", 1, true);
    tello_command=nh.advertise<std_msgs::String>("commands_tello",1, true);
}

void tello_aerostack::linear_speed_callback(const geometry_msgs::TwistStampedConstPtr& msg)
{
    velocity_data= *msg;
}

void tello_aerostack::altitude_callback(const geometry_msgs::PointStampedConstPtr& msg)
{
    altitude_data= *msg;
}

void tello_aerostack::flight_action_callback(const aerostack_msgs::FlightActionCommandConstPtr& msg)
{
    flag_flight_action=true;
    command_to_send= *msg;
}

void tello_aerostack::send_flight_action()
{
    std_msgs::String command;
    switch (command_to_send.action) {
        case aerostack_msgs::FlightActionCommand::TAKE_OFF:
                command.data="takeoff";
                tello_command.publish(command);
            break;

        case aerostack_msgs::FlightActionCommand::LAND:
                command.data="land";
                tello_command.publish(command);
            break;

        case aerostack_msgs::FlightActionCommand::HOVER:
                command.data="rc 0 0 0 0";
                tello_command.publish(command);
            break;

        case aerostack_msgs::FlightActionCommand::MOVE:

            break;

        default:
            command.data="rc 0 0 0 0";
            tello_command.publish(command);
            break;
    }
    flag_flight_action= false;
}

void tello_aerostack::send_state_to_aerostack()
{
    switch(command_to_send.action)
    {
            case aerostack_msgs::FlightActionCommand::TAKE_OFF:
                if (aircraft_state.state == aerostack_msgs::FlightState::LANDED ||
                    aircraft_state.state == aerostack_msgs::FlightState::UNKNOWN) {
                    aircraft_state.state = aerostack_msgs::FlightState::TAKING_OFF;
                    time_takeoff = ros::Time::now();
                } else {
                    if (aircraft_state.state == aerostack_msgs::FlightState::TAKING_OFF) {
                        ros::Duration diff = ros::Time::now() - time_takeoff;
                        if (std::abs(velocity_data.twist.linear.z) < 0.05 && std::abs(altitude_data.point.z) > 0.4 &&
                            diff.toSec() >= 5) {
                            aircraft_state.state = aerostack_msgs::FlightState::FLYING;
                        }
                    }
                }
            break;

            case aerostack_msgs::FlightActionCommand::HOVER:
                if(std::abs(altitude_data.point.z) > 0.1 && std::abs(velocity_data.twist.linear.x) < 0.05 && std::abs(velocity_data.twist.linear.y) < 0.05 && std::abs(velocity_data.twist.linear.z) < 0.05 &&
                   std::abs(velocity_data.twist.angular.x) < 0.05 && std::abs(velocity_data.twist.angular.y) < 0.05 && std::abs(velocity_data.twist.angular.z) < 0.05){
                    aircraft_state.state = aerostack_msgs::FlightState::HOVERING;
                }
            break;

            case aerostack_msgs::FlightActionCommand::LAND:
                if (aircraft_state.state == aerostack_msgs::FlightState::HOVERING || aircraft_state.state == aerostack_msgs::FlightState::FLYING){
                    if (velocity_data.twist.linear.z < 0){
                        aircraft_state.state = aerostack_msgs::FlightState::LANDING;
                    }
                }else{
                    if (aircraft_state.state == aerostack_msgs::FlightState::LANDING){
                        if (std::abs(altitude_data.point.z) < 0.1 && std::abs(velocity_data.twist.linear.z < 0.05)){
                            aircraft_state.state = aerostack_msgs::FlightState::LANDED;
                        }
                    }
                }
            break;
    }
    aerostack_flight_state_pub.publish(aircraft_state);
}


