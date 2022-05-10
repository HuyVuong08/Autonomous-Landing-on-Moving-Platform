#include <std_msgs/Empty.h>
#include <std_msgs/Bool.h>
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "nav_msgs/Odometry.h"
#include <geometry_msgs/Twist.h>
#include <tf/tf.h>
#include <tf/transform_broadcaster.h>
#include <tf/transform_listener.h>
#include <sstream>
#include "tello_driver/TelloStatus.h"

#pragma once

namespace botello_movement
{

struct PidGains
{
    double kp;
    double ki;
    double kd;
};

class BotelloMovementNode
{
private:
    // ================
    // Member variables.
    // ================
    // Most recent manual override time.
    ros::Time mManualOverrideStamp;
    ros::Time mTime2Descend;
    ros::Time mDescendPeriodStamp;
    // Most recent successful lookup of `goal` frame.
    ros::Time mLastGoalLookupTime;

    // Node handle.
    ros::NodeHandle mnh;

    // Transform broadcaster.
    tf::TransformBroadcaster mbr;

    // PID gains (once object per axis).
    PidGains mXGains;
    PidGains mYGains;
    PidGains mZGains;
    PidGains mYawGains;

    // land flag
    bool isLanding = false;

    // ================
    // Parameters.
    // ================
    // How long to disable autonomous command after a manual override msg.
    double mManualOverrideCooldownTimeout;
    // How long to descend drone
    double mDescendPeriodTimeout = 3.0;

    // Number of seconds allowed to pass without successful goal-frame lookups before a stop signal gets sent.
    double mNoGoalsMaxTime;

    //Goal reach flag
    bool mGoalReachFlag;

    // Tello status.
    bool mTelloStatusIsFlying;
    double mTelloStatusHeight;

    // ================
    // Methods.
    // ================
    bool getParamsFromParamServer();
    //Landing control system
    void commandLanding(double & vz);
    // Send /cmd_vel msgs to command velocities on the robot.
    void commandVelocity(const double & vx,
                         const double & vy,
                         const double & vz,
                         const double & vt);


    // Get a velocity command from an axis, gains, and error.
    double pid(const std::string & axis,const double & error, const PidGains & gains);

    // ================
    // Listeners.
    // ================
    ros::Subscriber mManualOverrideSub;
    ros::Subscriber mGoalReachedFlagSub;
    ros::Subscriber mTelloStatusSub;

    // ================
    // Publishers.
    // ================
    ros::Publisher mCmdVelPub;
    ros::Publisher pub_land_;
    ros::Publisher pub_land_emergency_;


    // ================
    // Callbacks.
    // ================
    void manualOverrideCb(const std_msgs::Empty & msg);
    void GoalReachedCb(const std_msgs::Bool & msg);
    void telloStatusCb(const tello_driver::TelloStatus & msg);


public:
    BotelloMovementNode(const ros::NodeHandle & nh);
    ~BotelloMovementNode();

    // Get the current error between base_link and goal, and translate that to velocity commands via a PID controller.
    void controlVelocity();
};

} // namespace botello_movement
