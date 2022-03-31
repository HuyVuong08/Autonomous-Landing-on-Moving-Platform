//
// Created by madswamp on 15/04/21.
//
#include "../../include/tello_teleop/tello_teleop.h"

int main(int argc,char **argv)
{
    ros::init(argc, argv, "Tello_Teleop_Node");
    tello_teleop teleop;
    ros::Rate r(30);
    while(ros::ok())
    {
        int c=teleop.getch();
        std_msgs::String command=teleop.get_command_string(c);
        if (command.data.size()>1)
        {
            teleop.send_command(command);
            ROS_INFO_STREAM(command);
        }
        ros::spinOnce();
        r.sleep();
    }
    return 0;
}
