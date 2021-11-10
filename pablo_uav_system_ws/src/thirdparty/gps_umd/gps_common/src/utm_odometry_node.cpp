/*
 * Translates sensor_msgs/NavSat{Fix,Status} into nav_msgs/Odometry using UTM
 */

#include <ros/ros.h>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <sensor_msgs/NavSatStatus.h>
#include <sensor_msgs/NavSatFix.h>
#include <gps_common/conversions.h>
#include <geonav_transform/geonav_transform.h>
#include <geonav_transform/navsat_conversions.h>
#include <nav_msgs/Odometry.h>

using namespace gps_common;

static ros::Publisher odom_pub;
std::string frame_id, child_frame_id;
double rot_cov;
static bool first_callback = true;

// Coordinate of point data structure
struct Point {
    double x;
    double y;
    Point (double x_, double y_) {
        this->x = x_;
        this->y = y_;
    }
};

Point spawn_coordinate = Point(8, 5);

void ground_truth_callback (const nav_msgs::OdometryConstPtr& ground_truth) {
    std::string ground_truth_frame_id;
    ground_truth_frame_id =  ground_truth->header.frame_id;

    double ground_truth_time_callback;
    ground_truth_time_callback = ground_truth->header.stamp.toSec();

    long double ground_truth_x = 0;
    long double ground_truth_y = 0;
    ground_truth_x = ground_truth->pose.pose.position.x;
    ground_truth_y = ground_truth->pose.pose.position.y;
    ROS_INFO("ground_truth_x, ground_truth_y: %Lf, %Lf", ground_truth_x, ground_truth_y);
}

void callback (const sensor_msgs::NavSatFixConstPtr& fix) {
    if (fix->status.status == sensor_msgs::NavSatStatus::STATUS_NO_FIX) {
        ROS_INFO("No fix.");
        return;
    }

    if (fix->header.stamp == ros::Time(0)) {
        return;
    }

    static Point spawn_coordinate_in_launch_file = Point(5, 5);
    static long double spawn_lat, spawn_long;
    static double spawn_navsat_utm_northing;
    static double spawn_navsat_utm_easting;
    static double origin_navsat_utm_northing;
    static double origin_navsat_utm_easting;
    static std::string spawn_navsat_utm_zone;

    long double latitude, longitude;
    latitude = fix->latitude;
    longitude = fix->longitude;

    double utm_northing = -1.5;
    double utm_easting = -1.5;

    double navsat_utm_northing = -1.5;
    double navsat_utm_easting = -1.5;

    double northing = -1.5;
    double easting = -1.5;

    std::string utm_zone, navsat_utm_zone;

    if (first_callback) {
        first_callback = false;
        spawn_lat = fix->latitude;
        spawn_long = fix->longitude;
        ROS_INFO("spawn_longitude, spawn_latitude: %Lf, %Lf", spawn_long, spawn_lat);

        GeonavTransform::NavsatConversions::LLtoUTM(spawn_lat, spawn_long, spawn_navsat_utm_easting, spawn_navsat_utm_northing,  spawn_navsat_utm_zone);
        ROS_INFO("UTM spawn_navsat_utm_easting, spawn_navsat_utm_northing: %f, %f", spawn_navsat_utm_easting, spawn_navsat_utm_northing);

        origin_navsat_utm_easting = spawn_navsat_utm_easting - spawn_coordinate.x;
        origin_navsat_utm_northing = spawn_navsat_utm_northing - spawn_coordinate.y;

        ROS_INFO("----------------------------------------------------------");
    }

    ROS_INFO("longitude, latitude: %Lf, %Lf", longitude, latitude);

    LLtoUTM(latitude, longitude, utm_northing, utm_easting, utm_zone);
    ROS_INFO("UTM utm_easting, utm_northing: %f, %f", utm_easting, utm_northing);

    GeonavTransform::NavsatConversions::LLtoUTM(latitude, longitude, navsat_utm_easting, navsat_utm_northing, navsat_utm_zone);
    ROS_INFO("UTM navsat_utm_easting, navsat_utm_northing: %f, %f", navsat_utm_easting, navsat_utm_northing);

    if ( spawn_navsat_utm_zone != navsat_utm_zone ){
        ROS_INFO("WARNING: geonav_conversion: origin and location are in different UTM zones!");
    }

    easting = navsat_utm_easting - origin_navsat_utm_easting;
    northing = navsat_utm_northing - origin_navsat_utm_northing;

    if (odom_pub) {
        nav_msgs::Odometry odom;
        odom.header.stamp = fix->header.stamp;

        if (frame_id.empty())
            odom.header.frame_id = fix->header.frame_id;
        else
            odom.header.frame_id = frame_id;

        odom.child_frame_id = child_frame_id;

        odom.pose.pose.position.x = easting;
        odom.pose.pose.position.y = northing;
        odom.pose.pose.position.z = fix->altitude;

        odom.pose.pose.orientation.x = 0;
        odom.pose.pose.orientation.y = 0;
        odom.pose.pose.orientation.z = 0;
        odom.pose.pose.orientation.w = 1;

        ROS_INFO("x = %f, y = %f, z = %f", odom.pose.pose.position.x, odom.pose.pose.position.y, odom.pose.pose.position.z);

        // Use ENU covariance to build XYZRPY covariance
        boost::array<double, 36> covariance = {{
            fix->position_covariance[0],
            fix->position_covariance[1],
            fix->position_covariance[2],
            0, 0, 0,
            fix->position_covariance[3],
            fix->position_covariance[4],
            fix->position_covariance[5],
            0, 0, 0,
            fix->position_covariance[6],
            fix->position_covariance[7],
            fix->position_covariance[8],
            0, 0, 0,
            0, 0, 0, rot_cov, 0, 0,
            0, 0, 0, 0, rot_cov, 0,
            0, 0, 0, 0, 0, rot_cov
        }};

        odom.pose.covariance = covariance;

        odom_pub.publish(odom);
    }
}

int main (int argc, char **argv) {
    ros::init(argc, argv, "utm_odometry_node");
    ros::NodeHandle node;
    ros::NodeHandle priv_node("~");

    priv_node.param<std::string>("frame_id", frame_id, "");
    priv_node.param<std::string>("child_frame_id", child_frame_id, "");
    priv_node.param<double>("rot_covariance", rot_cov, 99999.0);

    odom_pub = node.advertise<nav_msgs::Odometry>("summit_xl/mavros/gps/odom", 10);

    ros::Subscriber fix_sub = node.subscribe("summit_xl/mavros/gps/fix", 10, callback);
    ros::Subscriber ground_truth_sub = node.subscribe("ardrone/ground_truth/state", 10, ground_truth_callback);

    ros::spin();
}
