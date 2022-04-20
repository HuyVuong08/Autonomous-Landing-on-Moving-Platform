; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude MarkerList.msg.html

(cl:defclass <MarkerList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (imageTopicName
    :reader imageTopicName
    :initarg :imageTopicName
    :type cl:string
    :initform "")
   (markers
    :reader markers
    :initarg :markers
    :type (cl:vector perception_msgs-msg:Marker)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:Marker :initial-element (cl:make-instance 'perception_msgs-msg:Marker))))
)

(cl:defclass MarkerList (<MarkerList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MarkerList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MarkerList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<MarkerList> is deprecated: use perception_msgs-msg:MarkerList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MarkerList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'imageTopicName-val :lambda-list '(m))
(cl:defmethod imageTopicName-val ((m <MarkerList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:imageTopicName-val is deprecated.  Use perception_msgs-msg:imageTopicName instead.")
  (imageTopicName m))

(cl:ensure-generic-function 'markers-val :lambda-list '(m))
(cl:defmethod markers-val ((m <MarkerList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:markers-val is deprecated.  Use perception_msgs-msg:markers instead.")
  (markers m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MarkerList>) ostream)
  "Serializes a message object of type '<MarkerList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'imageTopicName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'imageTopicName))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'markers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'markers))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MarkerList>) istream)
  "Deserializes a message object of type '<MarkerList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'imageTopicName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'imageTopicName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'markers) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'markers)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:Marker))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MarkerList>)))
  "Returns string type for a message object of type '<MarkerList>"
  "perception_msgs/MarkerList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MarkerList)))
  "Returns string type for a message object of type 'MarkerList"
  "perception_msgs/MarkerList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MarkerList>)))
  "Returns md5sum for a message object of type '<MarkerList>"
  "9f0edb9bb4a3a12d927b2fa0af3294e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MarkerList)))
  "Returns md5sum for a message object of type 'MarkerList"
  "9f0edb9bb4a3a12d927b2fa0af3294e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MarkerList>)))
  "Returns full string definition for message of type '<MarkerList>"
  (cl:format cl:nil "# Header~%Header header~%~%# Image info~%string imageTopicName~%~%# List of visual markers~%perception_msgs/Marker[] markers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/Marker~%# Header. Needed for the frame_id~%Header header~%~%# Id of the visual marker~%string id~%~%# Size of the visual marker if available~%float32[] size~%~%# Points of the visual marker in the Image~%perception_msgs/LabeledPointInImage[] labeledPointsInImage~%~%# Flag for the 3D reconstruction~%bool is3dReconstructed~%~%# Pose of the Visual Marker wrt Camera if calibration file is available~%geometry_msgs/PoseWithCovariance pose~%~%# Confidence in the detection. TODO~%float64 confidence~%~%================================================================================~%MSG: perception_msgs/LabeledPointInImage~%# string value. Empty if there is no label~%string value~%# Point with x,y coordinates of the point in the image~%PointInImage pointsInImage~%~%================================================================================~%MSG: perception_msgs/PointInImage~%# x coordinate of the point in the image~%float32 x~%# y coordinate of the poitn in the image~%float32 y~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MarkerList)))
  "Returns full string definition for message of type 'MarkerList"
  (cl:format cl:nil "# Header~%Header header~%~%# Image info~%string imageTopicName~%~%# List of visual markers~%perception_msgs/Marker[] markers~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: perception_msgs/Marker~%# Header. Needed for the frame_id~%Header header~%~%# Id of the visual marker~%string id~%~%# Size of the visual marker if available~%float32[] size~%~%# Points of the visual marker in the Image~%perception_msgs/LabeledPointInImage[] labeledPointsInImage~%~%# Flag for the 3D reconstruction~%bool is3dReconstructed~%~%# Pose of the Visual Marker wrt Camera if calibration file is available~%geometry_msgs/PoseWithCovariance pose~%~%# Confidence in the detection. TODO~%float64 confidence~%~%================================================================================~%MSG: perception_msgs/LabeledPointInImage~%# string value. Empty if there is no label~%string value~%# Point with x,y coordinates of the point in the image~%PointInImage pointsInImage~%~%================================================================================~%MSG: perception_msgs/PointInImage~%# x coordinate of the point in the image~%float32 x~%# y coordinate of the poitn in the image~%float32 y~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MarkerList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'imageTopicName))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'markers) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MarkerList>))
  "Converts a ROS message object to a list"
  (cl:list 'MarkerList
    (cl:cons ':header (header msg))
    (cl:cons ':imageTopicName (imageTopicName msg))
    (cl:cons ':markers (markers msg))
))
