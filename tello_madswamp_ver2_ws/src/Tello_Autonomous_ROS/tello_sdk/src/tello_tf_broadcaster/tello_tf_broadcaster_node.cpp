//
// Created by madswamp on 21/05/21.
//

#include "../../include/tello_tf_broadcaster/tello_tf_broadcaster.h"

int main(int argc,char **argv)
{
    ros::init(argc, argv, "Tello_Tf_Broadcaster_Node");
    tello_tf_broadcaster tf_broadcaster;
    ros::Rate r(30);
    while (ros::ok())
    {
        while(!tf_broadcaster.flag_linear_speed && !tf_broadcaster.flag_imu)
        {
            if(tf_broadcaster.flag_new_speed_data)
            {
                tf_broadcaster.velocity_integrator();
            }
            ros::spinOnce();
        }
        if(tf_broadcaster.flag_new_speed_data)
        {
            tf_broadcaster.velocity_integrator();
        }
        tf_broadcaster.pub_pose_broadcast_tf();
        ros::spinOnce();
        r.sleep();
    }

    return 0;
}