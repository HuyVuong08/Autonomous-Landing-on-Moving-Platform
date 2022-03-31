//
// Created by madswamp on 15/04/21.
//
#include "../../include/tello_teleop/tello_teleop.h"

tello_teleop::tello_teleop() {
    ROS_INFO("Starting Tello Teleop");
    command_pub=nh.advertise<std_msgs::String>("commands_tello",1, true);
}

tello_teleop::~tello_teleop() {

}

int tello_teleop::getch() {

    static struct termios oldt, newt;
    tcgetattr( STDIN_FILENO, &oldt);           // save old settings
    newt = oldt;
    newt.c_lflag &= ~(ICANON);                 // disable buffering
    tcsetattr( STDIN_FILENO, TCSANOW, &newt);  // apply new settings

    int c = getchar();  // read character (non-blocking)

    tcsetattr( STDIN_FILENO, TCSANOW, &oldt);  // restore old settings
    return c;
}

std_msgs::String tello_teleop::get_command_string(int c)
{
    std_msgs::String message;
    switch (c)
    {
        case 119:
            message.data = std::string("rc ") + std::string("0 ") +
                    std::to_string(value_forward_backward) + std::string(" 0 ") + std::string("0");
            break;

        case 115:
            message.data = std::string("rc ") + std::string("0 ") +
                    std::to_string(-value_forward_backward) + std::string(" 0 ") + std::string("0");
            break;

        case 97:
            message.data = std::string("rc ") + std::to_string(-value_left_right) +
                    std::string(" 0 ") + std::string("0 ") + std::string("0");
            break;

        case 100:
            message.data = std::string("rc ") + std::to_string(value_left_right) +
                           std::string(" 0 ") + std::string("0 ") + std::string("0");
            break;

        case 113:
            message.data = std::string("rc ") + std::string("0 ") +
                           std::string("0 ") + std::string("0 ") + std::to_string(-value_yaw);
            break;

        case 101:
            message.data = std::string("rc ") + std::string("0 ") +
                           std::string("0 ") + std::string("0 ") + std::to_string(value_yaw);
            break;

        case 114:
            message.data = std::string("rc ") + std::string("0 ") +
                           std::string("0 ") + std::to_string(value_up_down) + std::string(" 0 ");
            break;

        case 102:
            message.data = std::string("rc ") + std::string("0 ") +
                           std::string("0 ") + std::to_string(-value_up_down) + std::string(" 0");
            break;

        case 43:
            message.data = std::string("rc ") + std::string("0 ") +
                           std::string("0 ") + std::string("0 ") + std::string("0 ");
            if(value_up_down!=100)
            {
                value_up_down=value_up_down+5;
            }
            if(value_yaw!=100)
            {
                value_yaw=value_yaw+5;
            }
            if(value_left_right!=100)
            {
                value_left_right=value_left_right+5;
            }
            if(value_forward_backward!=100)
            {
                value_forward_backward=value_forward_backward+5;
            }
            break;

        case 45:
            message.data = std::string("rc") + std::string("0") +
                           std::string("0") + std::string("0") + std::string("0");
            if(value_up_down!=-100)
            {
                value_up_down=value_up_down-5;
            }
            if(value_yaw!=-100)
            {
                value_yaw=value_yaw-5;
            }
            if(value_left_right!=-100)
            {
                value_left_right=value_left_right-5;
            }
            if(value_forward_backward!=-100)
            {
                value_forward_backward=value_forward_backward-5;
            }
            break;

        case 32:
            message.data = std::string("rc ") + std::string("0 ") +
                           std::string("0 ") + std::string("0 ") + std::string("0 ");
            break;

        case 122:
            message.data = std::string("takeoff");
            break;

        case 120:
            message.data = std::string("land");
            break;

        case 56:
            message.data = std::string("flip f");
            break;

        case 50:
            message.data = std::string("flip b");
            break;

        case 52:
            message.data = std::string("flip l");
            break;

        case 54:
            message.data = std::string("flip r");
            break;

        case 48:
            message.data = std::string("emergency");
            break;

        default:
            message.data = std::string("");
            break;

    }
    return message;
}

void tello_teleop::send_command(std_msgs::String command)
{
    command_pub.publish(command);
}
