#include "botello_aruco_gridboard_node.hpp"

namespace botello_aruco_gridboard
{


BotelloArucoGridboardNode::BotelloArucoGridboardNode(const ros::NodeHandle & nh)
{
    ROS_INFO("Instantiating BotelloArucoGridboardNode.");
    mnh = nh;

    // Listen 
    mCamInfoSub = mnh.subscribe("/tello/camera/camera_info", 1, &BotelloArucoGridboardNode::camInfoCb, this);
    mImageRawSub = mnh.subscribe("/tello/camera/image_raw", 1, & BotelloArucoGridboardNode::imageCb, this);
    
    // Publish
    mLandmarkPub = mnh.advertise<geometry_msgs::TransformStamped>("/botello/landmark", 1);

    // Get params from server.
    getParamsFromParamServer();

    // Set member variables default values.


    // Read config file describing the board
    cv::FileStorage fs(mBoardPath, cv::FileStorage::READ);

    mMmPx =  fs["mm_per_unit"] ;
    mMmPx *= 0.001;
 

    // Load parameters for the detector
    mDetectorParams = cv::aruco::DetectorParameters::create();
    bool readOk = readDetectorParameters(mDetectorParamsPath, mDetectorParams);
    if(!readOk) {
        std::cerr << "Invalid detector parameters file" << std::endl;
        return ;
    }
    mDetectorParams->cornerRefinementMethod = cv::aruco::CORNER_REFINE_SUBPIX; // do corner refinement in markers

    // Parse corners from file.
    cv::FileNode corners_node = fs["corners"];
    cv::FileNodeIterator it = corners_node.begin(), it_end = corners_node.end();
    int idx = 0;
    std::vector<std::vector<float> > lbpval;
    std::vector< std::vector<cv::Point3f> > objPoints_;
    for( ; it != it_end; ++it, idx++ )
    {
        (*it) >> lbpval;
        std::vector<cv::Point3f> points;
        points.push_back(cv::Point3f(mMmPx*lbpval[0][0], mMmPx*lbpval[0][1], mMmPx*lbpval[0][2]));
        points.push_back(cv::Point3f(mMmPx*lbpval[1][0], mMmPx*lbpval[1][1], mMmPx*lbpval[1][2]));
        points.push_back(cv::Point3f(mMmPx*lbpval[2][0], mMmPx*lbpval[2][1], mMmPx*lbpval[2][2]));
        points.push_back(cv::Point3f(mMmPx*lbpval[3][0], mMmPx*lbpval[3][1], mMmPx*lbpval[3][2]));
        objPoints_.push_back(points);
    }

    // Parse ids from file.
    std::vector< int > ids_;
    fs["ids"]  >> ids_;

    fs.release();

    // Create a board
    cv::Ptr<cv::aruco::Dictionary> dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::PREDEFINED_DICTIONARY_NAME(16));
    mBoard = cv::aruco::Board::create(objPoints_,dictionary,ids_);


    // for (unsigned int i = 0; i < objPoints_.size(); i++)
    // {
    //     for (unsigned int j = 0; j< objPoints_[i].size(); j++)
    //         std::cout<< objPoints_[i][j] << " ";
    //     std::cout << std::endl;
    // }

    // for (unsigned int i = 0; i < ids_.size(); i++)
    // {
    //     std::cout<< ids_[i] << std::endl;
    // }


    ROS_INFO("Init BotelloArucoGridboardNode done.");
}

BotelloArucoGridboardNode::~BotelloArucoGridboardNode()
{
}

bool BotelloArucoGridboardNode::getParamsFromParamServer()
{
    ros::NodeHandle pnh("botello_aruco_gridboard_node"); // To fetch params from the private namespace.
    // The tracker's configuration file.
    // Note from anbello: this file contains all of the tracker's parameters, they are not passed to ros directly.
    if (!pnh.param<std::string>("board_path", mBoardPath, ""))
    {
        ROS_ERROR_STREAM("Using default value for param board_path");
    }


    pnh.param<std::string>("detector_param_path", mDetectorParamsPath, ""); // This will move to getParamsFromParamServer().
    pnh.param<std::string>("camera_frame_name", mCameraFrameName, "camera"); // This will move to getParamsFromParamServer().
    ROS_INFO("Detector parameter file =%s",mDetectorParamsPath.c_str());
    ROS_INFO("Board config file: =%s",mBoardPath.c_str());
}

void BotelloArucoGridboardNode::waitForImage(){
    while ( ros::ok ()){
        if(mGotImage) return;
        ros::spinOnce();
    }
}


