#include "botello_movement_node.hpp"

namespace botello_movement
{


BotelloMovementNode::BotelloMovementNode(const ros::NodeHandle & nh)
{
    ROS_INFO("Instantiating BotelloMovementNode.");
    mnh = nh;

    // Listen to manual override messages.
    mManualOverrideSub = mnh.subscribe("/botello/manual_override", 1, & BotelloMovementNode::manualOverrideCb, this);

    // Subscribe to goal_reached_flag
    mGoalReachedFlagSub = mnh.subscribe("/botello/goal_reached_flag", 1 ,&BotelloMovementNode::GoalReachedCb, this);

    // Subscribe to tello status messages to get Tello's height
    mTelloStatusSub = mnh.subscribe("/tello/status", 1, &BotelloMovementNode::telloStatusCb, this);

    //Subscribe to PID controller output
    mPidOutputXSub = mnh.subscribe("/pid_output_x_vel", 1, &BotelloMovementNode::pidForXVelCb, this);
    mPidOutputYSub = mnh.subscribe("/pid_output_y_vel", 1, &BotelloMovementNode::pidForYVelCb, this);
    mPidOutputZSub = mnh.subscribe("/pid_output_z_vel", 1, &BotelloMovementNode::pidForZVelCb, this);
    mPidOutputYawSub = mnh.subscribe("/pid_output_yaw_vel", 1, &BotelloMovementNode::pidForYawVelCb, this);

    // Publish command velocities.
    mCmdVelPub = mnh.advertise<geometry_msgs::Twist>("/tello/cmd_vel", 1);
    pub_land_ = mnh.advertise<std_msgs::Empty>("/tello/land", 1);
    pub_land_emergency_ = mnh.advertise<std_msgs::Empty>("/tello/emergency", 1);

    // Get params from server.
    getParamsFromParamServer();

    // Set the recent manual override to be at the inception.
    mManualOverrideStamp = ros::Time(0);

    // Set the recent successful goal lookup.
    mLastGoalLookupTime = ros::Time::now();

    ROS_INFO("Init BotelloMovementNode done.");
}

BotelloMovementNode::~BotelloMovementNode()
{
}

bool BotelloMovementNode::getParamsFromParamServer()
{
    ros::NodeHandle pnh("botello_movement_node"); // To fetch params from the private namespace.
    if (!pnh.param<double>("manual_override_cooldown_timeout", mManualOverrideCooldownTimeout, 4.0))
    {
        ROS_ERROR_STREAM("Using default value for param manual_override_cooldown_timeout");
    }
    if (!pnh.param<double>("no_goals_max_time", mNoGoalsMaxTime, 4.0))
    {
        ROS_ERROR_STREAM("Using default value for param no_goals_max_time");
    }
    // X axis PID gains.
    if (!pnh.param<double>("pid_gains/x/kp", mXGains.kp, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/x/kp");
    }
    if (!pnh.param<double>("pid_gains/x/ki", mXGains.ki, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/x/ki");
    }
    if (!pnh.param<double>("pid_gains/x/kd", mXGains.kd, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/x/kd");
    }
    if (!pnh.param<double>("pid_gains/x/minOutput", mXGains.minOutput, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/x/minOutput");
    }
    if (!pnh.param<double>("pid_gains/x/maxOutput", mXGains.maxOutput, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/x/maxOutput");
    }
    if (!pnh.param<double>("pid_gains/x/integratorMin", mXGains.integratorMin, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/x/integratorMin");
    }
    if (!pnh.param<double>("pid_gains/x/integratorMax", mXGains.integratorMax, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/x/integratorMax");
    }
    

    // Y axis PID gains.
    if (!pnh.param<double>("pid_gains/y/kp", mYGains.kp, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/y/kp");
    }
    if (!pnh.param<double>("pid_gains/y/ki", mYGains.ki, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/y/ki");
    }
    if (!pnh.param<double>("pid_gains/y/kd", mYGains.kd, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/y/kd");
    }
    if (!pnh.param<double>("pid_gains/y/minOutput", mYGains.minOutput, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/y/minOutput");
    }
    if (!pnh.param<double>("pid_gains/y/maxOutput", mYGains.maxOutput, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/y/maxOutput");
    }
    if (!pnh.param<double>("pid_gains/y/integratorMin", mYGains.integratorMin, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/y/integratorMin");
    }
    if (!pnh.param<double>("pid_gains/y/integratorMax", mYGains.integratorMax, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/y/integratorMax");
    }

    // Z axis PID gains.
    if (!pnh.param<double>("pid_gains/z/kp", mZGains.kp, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/z/kp");
    }
    if (!pnh.param<double>("pid_gains/z/ki", mZGains.ki, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/z/ki");
    }
    if (!pnh.param<double>("pid_gains/z/kd", mZGains.kd, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/z/kd");
    }
    if (!pnh.param<double>("pid_gains/z/minOutput", mZGains.minOutput, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/z/minOutput");
    }
    if (!pnh.param<double>("pid_gains/z/maxOutput", mZGains.maxOutput, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/z/maxOutput");
    }
    if (!pnh.param<double>("pid_gains/z/integratorMin", mZGains.integratorMin, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/z/integratorMin");
    }
    if (!pnh.param<double>("pid_gains/z/integratorMax", mZGains.integratorMax, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/z/integratorMax");
    }

    // Yaw axis PID gains.
    if (!pnh.param<double>("pid_gains/yaw/kp", mYawGains.kp, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/yaw/kp");
    }
    if (!pnh.param<double>("pid_gains/yaw/ki", mYawGains.ki, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/yaw/ki");
    }
    if (!pnh.param<double>("pid_gains/yaw/kd", mYawGains.kd, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/yaw/kd");
    }
    if (!pnh.param<double>("pid_gains/yaw/minOutput", mYawGains.minOutput, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/yaw/minOutput");
    }
    if (!pnh.param<double>("pid_gains/yaw/maxOutput", mYawGains.maxOutput, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/yaw/maxOutput");
    }
    if (!pnh.param<double>("pid_gains/yaw/integratorMin", mYawGains.integratorMin, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/yaw/integratorMin");
    }
    if (!pnh.param<double>("pid_gains/yaw/integratorMax", mYawGains.integratorMax, 1.0))
    {
        ROS_ERROR_STREAM("Using default value for param pid_gains/yaw/integratorMax");
    }
}


// Listen to the /botello/manual_override topic. If there are messages there, then block any autonomous commands for the next x seconds.
void BotelloMovementNode::manualOverrideCb(const std_msgs::Empty & msg)
{
    mManualOverrideStamp = ros::Time::now();
}

void BotelloMovementNode::GoalReachedCb(const std_msgs::Bool & msg)
{
    mGoalReachFlag = msg.data;
}

void BotelloMovementNode::telloStatusCb(const tello_driver::TelloStatus & msg)
{
    mTelloStatusIsFlying = msg.is_flying;
    mTelloStatusHeight = msg.height_m;
    //ROS_INFO_STREAM("Height: "<< mTelloStatusHeight);
}

void BotelloMovementNode::pidForXVelCb(const std_msgs::Float64 & msg){
    pidCmdVelX = msg.data;
}

void BotelloMovementNode::pidForYVelCb(const std_msgs::Float64 & msg){
    pidCmdVelY = msg.data;
}

void BotelloMovementNode::pidForZVelCb(const std_msgs::Float64 & msg){
    pidCmdVelZ = msg.data;
}

void BotelloMovementNode::pidForYawVelCb(const std_msgs::Float64 & msg){
    pidCmdVelYaw = msg.data;
}

// Landing control system

void BotelloMovementNode::commandVelocity(const double & vx,
                                          const double & vy,
                                          const double & vz,
                                          const double & vt)
{
    // Only allow autonomous commands if enough time has passed since a manual override.
    if ((ros::Time::now() - mManualOverrideStamp).toSec() <= mManualOverrideCooldownTimeout)
    {
        ROS_INFO_STREAM("Manual override cooldown. No autonomous cmd_vel allowed.");
        return;
    }
    geometry_msgs::Twist msg;
    msg.linear.x = vx;
    msg.linear.y = vy;
    msg.linear.z = vz;
    msg.angular.z = vt;

    mCmdVelPub.publish(msg);
    ROS_INFO_STREAM("Cmd vel of x y z yaw: " << vx << " " << vy << " " << vz << " " << vt <<"\n");


}

void BotelloMovementNode::controlVelocity()
{

    // Main flying control system
    // Find the error transform. It is goal in the base_link frame.
    static tf::TransformListener tfListener;
    tf::StampedTransform goalInBaselink;
    try
    {
        ros::Time now = ros::Time::now();
        tfListener.waitForTransform("base_link", "goal", now, ros::Duration(0.05));
        tfListener.lookupTransform ("base_link", "goal", now,  goalInBaselink);
    }
    catch (tf::TransformException ex)
    {
        // If could not find a transform to goal, then change nothing about the control velocities. Unless a long time has passed since the most recent goal transform successful lookup, in which case, command a zero velocity on all axes.
        if ((ros::Time::now() - mLastGoalLookupTime).toSec() > mNoGoalsMaxTime)
        {
            /*
                * if (isLanding == true) {
                *     commandVelocity(0,0,0,0);
                *     pub_land_.publish(std_msgs::Empty());
                *     ROS_INFO_STREAM("EMERGENCY LANDING INITIATED"<<"\n");
                * } else {
                */
            // ROS_INFO_STREAM("Could not find goal transform for " << (ros::Time::now() - mLastGoalLookupTime).toSec() << " seconds. Exception:" << ex.what() << "\n");
            // }
            commandVelocity(0, 0, 0, 0);
            pub_land_emergency_.publish(std_msgs::Empty());
            ROS_INFO_STREAM("RELOCALIZATION"<< "\n");
            // pub_land_.publish(std_msgs::Empty());
            // double cmdVelZReloc = pid("z",2.0,mZGains);
            // if(mTelloStatusHeight >= 2.0){
            //     commandVelocity(0,0,0,0.5);
            // }else{
            //     commandVelocity(0,0,cmdVelZReloc,0.5);
            // }
        }
        return;
    }


    // Note that we have found a transform to goal.
    mLastGoalLookupTime = ros::Time::now();

    // Compute velocities based on the error.
    errX = goalInBaselink.getOrigin().getX();
    errY = goalInBaselink.getOrigin().getY();
    errZ = goalInBaselink.getOrigin().getZ(); // default is 0
    errYaw = tf::getYaw(goalInBaselink.getRotation());
    ROS_INFO_STREAM("Errors of goal x y yaw: x=" << errX << " y=" << errY << " z=" << errZ << " yaw= "<< errYaw << "\n");
    // double cmdVelX = new_pid(errorPidX,errX, mXGains);
    // double cmdVelY = new_pid(errorPidY,errY, mYGains);
    // double cmdVelZ = new_pid(errorPidZ,errZ, mZGains); //default is 0
    // double cmdVelYaw = new_pid(errorPidYaw,errYaw, mYawGains);
    double cmdVelX;
    double cmdVelY;
    double cmdVelZ;
    double cmdVelYaw;

    cmdVelX= new_pid_with_limiter(errorPidX,errX, mXGains);
    cmdVelY = new_pid_with_limiter(errorPidY,errY, mYGains);
    cmdVelYaw = new_pid_with_limiter(errorPidYaw,errYaw, mYawGains);
    cmdVelZ = new_pid_with_limiter(errorPidZ,errZ, mZGains);

    if(errZ < -0.3){
        commandVelocity(0, 0 , cmdVelZ, -cmdVelYaw);
        return;
    }
    if(errX < 0.5 && errY >=-0.15 && errY<0.15){
        //cmdVelZ =-10.0;
        //pub_land_emergency_.publish(std_msgs::Empty());
        commandVelocity(0, 0, 0, 0);
        pub_land_emergency_.publish(std_msgs::Empty());
        // pub_land_.publish(std_msgs::Empty());
        ROS_INFO("LANDING INITIATED...");
        return;
    }else{
        commandVelocity(-cmdVelY, cmdVelX , cmdVelZ, -cmdVelYaw);
    }
}

double BotelloMovementNode::pid(const std::string & axis,const double & error, const PidGains & gains)
{
    // TODO(yoraish): complete the PId.
    double cmd = gains.kp * error;
    cmd = cmd > 0.7 ? 0.7 : cmd; // default 0.5
    cmd = cmd < -0.7 ? -0.7 : cmd;
    
    return cmd;
}

double BotelloMovementNode::new_pid(ErrorForPid error_pid,const double & error, const PidGains & gains)
{
    error_pid.error_int += error;
    if (error_pid.error_prev == 0){
        error_pid.error_prev = error;
    }
    error_pid.error_deriv = error - error_pid.error_prev;
    
    double cmd = gains.kp*error + gains.ki*error_pid.error_int + gains.kd*error_pid.error_deriv;
    // cmd = cmd > 0.7 ? 0.7 : cmd; // speed limiter default 0.5
    // cmd = cmd < -0.7 ? -0.7 : cmd;
    error_pid.error_prev = error;//maybe switch it to the end
    return cmd;
}

double BotelloMovementNode::new_pid_with_limiter(ErrorForPid error_pid,const double & error, const PidGains & gains)
{
    double time = ros::Time::now().toSec();
    double dt = time - error_pid.previousTime;

    error_pid.error_int += error * dt;
    error_pid.error_int = std::max(std::min(error_pid.error_int,gains.integratorMax),gains.integratorMin);
    if (error_pid.error_prev == 0){
        error_pid.error_prev = error;
    }
    if(dt > 0){
        error_pid.error_deriv = (error - error_pid.error_prev)/dt;
    }
    
    double temp = gains.kp*error + gains.ki*error_pid.error_int + gains.kd*error_pid.error_deriv;
    error_pid.error_prev = error;
    error_pid.previousTime = time;
    double cmd = std::max(std::min(temp,gains.maxOutput),gains.minOutput);
    return cmd;
}

} // End namespace botello_movement.


int main(int argc, char **argv)
{
    // ROS set-ups.
    // Node name.
    ros::init(argc, argv, "botello_movement_node");
    ros::NodeHandle nh;
    botello_movement::BotelloMovementNode botelloMovementNode(nh);

    ros::Rate rate(30);
    while( ros::ok())
    {
        botelloMovementNode.controlVelocity();
        ros::spinOnce();
        rate.sleep();
    }
    return 0;
}

/*
 * ros::Publisher pub_takeoff_, pub_land_;
 *
 * void BotelloMovementNode::land_emergency() {
 *     ROS_INFO("land_emergency...");
 *     pub_land_emergency_.publish(std_msgs::Empty());
 * }
 *
 * void BotelloMovementNode::land() {
 *     ROS_INFO("Land...");
 *     pub_land_.publish(std_msgs::Empty());
 * }
 */
