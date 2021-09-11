; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2SampleReachPointTrigger.msg.html

(cl:defclass <WaypointV2SampleReachPointTrigger> (roslisp-msg-protocol:ros-message)
  ((waypointIndex
    :reader waypointIndex
    :initarg :waypointIndex
    :type cl:fixnum
    :initform 0)
   (terminateNum
    :reader terminateNum
    :initarg :terminateNum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointV2SampleReachPointTrigger (<WaypointV2SampleReachPointTrigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2SampleReachPointTrigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2SampleReachPointTrigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2SampleReachPointTrigger> is deprecated: use dji_osdk_ros-msg:WaypointV2SampleReachPointTrigger instead.")))

(cl:ensure-generic-function 'waypointIndex-val :lambda-list '(m))
(cl:defmethod waypointIndex-val ((m <WaypointV2SampleReachPointTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointIndex-val is deprecated.  Use dji_osdk_ros-msg:waypointIndex instead.")
  (waypointIndex m))

(cl:ensure-generic-function 'terminateNum-val :lambda-list '(m))
(cl:defmethod terminateNum-val ((m <WaypointV2SampleReachPointTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:terminateNum-val is deprecated.  Use dji_osdk_ros-msg:terminateNum instead.")
  (terminateNum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2SampleReachPointTrigger>) ostream)
  "Serializes a message object of type '<WaypointV2SampleReachPointTrigger>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypointIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waypointIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'terminateNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'terminateNum)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2SampleReachPointTrigger>) istream)
  "Deserializes a message object of type '<WaypointV2SampleReachPointTrigger>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypointIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waypointIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'terminateNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'terminateNum)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2SampleReachPointTrigger>)))
  "Returns string type for a message object of type '<WaypointV2SampleReachPointTrigger>"
  "dji_osdk_ros/WaypointV2SampleReachPointTrigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2SampleReachPointTrigger)))
  "Returns string type for a message object of type 'WaypointV2SampleReachPointTrigger"
  "dji_osdk_ros/WaypointV2SampleReachPointTrigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2SampleReachPointTrigger>)))
  "Returns md5sum for a message object of type '<WaypointV2SampleReachPointTrigger>"
  "3f587d7ef365928c01789a7ce4df11f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2SampleReachPointTrigger)))
  "Returns md5sum for a message object of type 'WaypointV2SampleReachPointTrigger"
  "3f587d7ef365928c01789a7ce4df11f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2SampleReachPointTrigger>)))
  "Returns full string definition for message of type '<WaypointV2SampleReachPointTrigger>"
  (cl:format cl:nil "uint16 waypointIndex # It determines the index of the waypoint at which the action will be triggered.~%uint16 terminateNum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2SampleReachPointTrigger)))
  "Returns full string definition for message of type 'WaypointV2SampleReachPointTrigger"
  (cl:format cl:nil "uint16 waypointIndex # It determines the index of the waypoint at which the action will be triggered.~%uint16 terminateNum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2SampleReachPointTrigger>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2SampleReachPointTrigger>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2SampleReachPointTrigger
    (cl:cons ':waypointIndex (waypointIndex msg))
    (cl:cons ':terminateNum (terminateNum msg))
))