//Read parameters from a file
bool BotelloArucoGridboardNode::readDetectorParameters(std::string filename, cv::Ptr<cv::aruco::DetectorParameters> &params) {
    cv::FileStorage fs(filename, cv::FileStorage::READ);
    if(!fs.isOpened())
        return false;
    fs["adaptiveThreshWinSizeMin"] >> params->adaptiveThreshWinSizeMin;
    fs["adaptiveThreshWinSizeMax"] >> params->adaptiveThreshWinSizeMax;
    fs["adaptiveThreshWinSizeStep"] >> params->adaptiveThreshWinSizeStep;
    fs["adaptiveThreshConstant"] >> params->adaptiveThreshConstant;
    fs["minMarkerPerimeterRate"] >> params->minMarkerPerimeterRate;
    fs["maxMarkerPerimeterRate"] >> params->maxMarkerPerimeterRate;
    fs["polygonalApproxAccuracyRate"] >> params->polygonalApproxAccuracyRate;
    fs["minCornerDistanceRate"] >> params->minCornerDistanceRate;
    fs["minDistanceToBorder"] >> params->minDistanceToBorder;
    fs["minMarkerDistanceRate"] >> params->minMarkerDistanceRate;
    // fs["doCornerRefinement"] >> params->doCornerRefinement; Changed to support new opencv.
    fs["cornerRefinementMethod"] >> cv::aruco::CORNER_REFINE_SUBPIX;
    fs["cornerRefinementWinSize"] >> params->cornerRefinementWinSize;
    fs["cornerRefinementMaxIterations"] >> params->cornerRefinementMaxIterations;
    fs["cornerRefinementMinAccuracy"] >> params->cornerRefinementMinAccuracy;
    fs["markerBorderBits"] >> params->markerBorderBits;
    fs["perspectiveRemovePixelPerCell"] >> params->perspectiveRemovePixelPerCell;
    fs["perspectiveRemoveIgnoredMarginPerCell"] >> params->perspectiveRemoveIgnoredMarginPerCell;
    fs["maxErroneousBitsInBorderRate"] >> params->maxErroneousBitsInBorderRate;
    fs["minOtsuStdDev"] >> params->minOtsuStdDev;
    fs["errorCorrectionRate"] >> params->errorCorrectionRate;
    return true;
}

