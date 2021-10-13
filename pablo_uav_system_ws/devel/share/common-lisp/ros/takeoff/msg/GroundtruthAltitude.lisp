; Auto-generated. Do not edit!


(cl:in-package takeoff-msg)


;//! \htmlinclude GroundtruthAltitude.msg.html

(cl:defclass <GroundtruthAltitude> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gt_altitude
    :reader gt_altitude
    :initarg :gt_altitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass GroundtruthAltitude (<GroundtruthAltitude>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GroundtruthAltitude>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GroundtruthAltitude)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name takeoff-msg:<GroundtruthAltitude> is deprecated: use takeoff-msg:GroundtruthAltitude instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GroundtruthAltitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader takeoff-msg:header-val is deprecated.  Use takeoff-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gt_altitude-val :lambda-list '(m))
(cl:defmethod gt_altitude-val ((m <GroundtruthAltitude>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader takeoff-msg:gt_altitude-val is deprecated.  Use takeoff-msg:gt_altitude instead.")
  (gt_altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GroundtruthAltitude>) ostream)
  "Serializes a message object of type '<GroundtruthAltitude>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gt_altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GroundtruthAltitude>) istream)
  "Deserializes a message object of type '<GroundtruthAltitude>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gt_altitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GroundtruthAltitude>)))
  "Returns string type for a message object of type '<GroundtruthAltitude>"
  "takeoff/GroundtruthAltitude")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GroundtruthAltitude)))
  "Returns string type for a message object of type 'GroundtruthAltitude"
  "takeoff/GroundtruthAltitude")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GroundtruthAltitude>)))
  "Returns md5sum for a message object of type '<GroundtruthAltitude>"
  "018e1e2bc342cacf34a44088104e49e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GroundtruthAltitude)))
  "Returns md5sum for a message object of type 'GroundtruthAltitude"
  "018e1e2bc342cacf34a44088104e49e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GroundtruthAltitude>)))
  "Returns full string definition for message of type '<GroundtruthAltitude>"
  (cl:format cl:nil "Header header~%float32 gt_altitude~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GroundtruthAltitude)))
  "Returns full string definition for message of type 'GroundtruthAltitude"
  (cl:format cl:nil "Header header~%float32 gt_altitude~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GroundtruthAltitude>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GroundtruthAltitude>))
  "Converts a ROS message object to a list"
  (cl:list 'GroundtruthAltitude
    (cl:cons ':header (header msg))
    (cl:cons ':gt_altitude (gt_altitude msg))
))
