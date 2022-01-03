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

//import geonav_transform.geonav_conversions as gc
using namespace gps_common;

static ros::Publisher odom_pub;
std::string frame_id, child_frame_id;
double rot_cov;
static bool first_callback = true;
static int NO_first_callback = 0;
static int NO_init = 30;

static long double ground_truth_x;
static long double ground_truth_y;

// Coordinate of point data structure
struct Point {
    double x;
    double y;
    Point(double x_, double y_) {
        this->x = x_;
        this->y = y_;
    }
};

static Point spawn_coordinate = Point(8, 5);
static double spawn_x = 8.0;
static double spawn_y = 5.0;
static double origin_lat = 10.762622;
static double origin_lon = 106.660172;

void ground_truth_callback(const nav_msgs::OdometryConstPtr& ground_truth) {
    std::string ground_truth_frame_id;
    ground_truth_frame_id =  ground_truth->header.frame_id;

    double ground_truth_time_callback;
    ground_truth_time_callback = ground_truth->header.stamp.toSec();

    ground_truth_x = 0;
    ground_truth_y = 0;
    ground_truth_x = ground_truth->pose.pose.position.x;
    ground_truth_y = ground_truth->pose.pose.position.y;
    //ROS_INFO("ground_truth_x, ground_truth_y: %Lf, %Lf", ground_truth_x, ground_truth_y);
}

/*
 *def calc_goal(origin_lat, origin_long, goal_lat, goal_long):
 *    # Calculate distance and azimuth between GPS points
 *    geod = Geodesic.WGS84    # define the WGS84 ellipsoid
 *    g = geod.Inverse(origin_lat, origin_long, goal_lat, goal_long) # Compute several geodesic calculations between two GPS points
 *    hypotenuse = distance = g['s12'] # access distance
 *    rospy.loginfo("The distance from the origin to the goal is {:.3f} m.".format(distance))
 *    print("distance: ", distance)
 *    azimuth = g['azi1']
 *    rospy.loginfo("The azimuth from the origin to the goal is {:.3f} degrees.".format(azimuth))
 *
 *    # Convert polar (distance and azimuth) to x,y translation in meters (needed for ROS) by finding side lenghs of a right-angle triangle
 *    # Convert azimuth to radians
 *    azimuth = math.radians(azimuth)
 *    x = adjacent = math.cos(azimuth) * hypotenuse
 *    y = opposite = math.sin(azimuth) * hypotenuse
 *    rospy.loginfo("The translation from the origin to the goal is (x,y) {:.3f}, {:.3f} m.".format(x, y))
 *    print("x,y: ", x, y)
 *    y_ratio = 5/y
 *    print("y ratio: ", y_ratio)
 *    print("Spawn x,y: ", x, y*round(y_ratio, 5))
 *    # utmy,utmx,utmzone=gc.LLtoUTM(origin_lat, origin_long)
 *
 *    xg2,yg2=gc.ll2xy(goal_lat, goal_long, origin_lat, origin_long)
 *    print("x,y: ", yg2, xg2)
 *    print("y ratio: ", 5/xg2)
 *    return x, y
 */

void ll2xy(double lat, double lon, double origin_lat, double origin_lon, double &x, double &y) {
    std::string outmzone, utmzone;
    double outmy, outmx, utmx, utmy;
    GeonavTransform::NavsatConversions::LLtoUTM(origin_lat,origin_lon,outmy,outmx,outmzone);
    GeonavTransform::NavsatConversions::LLtoUTM(lat,lon,utmy,utmx,utmzone);
    x = utmy-outmy;
    y = utmx-outmx;
}