void BotelloArucoGridboardNode::imageCb(const sensor_msgs::ImageConstPtr & image) {
    mImageHeader = image->header;
    try
    {
        boost::mutex::scoped_lock(lock_);
        cv_ptr = cv_bridge::toCvCopy(image, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
        ROS_ERROR("cv_bridge exception: %s", e.what());
        return;
    }
    mGotImage = true;

    // Process image.
    {
        boost::mutex::scoped_lock(lock_);
        cv_ptr->image.copyTo(mImageCopy);
    }

    // Detect markers in the image.
    // TODO(yoraish): Set a temporaty board object, and change it to match the observed fiducial ids. For example, if ids observed are [0,5,6], then we'll use board = mBoards[0], if they are [34,36], then we'll use mBoards[3], etc.
    std::vector< int > ids;
    std::vector< std::vector< cv::Point2f > > corners, rejected;
    cv::aruco::Board board;

    cv::aruco::detectMarkers(mImageCopy, mBoard->dictionary, corners, ids, mDetectorParams, rejected);

    // Now estimate the pose of the board
    int markersOfBoardDetected = 0;

    if(ids.size() > 0)
    {
        // `estimatePoseBoard` returns the number of markers from the input employed for the board pose estimation.
        // https://docs.opencv.org/3.4/d9/d6a/group__aruco.html#gabb2578b9e18b13913b1d3e0ab1b554f9 
        markersOfBoardDetected = cv::aruco::estimatePoseBoard(corners, ids, mBoard, mCamMatrix, mDistCoeffs, mrvec, mtvec);

        // Choose the correct board object that matches the observed ids.
        // int boardId = int(ids.at[0]/10);
        // cv::aruco::Board board = mBoards[boardId];
    }


    if(markersOfBoardDetected > 0)
    {

        if (cv::norm(mtvec) > 0.00001) // TODO(yoraish): move to eps variable and to yaml.
        {
            mIsEstimationSuccessful = true;
        }
        else
        {
            ROS_ERROR_STREAM("Cannot estimate the marker grid pose.");
            mIsEstimationSuccessful = false;
        }
    }
    else
    {
        mIsEstimationSuccessful = false;
    }

    if (mIsEstimationSuccessful) {
        // Publish pose
        cv::Mat rot_mat(3, 3, cv::DataType<float>::type);
        cv::Mat j_mat(3, 3, cv::DataType<float>::type);
        cv::Rodrigues(mrvec, rot_mat, j_mat);
        cv::Vec3d eulerAngles = rotationMatrixToEulerAngles(rot_mat);

        // TODO(yoraish): there is probably no need for the msg object here -- work directly with tf.
        geometry_msgs::Quaternion p_quat = tf::createQuaternionMsgFromRollPitchYaw(eulerAngles[0], eulerAngles[1], eulerAngles[2]);

        // Publish robot pose.
        tf::Quaternion qFrontCamInBaselink(-0.5, 0.5, -0.5, 0.5);
        tf::Matrix3x3 rotFrontCamInBaselink(qFrontCamInBaselink);
        tf::Vector3 tFrontCamInBaselink(0.03, 0, 0);
        tf::Transform  camInBaselink = tf::Transform(rotFrontCamInBaselink, tFrontCamInBaselink);


        tf::Transform tagInCam;
        tagInCam = tf::Transform(tf::Quaternion(p_quat.x, p_quat.y, p_quat.z, p_quat.w),
            tf::Vector3(mtvec[0], mtvec[1], mtvec[2]));
        tf::Transform tagInBaselink = camInBaselink * tagInCam;
        

        // Publish the landmark detection on the landmarks topic.
        geometry_msgs::TransformStamped tagInBaselinkMsg;
        // TODO(yoraish): get the landmark frame from the detection itself. Remove the hardcoded tag0.
        tf::transformStampedTFToMsg(tf::StampedTransform(tagInBaselink, ros::Time::now(), "base_link", "tag0"), tagInBaselinkMsg);
        mLandmarkPub.publish(tagInBaselinkMsg);

        // Publish a debug tf.
        mbr.sendTransform(tf::StampedTransform(tagInBaselink, ros::Time::now(), "base_link", "tag0_obs"));
        mbr.sendTransform(tf::StampedTransform(tagInBaselink.inverse(), ros::Time::now(), "tag0", "base_link_obs"));

    }
}


void BotelloArucoGridboardNode::camInfoCb(const sensor_msgs::CameraInfo::ConstPtr& cam_info) {
    try
    {
        mCameraModel.fromCameraInfo(cam_info);

        mCamMatrix = cv::Mat(mCameraModel.fullIntrinsicMatrix());
        mDistCoeffs = cv::Mat(mCameraModel.distortionCoeffs());
        if (mDistCoeffs.size[1] < 4)
            mDistCoeffs = cv::Mat(5, 1, CV_64FC1, cv::Scalar::all(0));
    }
    catch (cv_bridge::Exception& e)
    {
        ROS_ERROR("cv_bridge exception: %s", e.what());
        return;
    }
}



bool BotelloArucoGridboardNode::isRotationMatrix(cv::Mat &R)
{
    cv::Mat Rt;
    transpose(R, Rt);
    cv::Mat shouldBeIdentity = Rt * R;
    cv::Mat I = cv::Mat::eye(3,3, shouldBeIdentity.type());

    return  norm(I, shouldBeIdentity) < 1e-6;
}

cv::Vec3f BotelloArucoGridboardNode::rotationMatrixToEulerAngles(cv::Mat &R)
{
    assert(isRotationMatrix(R));

    float sy = sqrt(R.at<double>(0,0) * R.at<double>(0,0) +  R.at<double>(1,0) * R.at<double>(1,0) );

    bool singular = sy < 1e-6; // If

    float x, y, z;
    if (!singular)
    {
        x = atan2(R.at<double>(2,1) , R.at<double>(2,2));
        y = atan2(-R.at<double>(2,0), sy);
        z = atan2(R.at<double>(1,0), R.at<double>(0,0));
    }
    else
    {
        x = atan2(-R.at<double>(1,2), R.at<double>(1,1));
        y = atan2(-R.at<double>(2,0), sy);
        z = 0;
    }
    return cv::Vec3f(x, y, z);
}

cv::Vec4d BotelloArucoGridboardNode::rotationMatrixToQuaternion(cv::Mat &R)
{
    double trace = R.at<double>(0,0) + R.at<double>(1,1) + R.at<double>(2,2);

    double Q[4];
    if (trace > 0.0)
    {
        double s = sqrt(trace + 1.0);
        Q[3] = (s * 0.5);
        s = 0.5 / s;
        Q[0] = ((R.at<double>(2,1) - R.at<double>(1,2)) * s);
        Q[1] = ((R.at<double>(0,2) - R.at<double>(2,0)) * s);
        Q[2] = ((R.at<double>(1,0) - R.at<double>(0,1)) * s);
    }
    else
    {
        int i = R.at<double>(0,0) < R.at<double>(1,1) ? (R.at<double>(1,1) < R.at<double>(2,2) ? 2 : 1) : (R.at<double>(0,0) < R.at<double>(2,2) ? 2 : 0);
        int j = (i + 1) % 3;
        int k = (i + 2) % 3;

        double s = sqrt(R.at<double>(i, i) - R.at<double>(j,j) - R.at<double>(k,k) + 1.0);
        Q[i] = s * 0.5;
        s = 0.5 / s;

        Q[3] = (R.at<double>(k,j) - R.at<double>(j,k)) * s;
        Q[j] = (R.at<double>(j,i) + R.at<double>(i,j)) * s;
        Q[k] = (R.at<double>(k,i) + R.at<double>(i,k)) * s;
    }
    return cv::Vec4d(Q[0], Q[1], Q[2], Q[3]);
}


} // End namespace botello_aruco_gridboard.


int main(int argc, char **argv)
{
    // ROS set-ups.
    // Node name.
    ros::init(argc, argv, "botello_aruco_gridboard_node"); 
    ros::NodeHandle nh;
    botello_aruco_gridboard::BotelloArucoGridboardNode botelloArucoGridboardNode(nh);
    
    ros::Rate rate(30);
    while( ros::ok())
    {
        //wait for an image to be ready
        // botelloArucoGridboardNode.waitForImage(); // ??? Can this be removed and go into the callback?
        ros::spinOnce();
        rate.sleep();
    }
    return 0;
}