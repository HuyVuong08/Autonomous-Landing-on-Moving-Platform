; Auto-generated. Do not edit!


(cl:in-package tf_velocity_estimator-msg)


;//! \htmlinclude PosesAndVelocities.msg.html

(cl:defclass <PosesAndVelocities> (roslisp-msg-protocol:ros-message)
  ((latest_poses
    :reader latest_poses
    :initarg :latest_poses
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
   (latest_velocities
    :reader latest_velocities
    :initarg :latest_velocities
    :type (cl:vector tf_velocity_estimator-msg:Velocity)
   :initform (cl:make-array 0 :element-type 'tf_velocity_estimator-msg:Velocity :initial-element (cl:make-instance 'tf_velocity_estimator-msg:Velocity))))
)

(cl:defclass PosesAndVelocities (<PosesAndVelocities>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PosesAndVelocities>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PosesAndVelocities)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tf_velocity_estimator-msg:<PosesAndVelocities> is deprecated: use tf_velocity_estimator-msg:PosesAndVelocities instead.")))

(cl:ensure-generic-function 'latest_poses-val :lambda-list '(m))
(cl:defmethod latest_poses-val ((m <PosesAndVelocities>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf_velocity_estimator-msg:latest_poses-val is deprecated.  Use tf_velocity_estimator-msg:latest_poses instead.")
  (latest_poses m))

(cl:ensure-generic-function 'latest_velocities-val :lambda-list '(m))
(cl:defmethod latest_velocities-val ((m <PosesAndVelocities>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tf_velocity_estimator-msg:latest_velocities-val is deprecated.  Use tf_velocity_estimator-msg:latest_velocities instead.")
  (latest_velocities m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PosesAndVelocities>) ostream)
  "Serializes a message object of type '<PosesAndVelocities>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'latest_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'latest_poses))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'latest_velocities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'latest_velocities))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PosesAndVelocities>) istream)
  "Deserializes a message object of type '<PosesAndVelocities>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'latest_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'latest_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'latest_velocities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'latest_velocities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tf_velocity_estimator-msg:Velocity))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PosesAndVelocities>)))
  "Returns string type for a message object of type '<PosesAndVelocities>"
  "tf_velocity_estimator/PosesAndVelocities")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PosesAndVelocities)))
  "Returns string type for a message object of type 'PosesAndVelocities"
  "tf_velocity_estimator/PosesAndVelocities")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PosesAndVelocities>)))
  "Returns md5sum for a message object of type '<PosesAndVelocities>"
  "16dbd35e7e0840434e00d0a0200d9f83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PosesAndVelocities)))
  "Returns md5sum for a message object of type 'PosesAndVelocities"
  "16dbd35e7e0840434e00d0a0200d9f83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PosesAndVelocities>)))
  "Returns full string definition for message of type '<PosesAndVelocities>"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] latest_poses~%Velocity[] latest_velocities~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tf_velocity_estimator/Velocity~%float32 vx~%float32 vy~%float32 vz~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PosesAndVelocities)))
  "Returns full string definition for message of type 'PosesAndVelocities"
  (cl:format cl:nil "geometry_msgs/PoseStamped[] latest_poses~%Velocity[] latest_velocities~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: tf_velocity_estimator/Velocity~%float32 vx~%float32 vy~%float32 vz~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PosesAndVelocities>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'latest_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'latest_velocities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PosesAndVelocities>))
  "Converts a ROS message object to a list"
  (cl:list 'PosesAndVelocities
    (cl:cons ':latest_poses (latest_poses msg))
    (cl:cons ':latest_velocities (latest_velocities msg))
))
