;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::MarkerList)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'MarkerList (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::MARKERLIST")
  (make-package "PERCEPTION_MSGS::MARKERLIST"))

(in-package "ROS")
;;//! \htmlinclude MarkerList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::MarkerList
  :super ros::object
  :slots (_header _imageTopicName _markers ))

(defmethod perception_msgs::MarkerList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:imageTopicName __imageTopicName) "")
    ((:markers __markers) (let (r) (dotimes (i 0) (push (instance perception_msgs::Marker :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _imageTopicName (string __imageTopicName))
   (setq _markers __markers)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:imageTopicName
   (&optional __imageTopicName)
   (if __imageTopicName (setq _imageTopicName __imageTopicName)) _imageTopicName)
  (:markers
   (&rest __markers)
   (if (keywordp (car __markers))
       (send* _markers __markers)
     (progn
       (if __markers (setq _markers (car __markers)))
       _markers)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _imageTopicName
    4 (length _imageTopicName)
    ;; perception_msgs/Marker[] _markers
    (apply #'+ (send-all _markers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _imageTopicName
       (write-long (length _imageTopicName) s) (princ _imageTopicName s)
     ;; perception_msgs/Marker[] _markers
     (write-long (length _markers) s)
     (dolist (elem _markers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _imageTopicName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _imageTopicName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; perception_msgs/Marker[] _markers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _markers (let (r) (dotimes (i n) (push (instance perception_msgs::Marker :init) r)) r))
     (dolist (elem- _markers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::MarkerList :md5sum-) "9f0edb9bb4a3a12d927b2fa0af3294e1")
(setf (get perception_msgs::MarkerList :datatype-) "perception_msgs/MarkerList")
(setf (get perception_msgs::MarkerList :definition-)
      "# Header
Header header

# Image info
string imageTopicName

# List of visual markers
perception_msgs/Marker[] markers

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: perception_msgs/Marker
# Header. Needed for the frame_id
Header header

# Id of the visual marker
string id

# Size of the visual marker if available
float32[] size

# Points of the visual marker in the Image
perception_msgs/LabeledPointInImage[] labeledPointsInImage

# Flag for the 3D reconstruction
bool is3dReconstructed

# Pose of the Visual Marker wrt Camera if calibration file is available
geometry_msgs/PoseWithCovariance pose

# Confidence in the detection. TODO
float64 confidence

================================================================================
MSG: perception_msgs/LabeledPointInImage
# string value. Empty if there is no label
string value
# Point with x,y coordinates of the point in the image
PointInImage pointsInImage

================================================================================
MSG: perception_msgs/PointInImage
# x coordinate of the point in the image
float32 x
# y coordinate of the poitn in the image
float32 y

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :perception_msgs/MarkerList "9f0edb9bb4a3a12d927b2fa0af3294e1")


