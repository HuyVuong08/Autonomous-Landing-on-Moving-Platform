; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude GimbalAction-request.msg.html

(cl:defclass <GimbalAction-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_reset
    :reader is_reset
    :initarg :is_reset
    :type cl:boolean
    :initform cl:nil)
   (payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0)
   (rotationMode
    :reader rotationMode
    :initarg :rotationMode
    :type cl:fixnum
    :initform 0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (time
    :reader time
    :initarg :time
    :type cl:float
    :initform 0.0))
)

(cl:defclass GimbalAction-request (<GimbalAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GimbalAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GimbalAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GimbalAction-request> is deprecated: use dji_osdk_ros-srv:GimbalAction-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GimbalAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:header-val is deprecated.  Use dji_osdk_ros-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'is_reset-val :lambda-list '(m))
(cl:defmethod is_reset-val ((m <GimbalAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:is_reset-val is deprecated.  Use dji_osdk_ros-srv:is_reset instead.")
  (is_reset m))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <GimbalAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))

(cl:ensure-generic-function 'rotationMode-val :lambda-list '(m))
(cl:defmethod rotationMode-val ((m <GimbalAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:rotationMode-val is deprecated.  Use dji_osdk_ros-srv:rotationMode instead.")
  (rotationMode m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <GimbalAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:pitch-val is deprecated.  Use dji_osdk_ros-srv:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <GimbalAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:roll-val is deprecated.  Use dji_osdk_ros-srv:roll instead.")
  (roll m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <GimbalAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:yaw-val is deprecated.  Use dji_osdk_ros-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <GimbalAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:time-val is deprecated.  Use dji_osdk_ros-srv:time instead.")
  (time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GimbalAction-request>) ostream)
  "Serializes a message object of type '<GimbalAction-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_reset) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rotationMode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GimbalAction-request>) istream)
  "Deserializes a message object of type '<GimbalAction-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_reset) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rotationMode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GimbalAction-request>)))
  "Returns string type for a service object of type '<GimbalAction-request>"
  "dji_osdk_ros/GimbalActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalAction-request)))
  "Returns string type for a service object of type 'GimbalAction-request"
  "dji_osdk_ros/GimbalActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GimbalAction-request>)))
  "Returns md5sum for a message object of type '<GimbalAction-request>"
  "66e203fa5d29e6cbb072590bb5dd1da2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GimbalAction-request)))
  "Returns md5sum for a message object of type 'GimbalAction-request"
  "66e203fa5d29e6cbb072590bb5dd1da2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GimbalAction-request>)))
  "Returns full string definition for message of type '<GimbalAction-request>"
  (cl:format cl:nil "Header header~%# ts is the time it takes to achieve the desired angle,~%# so the shorter the time, the faster the gimbal rotates.~%~%#request~%bool is_reset~%~%uint8 payload_index~%~%# rotation cooradiration~%# 0 = execute angle command based on the previously set reference point~%# 1 = execute angle command based on the current point~%uint8 rotationMode~%~%# pitch angle in degree, unit : deg~%float32 pitch~%~%# roll angle in degree, unit : deg~%float32 roll~%~%# yaw angle in degree, unit : deg~%float32 yaw~%~%#execution time, unit : second~%float64 time~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GimbalAction-request)))
  "Returns full string definition for message of type 'GimbalAction-request"
  (cl:format cl:nil "Header header~%# ts is the time it takes to achieve the desired angle,~%# so the shorter the time, the faster the gimbal rotates.~%~%#request~%bool is_reset~%~%uint8 payload_index~%~%# rotation cooradiration~%# 0 = execute angle command based on the previously set reference point~%# 1 = execute angle command based on the current point~%uint8 rotationMode~%~%# pitch angle in degree, unit : deg~%float32 pitch~%~%# roll angle in degree, unit : deg~%float32 roll~%~%# yaw angle in degree, unit : deg~%float32 yaw~%~%#execution time, unit : second~%float64 time~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GimbalAction-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     4
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GimbalAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GimbalAction-request
    (cl:cons ':header (header msg))
    (cl:cons ':is_reset (is_reset msg))
    (cl:cons ':payload_index (payload_index msg))
    (cl:cons ':rotationMode (rotationMode msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':time (time msg))
))
;//! \htmlinclude GimbalAction-response.msg.html

(cl:defclass <GimbalAction-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GimbalAction-response (<GimbalAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GimbalAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GimbalAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GimbalAction-response> is deprecated: use dji_osdk_ros-srv:GimbalAction-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GimbalAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GimbalAction-response>) ostream)
  "Serializes a message object of type '<GimbalAction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GimbalAction-response>) istream)
  "Deserializes a message object of type '<GimbalAction-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GimbalAction-response>)))
  "Returns string type for a service object of type '<GimbalAction-response>"
  "dji_osdk_ros/GimbalActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalAction-response)))
  "Returns string type for a service object of type 'GimbalAction-response"
  "dji_osdk_ros/GimbalActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GimbalAction-response>)))
  "Returns md5sum for a message object of type '<GimbalAction-response>"
  "66e203fa5d29e6cbb072590bb5dd1da2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GimbalAction-response)))
  "Returns md5sum for a message object of type 'GimbalAction-response"
  "66e203fa5d29e6cbb072590bb5dd1da2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GimbalAction-response>)))
  "Returns full string definition for message of type '<GimbalAction-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GimbalAction-response)))
  "Returns full string definition for message of type 'GimbalAction-response"
  (cl:format cl:nil "#response~%bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GimbalAction-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GimbalAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GimbalAction-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GimbalAction)))
  'GimbalAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GimbalAction)))
  'GimbalAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalAction)))
  "Returns string type for a service object of type '<GimbalAction>"
  "dji_osdk_ros/GimbalAction")