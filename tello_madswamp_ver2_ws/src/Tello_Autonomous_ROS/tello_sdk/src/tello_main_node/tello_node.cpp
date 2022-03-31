#include "../../include/tello_main_node/tello_sdk.h"
#include "../../include/tello_main_node/tello_ros.h"

int flag_sig_int=0;

void mySigintHandler(int sig)
{
    flag_sig_int=1;
}

void status_thread(tello_ros* ros_interface)
{
    ros_interface->tello_status_function();
}

void video_feed_thread(tello_ros* ros_interface)
{
    ros_interface->video_feed_function();
}


int main(int argc,char **argv)
{
    ros::init(argc, argv, "Tello_Node",ros::init_options::NoSigintHandler);
    signal(SIGINT, mySigintHandler);

    tello_ros ros_interface;

    if(!ros_interface.sdk.set_up_tello_sdk())
    {
        ROS_INFO_STREAM("Tello SDK Set Up Failed");
        return 0;
    }

    boost::thread thread_video_feed(status_thread,&ros_interface);
    boost::thread thread_tello_status(video_feed_thread,&ros_interface);
    ros::Rate r(30);
    while(ros::ok())
    {
        if(flag_sig_int==1)
        {
            ros_interface.flag_end_threads=true;
            ROS_INFO("Ending Tello SDK");
            return 0;
        }
        if(ros_interface.flag_command_to_send==1)
        {
            while(!ros_interface.sdk.send_command_to_tello(ros_interface.command_to_send.data));
            ros_interface.flag_command_to_send=0;
        }
        ros::spinOnce();
        r.sleep();
    }
    return 0;
}

