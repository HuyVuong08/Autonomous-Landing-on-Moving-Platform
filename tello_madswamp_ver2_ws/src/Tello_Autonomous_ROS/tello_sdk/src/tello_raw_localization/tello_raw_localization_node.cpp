#include "../../include/tello_raw_localization/tello_raw_localization.h"


int main(int argc,char **argv)
{
    ros::init(argc, argv, "Tello_Raw_LocalizationNode");
    tello_raw_localization tello_raw;
    ros::Rate r(30);
    while (ros::ok())
    {
        while(!tello_raw.flag_linear_speed && !tello_raw.flag_imu)
        {
            ros::spinOnce();
        }
        tello_raw.pub_pose_broadcast_tf();
        ros::spinOnce();
        r.sleep();
    }
    return 0;
}

