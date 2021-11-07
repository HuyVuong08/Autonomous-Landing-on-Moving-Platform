/*
 * =====================================================================================
 *
 *       Filename:  move_drone.cpp
 *
 *    Description:
 *
 *        Version:  1.0
 *        Created:  30/10/2021 22:20:41
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (),
 *   Organization:
 *
 * =====================================================================================
 */

#include <string>
#include <boost/function.hpp>
#include <limits>
#include <fstream>
#include <sstream>
#include <math.h>
#include <cstdlib>

#include <ros/ros.h>

#include <std_msgs/Empty.h>
#include <sensor_msgs/Range.h>
#include <sensor_msgs/Imu.h>

#include <std_srvs/Empty.h>

#include <geometry_msgs/Twist.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <geometry_msgs/PointStamped.h>

#include <tf/transform_listener.h>

//#include <cvg_sim_msgs/Altimeter.h>
#include <ardrone_autonomy/Navdata.h>
#include <deque>

//#include <takeoff/GroundtruthAltitude.h>

#include <opencv2/highgui/highgui.hpp>

//#include <ped_traj_pred/PathWithId.h> // msg type for the path of predicted positions

#include <tf/tf.h>
#include <nav_msgs/Odometry.h>

// navigation states from the gazebo plugin (used only to send correct state to rotors in plugin)
#define UNKNOWN_MODEL       0
#define INITIALIZE_MODEL    1
#define LANDED_MODEL        2
#define FLYING_MODEL        3
#define HOVERING_MODEL      4
#define TESTING_MODEL       5
#define TAKINGOFF_MODEL     6
#define TO_FIX_POINT_MODEL  7
#define LANDING_MODEL       8
#define LOOPING_MODEL       9

// the states we actually use for our own control
namespace Status_n {
    enum Status_t {
        HOVERING,
        MOVING_2_DETERMINED_COORDINATE,
        MOVING_2_HELIPAD_ROVER,
        LANDING,
        LANDED
    };
}
typedef Status_n::Status_t Status;

//constexpr int MAX_NUM_SEQUENCES = 50;

class PlatformTracking {
    private:
        // Coordinate of point data structure
        struct Point {
            double x;
            double y;
        };

    private:
        bool manual_gains_;
        double cmd_vel_pub_freq_;
        bool adapt_path_idx_, adapt_path_idx_again_;


        Status current_status_;
        double ardrone_x_, ardrone_y_, ardrone_z_;
        double sonar_range_, altitude_altimeter_;
        unsigned int navi_state_gazebo_;

        // PID auxiliary variables
        double error_sum_x_, error_sum_y_;
        double derror_x_, derror_y_;
        tf::Vector3 target_;
        tf::Vector3 target_prev_;

        // PID gains
        double Kp_, Ki_, Kd_;
        double Kp_min_, Ki_min_, Kd_min_;
        double exp_coeff_Kp_, exp_coeff_Ki_, exp_coeff_Kd_;
        int Kp_trackbar_, Ki_trackbar_, Kd_trackbar_;


        // time auxiliry variables
        double current_time_;

        // messages and services
        geometry_msgs::Twist cmd_vel_; //! cmd_vel_ocity command send to ardrone for control
        geometry_msgs::Twist cmd_vel_prev_; //! we use it to check if we should publish a new vel
        std_msgs::Empty emptyMsg_;
        std_srvs::Empty emptySrv_;

        // topics
        std::string cmd_vel_topic_;
        // std::string platform_position_in_ardrone_topic_;  //! published by platform_detection node
        // std::string indicator_position_in_ardrone_topic_; //! published by platform_detection node
        std::string predicted_platform_path_in_world_topic_; //! published by ped_traj_pred

        std::string sonar_height_topic_, altitude_altimeter_topic_;
        std::string gt_altitude_topic_;
        std::string ardrone_navdata_;

        // publishers
        ros::Publisher cmd_vel_pub_; //! publishes into cmd_vel_topic_ for ardrone
        ros::Publisher navdata_pub_;

        // subscribers
        ros::Subscriber platform_position_in_ardrone_sub_;
        ros::Subscriber indicator_postition_in_ardrone_sub_;
        ros::Subscriber pred_platform_path_in_world_sub_;

