//
// Created by madswamp on 14/04/21.
//

#include "../../include/tello_main_node/tello_ros.h"

tello_ros::tello_ros()
{
    linear_speed_rad_pub=nh.advertise<geometry_msgs::TwistStamped>("raw_localization/linear_speed", 1, true);
    //linear_speed_deg_pub=nh.advertise<geometry_msgs::TwistStamped>("raw_localization/linear_speed_deg", 1, true); //debug

    //imu_deg_pub = nh.advertise<sensor_msgs::Imu>("sensor_measurement/imu_deg", 1, true);
    imu_rad_pub = nh.advertise<sensor_msgs::Imu>("sensor_measurement/imu", 1, true); //debug

    battery_pub = nh.advertise<sensor_msgs::BatteryState>("sensor_measurement/battery_state", 1, true);

    temperature_pub = nh.advertise<sensor_msgs::Temperature>("sensor_measurement/temperature", 1, true);

    barometer_altitude_pub = nh.advertise<geometry_msgs::PointStamped>("sensor_measurement/sea_level_altitude", 1, true);

    altitude_pub = nh.advertise<geometry_msgs::PointStamped>("sensor_measurement/altitude", 1, true);

    video_feed_pub = nh.advertise<sensor_msgs::Image>("sensor_measurement/camera/image_raw",1,true);

    commands_subscriber = nh.subscribe("commands_tello",1,&tello_ros::commandsCallback, this);

    camera_info_pub = nh.advertise<sensor_msgs::CameraInfo>("sensor_measurement/camera/camera_info",1);

    ros::param::get("~camera_info_url", camurl);
    ros::param::get("~camera_name",camera_name);

    ROS_INFO("ROS Interface Set Up Complete");
}

tello_ros::~tello_ros()
{

}

void tello_ros::commandsCallback(const std_msgs::StringConstPtr& command)
{
    command_to_send.data=command->data;
    flag_command_to_send=1;
}