void callback(const sensor_msgs::NavSatFixConstPtr& fix) {
    if (fix->status.status == sensor_msgs::NavSatStatus::STATUS_NO_FIX) {
        ROS_INFO("No fix.");
        return;
    }

    if (fix->header.stamp == ros::Time(0)) {
        return;
    }

    static long double spawn_lat, spawn_lon;
    static double spawn_navsat_utm_northing;
    static double spawn_navsat_utm_easting;
    static double total_spawn_x, total_spawn_y;
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

    double x = -1.5;
    double y = -1.5;
    double x_ratio = 1.0;
    double y_ratio = 4.753641982529753;

    std::string utm_zone, navsat_utm_zone;

    /*
     *    if (first_callback) {
     *        first_callback = false;
     *        spawn_lat = fix->latitude;
     *        spawn_lon = fix->longitude;
     *        ROS_INFO("spawn_lonitude, spawn_latitude: %Lf, %Lf", spawn_lon, spawn_lat);
     *
     *        GeonavTransform::NavsatConversions::LLtoUTM(spawn_lat, spawn_lon, spawn_navsat_utm_easting, spawn_navsat_utm_northing,  spawn_navsat_utm_zone);
     *        ROS_INFO("UTM spawn_navsat_utm_easting, spawn_navsat_utm_northing: %f, %f", spawn_navsat_utm_easting, spawn_navsat_utm_northing);
     *
     *        origin_navsat_utm_easting = spawn_navsat_utm_easting - spawn_coordinate.x;
     *        origin_navsat_utm_northing = spawn_navsat_utm_northing - spawn_coordinate.y;
     *
     *        ROS_INFO("----------------------------------------------------------");
     *    }
     */

    if (NO_first_callback < NO_init) {
        NO_first_callback += 1;
        spawn_lat = fix->latitude;
        spawn_lon = fix->longitude;
        ROS_INFO("spawn_lon = %Lf, spawn_lat = %Lf", spawn_lon, spawn_lat);

        ll2xy(spawn_lat, spawn_lon, origin_lat, origin_lon, x, y);

        ROS_INFO("x = %f, y = %f", x, y);
        ROS_INFO("NO first callback: %d", NO_first_callback);

        total_spawn_x += x;
        total_spawn_y += y;

        if (NO_first_callback == NO_init){
            x_ratio = spawn_x/(total_spawn_x/NO_init);
            y_ratio = spawn_y/(total_spawn_y/NO_init);
            ROS_INFO("x_ratio = %f, y_ratio = %f", x_ratio, y_ratio);
            ROS_INFO("----------------------------------------------------------------------------------------------");
        }
        return;
    }

    /*
     *    ROS_INFO("longitude, latitude: %Lf, %Lf", longitude, latitude);
     *
     *    LLtoUTM(latitude, longitude, utm_easting, utm_northing, utm_zone);
     *    ROS_INFO("UTM utm_easting, utm_northing: %f, %f", utm_easting, utm_northing);
     *
     *    GeonavTransform::NavsatConversions::LLtoUTM(latitude, longitude, navsat_utm_easting, navsat_utm_northing, navsat_utm_zone);
     *    ROS_INFO("UTM navsat_utm_easting, navsat_utm_northing: %f, %f", navsat_utm_easting, navsat_utm_northing);
     *
     *    if ( spawn_navsat_utm_zone != navsat_utm_zone ){
     *        ROS_INFO("WARNING: geonav_conversion: origin and location are in different UTM zones!");
     *    }
     *
     *    easting  = navsat_utm_easting  - origin_navsat_utm_easting;
     *    northing = navsat_utm_northing - origin_navsat_utm_northing;
     */

    ll2xy(latitude, longitude, origin_lat, origin_lon, x, y);

    if (odom_pub) {
        nav_msgs::Odometry odom;
        odom.header.stamp = fix->header.stamp;

        if (frame_id.empty())
            odom.header.frame_id = fix->header.frame_id;
        else
            odom.header.frame_id = frame_id;

        odom.child_frame_id = child_frame_id;

        odom.pose.pose.position.x = x * x_ratio;
        odom.pose.pose.position.y = y * y_ratio;
        odom.pose.pose.position.z = fix->altitude;

        odom.pose.pose.orientation.x = 0;
        odom.pose.pose.orientation.y = 0;
        odom.pose.pose.orientation.z = 0;
        odom.pose.pose.orientation.w = 1;

        ROS_INFO("x = %f, y = %f, z = %f", odom.pose.pose.position.x, odom.pose.pose.position.y, odom.pose.pose.position.z);
        //ROS_INFO("x = %Lf, y = %Lf", ground_truth_x, ground_truth_y);

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

int main(int argc, char **argv) {
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
