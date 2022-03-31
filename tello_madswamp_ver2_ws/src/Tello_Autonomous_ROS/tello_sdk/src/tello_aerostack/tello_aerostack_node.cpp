//
// Created by madswamp on 18/04/21.
//
#include "../../include/tello_aerostack/tello_aerostack.h"






int main(int argc,char **argv)
{
    ros::init(argc, argv, "Tello_Aerostack_Node");
    tello_aerostack aerostack_interface;
    ros::Rate r(30);

    while (ros::ok())
    {
        if(aerostack_interface.flag_flight_action)
        {
            aerostack_interface.send_flight_action();
        }
        aerostack_interface.send_state_to_aerostack();
        ros::spinOnce();
        r.sleep();
    }
    return 0;
}