void tello_ros::tello_status_function()
{
    std::string status;
    double buffer_data[16];
    ros::Time current_time,prev_time;

    double prev_roll = 0;
    double prev_pitch = 0;
    double prev_yaw = 0;

    ros::Rate r(30);
    while (ros::ok())
    {
        int pos_first_delimiter=0,pos_second_delimiter=0,i=0;
        if((status=sdk.get_tello_status()).size()>0)
        {
            while(i<16)
            {
                pos_first_delimiter=status.find(":",pos_first_delimiter)+1;
                pos_second_delimiter=status.find(";",pos_second_delimiter)+1;
                buffer_data[i]=std::stod(status.substr(pos_first_delimiter,pos_second_delimiter-pos_first_delimiter-1));
                i++;
            }
            if(!flag_first_data)
            {
                prev_time=ros::Time::now();
                prev_roll=buffer_data[1]*M_PI/180;
                prev_pitch=buffer_data[0]*M_PI/180;
                prev_yaw=buffer_data[2]*M_PI/180;
                flag_first_data=1;
            }
            else
            {
                current_time=ros::Time::now();

                double current_roll=(buffer_data[1]*M_PI/180);
                double current_pitch=(buffer_data[0]*M_PI/180);
                double current_yaw=(buffer_data[2]*M_PI/180);

                double diffTime=(current_time - prev_time).nsec / 1E9;

                tf2::Quaternion current_quat,prev_quat,diff_quat;
                current_quat.setRPY(current_roll,current_pitch,current_yaw);
                prev_quat.setRPY(prev_roll,prev_pitch,prev_yaw);
                diff_quat=current_quat*prev_quat.inverse();

                double relative_roll,relative_pitch,relative_yaw;
                tf2::Matrix3x3 matrix(diff_quat);

                matrix.getRPY(relative_roll,relative_pitch,relative_yaw);
                double diff_roll=(relative_roll)/diffTime;
                double diff_pitch=(relative_pitch)/diffTime;
                double diff_yaw=(relative_yaw)/diffTime;

                double Angular_roll=(diff_roll)-(sin(current_pitch)*diff_yaw);
                double Angular_pitch=(cos(current_roll) * diff_pitch) + (cos(current_pitch)*sin(current_roll) * diff_yaw);
                double Angular_yaw=(-sin(current_roll) * diff_pitch) + (cos(current_roll)*cos(current_pitch) * diff_yaw);

                prev_time=current_time;
                prev_roll=current_roll;
                prev_pitch=current_pitch;
                prev_yaw=current_yaw;

                geometry_msgs::TwistStamped linear_speed_msg;

                linear_speed_msg.header.stamp=ros::Time::now();
                linear_speed_msg.header.frame_id="world";

                linear_speed_msg.twist.linear.x=buffer_data[3]/10;
                linear_speed_msg.twist.linear.y=buffer_data[4]/10;
                linear_speed_msg.twist.linear.z=buffer_data[5]/10;

                linear_speed_msg.twist.angular.x=Angular_roll;
                linear_speed_msg.twist.angular.y=Angular_pitch;
                linear_speed_msg.twist.angular.z=Angular_yaw;

                linear_speed_rad_pub.publish(linear_speed_msg);


                sensor_msgs::Imu imu_msg;

                tf2::Quaternion orientation_quaternion;

                imu_msg.header.stamp=ros::Time::now();
                imu_msg.header.frame_id="world";

                /*imu_msg.linear_acceleration.x=buffer_data[13]/100;
                imu_msg.linear_acceleration.y=buffer_data[14]/100;
                imu_msg.linear_acceleration.z=buffer_data[15]/100;*/

                imu_msg.angular_velocity.x=Angular_roll;
                imu_msg.angular_velocity.y=Angular_pitch;
                imu_msg.angular_velocity.z=Angular_yaw;

                orientation_quaternion.setRPY(current_roll,current_pitch,current_yaw);

                imu_msg.orientation.x=orientation_quaternion.x();
                imu_msg.orientation.y=orientation_quaternion.y();
                imu_msg.orientation.z=orientation_quaternion.z();
                imu_msg.orientation.w=orientation_quaternion.w();

                imu_rad_pub.publish(imu_msg);

                /*imu_msg.angular_velocity.x=Angular_roll*180/M_PI;
                imu_msg.angular_velocity.y=Angular_pitch*180/M_PI;
                imu_msg.angular_velocity.z=Angular_yaw*180/M_PI;

                orientation_quaternion.setRPY(buffer_data[1],buffer_data[0],buffer_data[2]);

                imu_msg.orientation.x=orientation_quaternion.x();
                imu_msg.orientation.y=orientation_quaternion.y();
                imu_msg.orientation.z=orientation_quaternion.z();
                imu_msg.orientation.w=orientation_quaternion.w();

                imu_msg.orientation.x=buffer_data[1];
                imu_msg.orientation.y=buffer_data[0];
                imu_msg.orientation.z=buffer_data[2];
                imu_msg.orientation.w=1;

                ros_interface->imu_deg_pub.publish(imu_msg);*/
            }
            sensor_msgs::BatteryState battery_msg;

            battery_msg.header.stamp=ros::Time::now();
            battery_msg.header.frame_id="world";

            battery_msg.capacity=1.1;
            battery_msg.voltage=3.8;
            battery_msg.percentage=buffer_data[10];

            battery_pub.publish(battery_msg);

            sensor_msgs::Temperature temperature_msg;

            float mean_temperature=(buffer_data[7]+buffer_data[6])/2;

            temperature_msg.header.stamp=ros::Time::now();
            temperature_msg.header.frame_id="world";

            temperature_msg.temperature=mean_temperature;
            temperature_msg.variance=pow(buffer_data[7]-mean_temperature,2);

            temperature_pub.publish(temperature_msg);

            geometry_msgs::PointStamped baro_drone_altitude_msgs;

            baro_drone_altitude_msgs.header.stamp=ros::Time::now();
            baro_drone_altitude_msgs.header.frame_id="world";

            baro_drone_altitude_msgs.point.z=buffer_data[11];

            barometer_altitude_pub.publish(baro_drone_altitude_msgs);

            baro_drone_altitude_msgs.header.stamp=ros::Time::now();
            baro_drone_altitude_msgs.point.z=buffer_data[9]/100;

            altitude_pub.publish(baro_drone_altitude_msgs);
        }

        if(flag_end_threads==1)
        {
            return;
        }
        r.sleep();
    }
}

void tello_ros::video_feed_function()
{
    if(!sdk.start_video_stream())
    {
        ROS_INFO("Video Feed Error");
        return;
    }
    VideoCapture feed{Tello_Stream_Adress, CV_CAP_FFMPEG};
    cv_bridge::CvImage image_to_send;
    sensor_msgs::CameraInfo info;
    camera_info_manager::CameraInfoManager caminfo(nh, camera_name, camurl);
    while(ros::ok())
    {
        cv::Mat Video;
        feed >> Video;

        image_to_send.header.stamp=ros::Time::now();
        image_to_send.encoding=sensor_msgs::image_encodings::BGR8;
        image_to_send.image=Video;

        info=caminfo.getCameraInfo();
        info.header = image_to_send.header;

        camera_info_pub.publish(info);
        video_feed_pub.publish(image_to_send);

        if(flag_end_threads==1)
        {
            return;
        }
    }
}