#ifndef BOTELLO_ARUCO_GRIDBOARD_NODE_HPP
#define BOTELLO_ARUCO_GRIDBOARD_NODE_HPP

#include <sstream>
#include <string>

#include <cv_bridge/cv_bridge.h>
#include <ros/ros.h>
#include <message_filters/subscriber.h>
#include <message_filters/time_synchronizer.h>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/Image.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/PoseWithCovarianceStamped.h>
#include <image_geometry/pinhole_camera_model.h>
#include <std_msgs/Header.h>
#include <opencv2/aruco.hpp>
#include <opencv2/calib3d.hpp>

#include <std_msgs/Int8.h>
#include <std_msgs/String.h>
#include <geometry_msgs/PointStamped.h>
#include <tf/tf.h>
#include <tf/transform_broadcaster.h>
#include <image_transport/image_transport.h>

#include <opencv2/highgui/highgui.hpp>


#pragma once

namespace botello_aruco_gridboard
{

class BotelloArucoGridboardNode
{
private:
    // ================
    // Member variables.
    // ================
    ros::NodeHandle mnh;
    tf::TransformBroadcaster mbr;
    
    boost::mutex lock_;
    unsigned long queue_size_;
    std::string mBoardPath;
    std::string model_description_;
    std::string mDetectorParamsPath;
    std::string camera_frame_name_;
    bool status_tracker_;
    cv::Ptr<cv::aruco::Board> board_;
    image_geometry::PinholeCameraModel mCameraModel;
    cv::Mat mCamMatrix;
    cv::Mat_<double> mDistCoeffs;
    cv::Mat mImageCopy; // The current camera image.

    cv_bridge::CvImagePtr cv_ptr;
    std_msgs::Header mImageHeader;
    
    // A flag for whether an image was received or not. This could (should?) become a callback and removed.
    bool mGotImage;

    // Millimeters per pixel.
    double mMmPx;

    /// Parameters for gridboard detection.
    cv::Ptr<cv::aruco::DetectorParameters> mDetectorParams;

    // Transformation matrices for base_link in tag grid.
    cv::Vec3d mrvec, mtvec;

    // The aruco gridboard board object.
    cv::Ptr<cv::aruco::Board> mBoard;

    // Note if pose estimation of the marker grid is successful. note(yoraish): This probably should not be a class member.
    bool mIsEstimationSuccessful;


    // ================
    // Parameters.
    // ================
    std::string mCameraFrameName;

    // ================
    // Methods.
    // ================
    bool getParamsFromParamServer();
    static bool readDetectorParameters(std::string filename, cv::Ptr<cv::aruco::DetectorParameters> &params);

    // Checks if a matrix is a valid rotation matrix.
    bool isRotationMatrix(cv::Mat &R);


    // Calculates rotation matrix to euler angles
    // The result is the same as MATLAB except the order
    // of the euler angles ( x and z are swapped ).
    cv::Vec3f rotationMatrixToEulerAngles(cv::Mat &R);

    cv::Vec4d rotationMatrixToQuaternion(cv::Mat &R);

    // ================
    // Listeners.
    // ================
    ros::Subscriber mCamInfoSub;
    ros::Subscriber mImageRawSub;

    // ================
    // Publishers.
    // ================
    // Publish (on a topic) landmark observations. Child frame: landmark (specified by name). Parent frame: base_link (implicit). Botello localization can use that information, alongside the pose of the landmark on the map, to localize the robot (by tweaking odomInMap TF).
    ros::Publisher mLandmarkPub;
    ros::Publisher mBaseLinkPub;

    
    // ================
    // Callbacks.
    // ================
    void imageCb(const sensor_msgs::ImageConstPtr &msg);
    void camInfoCb(const sensor_msgs::CameraInfo::ConstPtr &msg);

public:
    BotelloArucoGridboardNode(const ros::NodeHandle & nh);
    ~BotelloArucoGridboardNode();
    void waitForImage();

};

} // namespace botello_aruco_gridboard
#endif
