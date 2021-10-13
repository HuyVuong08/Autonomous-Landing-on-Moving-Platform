; Auto-generated. Do not edit!


(cl:in-package ped_traj_pred-msg)


;//! \htmlinclude PathWithId.msg.html

(cl:defclass <PathWithId> (roslisp-msg-protocol:ros-message)
  ((path_id
    :reader path_id
    :initarg :path_id
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (path
    :reader path
    :initarg :path
    :type nav_msgs-msg:Path
    :initform (cl:make-instance 'nav_msgs-msg:Path)))
)

(cl:defclass PathWithId (<PathWithId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathWithId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathWithId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ped_traj_pred-msg:<PathWithId> is deprecated: use ped_traj_pred-msg:PathWithId instead.")))

(cl:ensure-generic-function 'path_id-val :lambda-list '(m))
(cl:defmethod path_id-val ((m <PathWithId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ped_traj_pred-msg:path_id-val is deprecated.  Use ped_traj_pred-msg:path_id instead.")
  (path_id m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <PathWithId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ped_traj_pred-msg:path-val is deprecated.  Use ped_traj_pred-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathWithId>) ostream)
  "Serializes a message object of type '<PathWithId>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathWithId>) istream)
  "Deserializes a message object of type '<PathWithId>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathWithId>)))
  "Returns string type for a message object of type '<PathWithId>"
  "ped_traj_pred/PathWithId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathWithId)))
  "Returns string type for a message object of type 'PathWithId"
  "ped_traj_pred/PathWithId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathWithId>)))
  "Returns md5sum for a message object of type '<PathWithId>"
  "38de2ffc133e194dbb7924d6ad97cc02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathWithId)))
  "Returns md5sum for a message object of type 'PathWithId"
  "38de2ffc133e194dbb7924d6ad97cc02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathWithId>)))
  "Returns full string definition for message of type '<PathWithId>"
  (cl:format cl:nil "std_msgs/UInt8 path_id~%nav_msgs/Path path~%~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathWithId)))
  "Returns full string definition for message of type 'PathWithId"
  (cl:format cl:nil "std_msgs/UInt8 path_id~%nav_msgs/Path path~%~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%================================================================================~%MSG: nav_msgs/Path~%#An array of poses that represents a Path for a robot to follow~%Header header~%geometry_msgs/PoseStamped[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathWithId>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathWithId>))
  "Converts a ROS message object to a list"
  (cl:list 'PathWithId
    (cl:cons ':path_id (path_id msg))
    (cl:cons ':path (path msg))
))