        ros::Subscriber sonar_height_sub_, altitude_altimeter_sub_;
        ros::Subscriber gt_altitude_sub_;
        ros::Subscriber takeoff_sub_, land_sub_, force_land_sub_;
        ros::Subscriber ardrone_gt_sub_, summit_gt_sub_;
        ros::Subscriber ardrone_imu_sub_;

        ros::Subscriber odom_sub_;
        ros::Subscriber gps_odom_sub_;

        ros::Timer timer_;

        // transformations
        tf::TransformListener tf_listener_;
        tf::StampedTransform T_ardrone_world_; // odom is our inertial frame here

        // 3d current positions of the platform's centroid in ardrone
        tf::Vector3 centroid_in_ardrone_, centroid_in_world_;
        tf::Vector3 indicator_in_ardrone_;
        double centroid_in_ardrone_stamp_;
        double indicator_in_ardrone_stamp_;

        // 3d predicted positions of the platform's centroid
        int idx_in_path_; // idx of predicted path
        int num_pos_in_path_; // number of positions in path
        tf::Vector3 pred_centroid_in_world_;
        tf::Vector3 pred_centroid_in_ardrone_;

        // groundtruth positions
        tf::Vector3 gt_ardrone_;
        tf::Vector3 gt_summit_;

        // ardrone IMU data
        double angle_x_, angle_y_;
        double angular_velocity_x_, angular_velocity_y_;
        double linear_acceleration_x_, linear_acceleration_y_;

        // odom variable
        double newOdom_x, newOdom_y, newOdom_z, newOdom_theta;
        double roll, pitch, yaw;

        // gps odom variable from helipad rover
        double GPS_Odom_x_, GPS_Odom_y_;

        // point variable
        PlatformTracking::Point goal, average_helipad_coordinate_;
        double inc_x, inc_y;
        double angle_to_goal;

        double total_x, total_y, average_x, average_y;

        // for calculate moving average of Oxy coordinate from GPS data
        std::size_t window_sz;

        // auxiliary for computing distance from ardrone to platform's x and y axes
        tf::Vector3 segment_;
        tf::Vector3 perp_segment_;

        double distance_to_x_axis_platform_; //! distance from the quadrotor to the platform's x axis
        double distance_to_y_axis_platform_; //! distance from the quadrotor to the platform's y axis
        double dist_in_xy_plane_to_centroid_;

        // some helper methods
        void setErrorSumToZero(const std::string &axis);
        void setErrorDerivativeToZero();
        void setDistancesToNaN();
        void setDistancesToZero();
        void setCmdVelToZero();
        void setLandedConfig();
        void setTakingoffConfig();

        void computeDistanceToPlatformAxes();
        void computeDistanceInXYPlaneToPlatformCentroid();
        void print_status();
        void print_navdata_state();
        void relocalizationManeuver();
        void take_off();

        bool areAllCmdVelZero();
        bool is_position_NaN(const tf::Vector3 &v);

        void saveStateToCsv(const double t,
                const double ex_real, const double ey_real, const double ez_real,
                const double ex_target, const double ey_target, const double ez_target);
    public:
        PlatformTracking();
        ~PlatformTracking();

        void sonarCallback(const sensor_msgs::RangeConstPtr& sonar_height_quadrotor);
        //void altimeterCallback(const cvg_sim_msgs::AltimeterConstPtr& altimeter_msg);
        //void groundtruthAltitudeCallback(const takeoff::GroundtruthAltitudeConstPtr& gt_altitude_msg);

        void takeoffCallback(const std_msgs::EmptyConstPtr &takeoff_signal);
        void landCallback(const std_msgs::EmptyConstPtr &landing_signal);
        void forceLandCallback(const std_msgs::EmptyConstPtr &force_landing_signal);
        void heightControlCallback(const ros::TimerEvent& e);

        void groundtruthArdroneCallback(const geometry_msgs::PoseStamped& gt_ardrone);
        void groundtruthSummitCallback(const geometry_msgs::PoseStamped& gt_summit);
        void ardroneImuCallback(const sensor_msgs::ImuConstPtr& imu_msg);

        void newOdom(const nav_msgs::OdometryConstPtr& newOdom_msg);
        void GPS_Odom(const nav_msgs::OdometryConstPtr& GPS_Odom_msg);

        void follow_platform();

