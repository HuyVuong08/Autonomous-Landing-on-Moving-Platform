//
// Created by madswamp on 15/04/21.
//

#ifndef TELLO_SDK_TELLO_TELEOP_H
#define TELLO_SDK_TELLO_TELEOP_H

#include <ros/ros.h>
#include <std_msgs/String.h>
#include <stdio.h>
#include <termios.h>
#include <signal.h>

class tello_teleop{


public:
    tello_teleop();
    ~tello_teleop();

    int getch();
    std_msgs::String get_command_string(int c);
    void send_command(std_msgs::String command);

private:

    ros::NodeHandle nh;
    int value_left_right=50,value_forward_backward=50,value_up_down=50,value_yaw=50;
    ros::Publisher command_pub;
};

#endif //TELLO_SDK_TELLO_TELEOP_H