        void moving_2_determined_coordinate();
        void moving_2_helipad_rover();
        void calculate_moving_average(double GPS_Odom_x, double GPS_Odom_y, PlatformTracking::Point& average_helipad_coordinate);
        void land();
};



PlatformTracking::PlatformTracking() {

    ros::NodeHandle nh_("~");

    manual_gains_ = false;
    cmd_vel_pub_freq_ = 0.5;
    adapt_path_idx_ = true;
    adapt_path_idx_again_ = true;


    idx_in_path_ = -1; // take last prediction in path
    num_pos_in_path_ = -1;

    current_status_ = Status_n::MOVING_2_DETERMINED_COORDINATE; // our own internal finite state machine
    //navi_state_gazebo_ = LANDED_MODEL; // state for the rotor's plugin

    setErrorSumToZero("both");
    setErrorDerivativeToZero();
    setCmdVelToZero();

    goal.x = 5;
    goal.y = 5;

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    // get params
    nh_.getParam("manual_gains", manual_gains_);
    nh_.getParam("cmd_vel_pub_freq", cmd_vel_pub_freq_);
    nh_.getParam("adapt_path_idx", adapt_path_idx_);

    nh_.getParam("cmd_vel_topic", cmd_vel_topic_);
    nh_.getParam("predicted_platform_path_in_world_topic", predicted_platform_path_in_world_topic_);

    nh_.getParam("sonar_topic", sonar_height_topic_);
    nh_.getParam("altimeter_topic", altitude_altimeter_topic_);
    nh_.getParam("gt_altitude_topic", gt_altitude_topic_);
    nh_.getParam("ardrone_navdata", ardrone_navdata_);

    nh_.getParam("Kp", Kp_);
    nh_.getParam("Ki", Ki_);
    nh_.getParam("Kd", Kd_);

    nh_.getParam("Kp_min", Kp_min_);
    nh_.getParam("Ki_min", Ki_min_);
    nh_.getParam("Kd_min", Kd_min_);

    nh_.getParam("exp_coeff_Kp", exp_coeff_Kp_);
    nh_.getParam("exp_coeff_Ki", exp_coeff_Ki_);
    nh_.getParam("exp_coeff_Kd", exp_coeff_Kd_);

    Kp_trackbar_ = Kp_ * 1000;
    Ki_trackbar_ = Ki_ * 10000;
    Kd_trackbar_ = Kd_ * 10000;
    ROS_INFO("Kp %f, Ki %f, Kd %f", Kp_, Ki_, Kd_);

    if (manual_gains_) {
        cv::namedWindow("Gains");
        cv::createTrackbar("Kp", "Gains", &Kp_trackbar_, 1000, NULL);
        cv::createTrackbar("Ki", "Gains", &Ki_trackbar_, 1000, NULL);
        cv::createTrackbar("Kd", "Gains", &Kd_trackbar_, 1000, NULL);
        // cv::createTrackbar("idx", "Gains", &idx_in_path_, 5, NULL);
    }
    else {
        cv::namedWindow("Params");
        // cv::createTrackbar("idx", "Params", &idx_in_path_, 5, NULL);
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    // publishers
    cmd_vel_pub_             = nh_.advertise<geometry_msgs::Twist>(cmd_vel_topic_, 1);
    navdata_pub_             = nh_.advertise<ardrone_autonomy::Navdata>(ardrone_navdata_, 1);

    // subscribers
    //pred_platform_path_in_world_sub_ = nh_.subscribe(predicted_platform_path_in_world_topic_, 1, &PlatformTracking::predPlatformPathCallback, this);

    //sonar_height_sub_        = nh_.subscribe(sonar_height_topic_, 1, &PlatformTracking::sonarCallback, this);
    //altitude_altimeter_sub_  = nh_.subscribe(altitude_altimeter_topic_, 1, &PlatformTracking::altimeterCallback, this);
    //gt_altitude_sub_         = nh_.subscribe(gt_altitude_topic_, 1, &PlatformTracking::groundtruthAltitudeCallback, this);

    takeoff_sub_             = nh_.subscribe("/ardrone/takeoff", 1, &PlatformTracking::takeoffCallback, this);
    land_sub_                = nh_.subscribe("/ardrone/land", 1, &PlatformTracking::landCallback, this);
    force_land_sub_          = nh_.subscribe("/ardrone/force_land", 1, &PlatformTracking::forceLandCallback, this);

    //ardrone_gt_sub_          = nh_.subscribe("/groundtruth/ardrone", 1, &PlatformTracking::groundtruthArdroneCallback, this);
    //summit_gt_sub_           = nh_.subscribe("/groundtruth/summit", 1, &PlatformTracking::groundtruthSummitCallback, this);
    //ardrone_imu_sub_         = nh_.subscribe("/ardrone/imu", 1, &PlatformTracking::ardroneImuCallback, this);

    odom_sub_                = nh_.subscribe("/bebop/odom", 1, &PlatformTracking::newOdom, this);
    gps_odom_sub_            = nh_.subscribe("/summit_xl/mavros/gps/odom", 1, &PlatformTracking::GPS_Odom, this);

    ROS_INFO("%f", 1.0 / cmd_vel_pub_freq_);
    timer_                   = nh_.createTimer(ros::Duration(1.0 / cmd_vel_pub_freq_), &PlatformTracking::heightControlCallback, this);

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //// Transform from ardrone (base_link) to odom (acts like the world frame, in this case)
    //try {
    //ros::Time now = ros::Time::now();
    //tf_listener_.waitForTransform("/ardrone/base_link", "/odom",
    //now, ros::Duration(3.0));
    //tf_listener_.lookupTransform("/ardrone/base_link", "/odom",
    //now, T_ardrone_world_);
    //}
    //catch (tf::TransformException ex) {
    //ROS_ERROR("%s", ex.what());
    //ros::Duration(1.0).sleep();
    //}

} // end del constructor

PlatformTracking::~PlatformTracking() {
    ROS_INFO("Killing tracking...");
}

/////////////////////////////////////// callbacks ///////////////////////////////////////////

void PlatformTracking::takeoffCallback(const std_msgs::EmptyConstPtr & takeoff_signal) {

    //if (save_logs_) {
    //std::string log_dir = "/home/pablo/ws/log";

    //std::string errors_dir = log_dir + "/errors";
    //std::string create_errors_dir = "mkdir -p " + errors_dir;

    //std::string trajectories_dir = log_dir + "/trajectories";
    //std::string create_trajectories_dir = "mkdir -p " + trajectories_dir;

    //// Create dirs
    //const int dir_errors = system(create_errors_dir.c_str());
    //const int dir_trajectories = system(create_trajectories_dir.c_str());
    //if (dir_errors == -1 || dir_trajectories == -1) {
    //ROS_ERROR("Error creating directories");
    //exit(1);
    //}

    //// Build file's names depending on type of approach
    //std::string type;
    //if (use_prediction_)
    //type = "pred";
    //else
    //type = "NO_pred";

    //std::ostringstream oss;
    //oss << errors_dir << "/errors_" << type << ".csv";
    //if (!errorsFile_.is_open()) {
    //errorsFile_.open(oss.str());
    //errorsFile_ << "t,ex_real,ey_real,ez_real,ex_target,ey_target,ez_target\n";
    //}

    //oss.str("");
    //oss.clear();
    //oss << "/home/pablo/ws/log/trajectories/trajectories_" << type << ".csv";
    //if (!trajFile_.is_open()) {
    //trajFile_.open(oss.str());
    //trajFile_ << "status,aX,aY,aZ,sX,sY,sZ\n";
    //}
    //}

    // ROS_INFO("Quadrotor taking off...");

}

void PlatformTracking::landCallback(const std_msgs::EmptyConstPtr & landing_signal) {
    ROS_INFO("Quadrotor landing...");
}

void PlatformTracking::forceLandCallback(const std_msgs::EmptyConstPtr &force_landing_signal) {
    ROS_INFO("Forcing landing");
}

void PlatformTracking::sonarCallback(const sensor_msgs::RangeConstPtr & sonar_msg) {
    sonar_range_ = sonar_msg->range;
    // ROS_INFO("sonar: %f\n", sonar_range_);
}

//void PlatformTracking::altimeterCallback(const cvg_sim_msgs::AltimeterConstPtr & altimeter_msg) {
//altitude_altimeter_ = altimeter_msg->altitude * 100;
//// ROS_INFO("altimeter: %f\n", altitude_altimeter_);
//}

//void PlatformTracking::groundtruthAltitudeCallback(const takeoff::GroundtruthAltitudeConstPtr& gt_altitude_msg) {
//ardrone_z_ = gt_altitude_msg->gt_altitude;;
//// ROS_INFO("gt: %f\n", quadrotor_groundtruth_z_);
//}

//void PlatformTracking::groundtruthArdroneCallback(const geometry_msgs::PoseStamped& gt_ardrone) {
//gt_ardrone_.setX(gt_ardrone.pose.position.x);
//gt_ardrone_.setY(gt_ardrone.pose.position.y);
//gt_ardrone_.setZ(gt_ardrone.pose.position.z);
//}

//void PlatformTracking::groundtruthSummitCallback(const geometry_msgs::PoseStamped& gt_summit) {
//gt_summit_.setX(gt_summit.pose.position.x);
//gt_summit_.setY(gt_summit.pose.position.y);
//gt_summit_.setZ(gt_summit.pose.position.z);
//}

void PlatformTracking::ardroneImuCallback(const sensor_msgs::ImuConstPtr& imu_msg) {
    // angle_x_               = imu_msg->orientation.x;
    angular_velocity_x_    = imu_msg->angular_velocity.x;

    // angle_y_               = imu_msg->orientation.y;
    angular_velocity_y_    = imu_msg->angular_velocity.y;

    linear_acceleration_x_ = imu_msg->linear_acceleration.x;
    linear_acceleration_y_ = imu_msg->linear_acceleration.y;
}

void PlatformTracking::GPS_Odom(const nav_msgs::OdometryConstPtr& GPS_Odom_msg) {
    GPS_Odom_x_ = GPS_Odom_msg->pose.pose.position.x;
    GPS_Odom_y_ = GPS_Odom_msg->pose.pose.position.y;
    ROS_INFO("GPS_Odom_x, GPS_Odom_y: %f, %f", GPS_Odom_x_, GPS_Odom_y_);
    calculate_moving_average(GPS_Odom_x_, GPS_Odom_y_, average_helipad_coordinate_);
}

void PlatformTracking::newOdom(const nav_msgs::OdometryConstPtr& newOdom_msg) {
    newOdom_x = newOdom_msg->pose.pose.position.x;
    newOdom_y = newOdom_msg->pose.pose.position.y;
    newOdom_z = newOdom_msg->pose.pose.position.z;

    tf::Quaternion q(
            newOdom_msg->pose.pose.orientation.x,
            newOdom_msg->pose.pose.orientation.y,
            newOdom_msg->pose.pose.orientation.z,
            newOdom_msg->pose.pose.orientation.w);
    tf::Matrix3x3 m(q);

    m.getRPY(roll, pitch, yaw);

    newOdom_theta = yaw;

    ROS_INFO("newOdom_x, newOdom_y, newOdom_z, newOdom_theta: %f, %f, %f, %f", newOdom_x, newOdom_y, newOdom_z, newOdom_theta);

}

/////////////////////////////////////// control  ///////////////////////////////////////////

//void PlatformTracking::print_status() {
//switch (current_status_) {
//case Status_n::LANDED:
//ROS_INFO("Status LANDED");
//break;
//case Status_n::TAKINGOFF:
//ROS_INFO("Status TAKINGOFF");
//break;
//case Status_n::TRACKING:
//ROS_INFO("Status TRACKING");
//break;
//case Status_n::RELOCALIZING:
//ROS_INFO("Status RELOCALIZING");
//break;
//case Status_n::LANDING:
//ROS_INFO("Status LANDING");
//break;
//case Status_n::FORCED_LANDING:
//ROS_INFO("Status FORCED_LANDING");
//break;
//}
//}

void PlatformTracking::print_navdata_state() {
    switch (navi_state_gazebo_) {
        case UNKNOWN_MODEL:
            ROS_INFO("navdata state UNKNOWN_MODEL");
            break;
        case INITIALIZE_MODEL:
            ROS_INFO("navdata state INITIALIZE_MODEL");
            break;
        case LANDED_MODEL:
            ROS_INFO("navdata state LANDED_MODEL");
            break;
        case FLYING_MODEL:
            ROS_INFO("navdata state FLYING_MODEL");
            break;
        case HOVERING_MODEL:
            ROS_INFO("navdata state HOVERING_MODEL");
            break;
        case TESTING_MODEL:
            ROS_INFO("navdata state TESTING_MODEL");
            break;
        case TAKINGOFF_MODEL:
            ROS_INFO("navdata state TAKINGOFF_MODEL");
            break;
        case TO_FIX_POINT_MODEL:
            ROS_INFO("navdata state TO_FIX_POINT_MODEL");
            break;
        case LANDING_MODEL:
            ROS_INFO("navdata state LANDING_MODEL");
            break;
        case LOOPING_MODEL:
            ROS_INFO("navdata state LOOPING_MODEL");
            break;
    }
}

void PlatformTracking::setErrorSumToZero(const std::string &axis) {
    if (axis != "both") {
        if (axis == "x")
            error_sum_x_ = 0.0;
        else if (axis == "y")
            error_sum_y_ = 0.0;
    } else {
        error_sum_x_ = 0.0;
        error_sum_y_ = 0.0;
    }

}

void PlatformTracking::setErrorDerivativeToZero() {
    derror_x_ = 0.0;
    derror_y_ = 0.0;
}

void PlatformTracking::setDistancesToNaN() {
    dist_in_xy_plane_to_centroid_ = std::numeric_limits<double>::quiet_NaN();
    distance_to_x_axis_platform_  = std::numeric_limits<double>::quiet_NaN();
    distance_to_y_axis_platform_  = std::numeric_limits<double>::quiet_NaN();
}

void PlatformTracking::setDistancesToZero() {
    dist_in_xy_plane_to_centroid_ = 0.0;
    distance_to_x_axis_platform_  = 0.0;
    distance_to_y_axis_platform_  = 0.0;
}

void PlatformTracking::setCmdVelToZero() {
    cmd_vel_.linear.x = 0.0;
    cmd_vel_.linear.y = 0.0;
    cmd_vel_.linear.z = 0.0;
    cmd_vel_.angular.z = 0.0;
}


bool PlatformTracking::areAllCmdVelZero() {
    return cmd_vel_.linear.x == 0.0 &&
        cmd_vel_.linear.y == 0.0 &&
        cmd_vel_.linear.z == 0.0 &&
        cmd_vel_.angular.z == 0.0;
}

void PlatformTracking::saveStateToCsv(const double t,
        const double ex_real, const double ey_real, const double ez_real,
        const double ex_target, const double ey_target, const double ez_target) {

}

void PlatformTracking::relocalizationManeuver() {
    // ROS_INFO("Starting relocalization maneuver...");
    setErrorSumToZero("both");
    setErrorDerivativeToZero();
    setDistancesToNaN();

    // describe whichever trajectory (typically an ascending on) to increase view point
    cmd_vel_.linear.x = 0.0;
    cmd_vel_.linear.y = 0.0;
    cmd_vel_.linear.z = 0.0; //default: 2.0
    cmd_vel_.angular.z = 0.0;
    // ROS_INFO_STREAM("cmd_vel during relocalization: " << cmd_vel_);
}

void PlatformTracking::setLandedConfig() {
    // ROS_INFO("Setting landed config!");
    current_status_ = Status_n::LANDED;
    navi_state_gazebo_ = LANDED_MODEL;
    setCmdVelToZero();
    setErrorSumToZero("both");
    setErrorDerivativeToZero();
    setDistancesToZero();
}

void PlatformTracking::setTakingoffConfig() {
    // ROS_INFO("Setting takeoff config!");
    setCmdVelToZero();
    cmd_vel_.linear.z = 1.0;
    setErrorSumToZero("both");
    setErrorDerivativeToZero();
    setDistancesToZero();
}

void PlatformTracking::take_off() {
    if (ardrone_z_ < 4.5) {
        setCmdVelToZero();
        cmd_vel_.linear.z = 1.0;
    }
    else if (ardrone_z_ > 5.5) {
        setCmdVelToZero();
    }

    ROS_INFO("cmd_vel_.linear.x, cmd_vel_.linear.y, cmd_vel_.linear.z: %f, %f, %f", cmd_vel_.linear.x, cmd_vel_.linear.y, cmd_vel_.linear.z);
    cmd_vel_pub_.publish(cmd_vel_);
}

void PlatformTracking::calculate_moving_average(double GPS_Odom_x, double GPS_Odom_y, PlatformTracking::Point& average_helipad_coordinate) {
    window_sz = 3 ;

    std::deque<PlatformTracking::Point> window ; // window holding the most recent window_sz items
    // we use a deque because we want to add the new numbers at the back of the window
    // and discard the oldest number at the front of the window
    // a tad more efficient: use a circular buffer of size window_sz

    PlatformTracking::Point GPS_Point;
    GPS_Point.x = GPS_Odom_x;
    GPS_Point.y = GPS_Odom_y;

    double total = 0 ; // running total of the numbers currently in the window
    std::size_t cnt = 0 ; // a serial number (for output)

    // initialise the window (read in the first window_sz numbers)
    if (window.size() < window_sz) {
        total_x += GPS_Point.x;
        total_y += GPS_Point.y;
        window.push_back(GPS_Point) ;
    }
    else {

        // process the remaining items
        // throw the oldest value away and take in the newest number
        total_x -= window.front().x;
        total_y -= window.front().y;
        total_x += GPS_Point.x;
        total_y += GPS_Point.y;

        window.pop_front();
        window.push_back(GPS_Point);
        average_x = total_y / double(window_sz);
        average_y = total_y / double(window_sz);
    }
}

void PlatformTracking::moving_2_determined_coordinate() {

    inc_x = goal.x - newOdom_x;
    inc_y = goal.y - newOdom_y;
    angle_to_goal = std::atan2(inc_y, inc_x);

    ROS_INFO("inc_x, inc_y: %f, %f", inc_x, inc_y);
    ROS_INFO("angle_to_goal: %f", angle_to_goal);
    if (std::abs(angle_to_goal - newOdom_theta) > 0.1) {
        cmd_vel_.linear.x = 0.0;
        cmd_vel_.linear.z = 0.0;
        cmd_vel_.angular.z = 0.3;
        ROS_INFO("Rotate with angular.z: %f", cmd_vel_.angular.z);
    }
    else {
        cmd_vel_.linear.x = 0.5;
        cmd_vel_.linear.z = 0.0;
        cmd_vel_.angular.z = 0.0;
    }

    cmd_vel_pub_.publish(cmd_vel_);
}

void PlatformTracking::moving_2_helipad_rover() {

    inc_x = goal.x - newOdom_x;
    inc_y = goal.y - newOdom_y;
    angle_to_goal = std::atan2(inc_y, inc_x);

    ROS_INFO("inc_x, inc_y: %f, %f", inc_x, inc_y);
    ROS_INFO("angle_to_goal: %f", angle_to_goal);
    if (std::abs(angle_to_goal - newOdom_theta) > 0.1) {
        cmd_vel_.linear.x = 0.0;
        cmd_vel_.linear.z = 0.0;
        cmd_vel_.angular.z = 0.3;
        ROS_INFO("Rotate with angular.z: %f", cmd_vel_.angular.z);
    }
    else {
        cmd_vel_.linear.x = 0.5;
        cmd_vel_.linear.z = 0.0;
        cmd_vel_.angular.z = 0.0;
    }

    cmd_vel_pub_.publish(cmd_vel_);
}

void PlatformTracking::land() {

    return;
}

void PlatformTracking::heightControlCallback(const ros::TimerEvent & e) {
    /*
     * Finite State Machine control, largely dependent on the height of flight
     */

    //bool is_valid_t_sequence = std::isfinite(t_sequence_);
    //if ( has_taken_off_once_ && is_valid_t_sequence && ( (ros::Time::now().toSec() - t_sequence_) >= MISSION_DURATION) ) {
    //should_land_ = true;
    //t_sequence_ = std::numeric_limits<double>::quiet_NaN();
    //}

    switch (current_status_) {
        case Status_n::LANDED:
            ROS_INFO("Status LANDED");
            break;
        case Status_n::MOVING_2_DETERMINED_COORDINATE:
            ROS_INFO("Status MOVING_2_DETERMINED_COORDINATE");
            moving_2_determined_coordinate();
            break;
        case Status_n::MOVING_2_HELIPAD_ROVER:
            ROS_INFO("Status MOVING_2_HELIPAD_ROVER");
            moving_2_helipad_rover();
            break;
        case Status_n::LANDING:
            ROS_INFO("Status LANDING");
            land();
            //land_pub = rospy.Publisher('bebop/reset', Empty, queue_size=1)
            break;
    }

    //TRACKING_ALTITUDE_ = TRACKING_ALTITUDE_TRACKBAR_ / 100.0;
    //use_prediction_ = use_prediction_trackbar_;
    // height-adaptive PID gains
    if (manual_gains_) {
        Kp_ = Kp_trackbar_ / 1000.0;
        Ki_ = Ki_trackbar_ / 10000.0;
        Kd_ = Kd_trackbar_ / 10000.0;
    }
    else {
        Kp_ = Kp_min_ * exp(- exp_coeff_Kp_ * ardrone_z_);
        Ki_ = Ki_min_ * exp(- exp_coeff_Ki_ * ardrone_z_);
        Kd_ = Kd_min_ * exp(- exp_coeff_Kd_ * ardrone_z_);
    }

    cv::waitKey(1); // to display params trackbar

    //// send velocity only if not all commands are 0
    //if (!areAllCmdVelZero()) {
    //cmd_vel_pub_.publish(cmd_vel_);
    //cmd_vel_prev_ = cmd_vel_;
    //}

    //// prepare navdata msg - essentially we want to send the correct state to the rotors
    //ardrone_autonomy::Navdata navdata;
    //navdata.state = navi_state_gazebo_;
    //navdata_pub_.publish(navdata);

    //if (verbose_) {
    //print_status();
    //print_navdata_state();
    //ROS_INFO("use_prediction %d", use_prediction_);
    //ROS_INFO("pred path idx %d", idx_in_path_);
    //ROS_INFO("groundtruth ardrone_z %f", ardrone_z_);
    //ROS_INFO("sonar %f", sonar_range_);
    //// ROS_INFO("altimeter %f", altitude_altimeter_);
    //ROS_INFO("TRACKING_ALTITUDE %f", TRACKING_ALTITUDE_);
    //ROS_INFO_STREAM("Seen centroid lately: " << seen_centroid_lately_);
    //// ROS_INFO_STREAM("Last found time: " << last_found_time_);
    //// ROS_INFO_STREAM("dt: " << dt_);
    //// ROS_INFO_STREAM("Time w/o seeing: " << time_without_seeing_);
    //// ROS_INFO_STREAM("Dist in xy plane to centroid: " << dist_in_xy_plane_to_centroid_);
    //// ROS_INFO_STREAM("Dist to platform's X axis: " << distance_to_x_axis_platform_);
    //// ROS_INFO_STREAM("Dist to platform's Y axis: " << distance_to_y_axis_platform_);
    //ROS_INFO("Derivative (%f, %f)", derror_x_, derror_y_);
    //ROS_INFO("Error sum (%f, %f)", error_sum_x_, error_sum_y_);
    //ROS_INFO("Kp: %f, Ki: %f, Kd: %f", Kp_, Ki_, Kd_);
    //ROS_INFO("ex: %f, ey: %f, ez: %f",
    //target_.getX(),
    //target_.getY(),
    //target_.getZ());
    //ROS_INFO("linear: (%f, %f, %f)", cmd_vel_.linear.x, cmd_vel_.linear.y, cmd_vel_.linear.z);
    //ROS_INFO("yaw: %f", cmd_vel_.angular.z);
    //ROS_INFO("completed maneuvers %d", completed_sequences_);
    //ROS_INFO("reloc maneuvers %d", num_reloc_maneuvers_);
    //ROS_INFO("---");
    //}

    /// save errors to file
}

bool PlatformTracking::is_position_NaN(const tf::Vector3 &v) {
    return std::isnan(v.getX()) || std::isnan(v.getY()) || std::isnan(v.getZ());
}

void PlatformTracking::computeDistanceInXYPlaneToPlatformCentroid() {
    dist_in_xy_plane_to_centroid_ = sqrt(pow(centroid_in_ardrone_.getX(), 2) + pow(centroid_in_ardrone_.getY(), 2));
}

void PlatformTracking::follow_platform() {

    /// our target is different depending on whether we use prediction or not

    // deal with the time increments
    current_time_ = ros::Time::now().toSec();

    // initializing the system and exiting the function the first time

} // end of tracking callback

int main(int argc, char** argv) {
    ros::init(argc, argv, "platform_tracking");
    PlatformTracking platform_tracking;
    ROS_INFO("Set up completed. Ready to start mission");
    ros::spin();
}
