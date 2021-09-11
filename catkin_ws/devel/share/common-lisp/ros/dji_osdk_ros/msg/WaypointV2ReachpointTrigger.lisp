; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2ReachpointTrigger.msg.html

(cl:defclass <WaypointV2ReachpointTrigger> (roslisp-msg-protocol:ros-message)
  ((startIndex
    :reader startIndex
    :initarg :startIndex
    :type cl:fixnum
    :initform 0)
   (endIndex
    :reader endIndex
    :initarg :endIndex
    :type cl:fixnum
    :initform 0)
   (intervalWPNum
    :reader intervalWPNum
    :initarg :intervalWPNum
    :type cl:fixnum
    :initform 0)
   (waypointCountToTerminate
    :reader waypointCountToTerminate
    :initarg :waypointCountToTerminate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointV2ReachpointTrigger (<WaypointV2ReachpointTrigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2ReachpointTrigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2ReachpointTrigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2ReachpointTrigger> is deprecated: use dji_osdk_ros-msg:WaypointV2ReachpointTrigger instead.")))

(cl:ensure-generic-function 'startIndex-val :lambda-list '(m))
(cl:defmethod startIndex-val ((m <WaypointV2ReachpointTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:startIndex-val is deprecated.  Use dji_osdk_ros-msg:startIndex instead.")
  (startIndex m))

(cl:ensure-generic-function 'endIndex-val :lambda-list '(m))
(cl:defmethod endIndex-val ((m <WaypointV2ReachpointTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:endIndex-val is deprecated.  Use dji_osdk_ros-msg:endIndex instead.")
  (endIndex m))

(cl:ensure-generic-function 'intervalWPNum-val :lambda-list '(m))
(cl:defmethod intervalWPNum-val ((m <WaypointV2ReachpointTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:intervalWPNum-val is deprecated.  Use dji_osdk_ros-msg:intervalWPNum instead.")
  (intervalWPNum m))

(cl:ensure-generic-function 'waypointCountToTerminate-val :lambda-list '(m))
(cl:defmethod waypointCountToTerminate-val ((m <WaypointV2ReachpointTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointCountToTerminate-val is deprecated.  Use dji_osdk_ros-msg:waypointCountToTerminate instead.")
  (waypointCountToTerminate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2ReachpointTrigger>) ostream)
  "Serializes a message object of type '<WaypointV2ReachpointTrigger>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'startIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'startIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'endIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'endIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'intervalWPNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'intervalWPNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypointCountToTerminate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waypointCountToTerminate)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2ReachpointTrigger>) istream)
  "Deserializes a message object of type '<WaypointV2ReachpointTrigger>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'startIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'startIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'endIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'endIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'intervalWPNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'intervalWPNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypointCountToTerminate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waypointCountToTerminate)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2ReachpointTrigger>)))
  "Returns string type for a message object of type '<WaypointV2ReachpointTrigger>"
  "dji_osdk_ros/WaypointV2ReachpointTrigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2ReachpointTrigger)))
  "Returns string type for a message object of type 'WaypointV2ReachpointTrigger"
  "dji_osdk_ros/WaypointV2ReachpointTrigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2ReachpointTrigger>)))
  "Returns md5sum for a message object of type '<WaypointV2ReachpointTrigger>"
  "97fe6c65510583177587ba40623a3408")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2ReachpointTrigger)))
  "Returns md5sum for a message object of type 'WaypointV2ReachpointTrigger"
  "97fe6c65510583177587ba40623a3408")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2ReachpointTrigger>)))
  "Returns full string definition for message of type '<WaypointV2ReachpointTrigger>"
  (cl:format cl:nil "#  It describes an action will be triggered when the aircraft reach the certain waypoint.~%  uint16 startIndex   # It determines the index of the waypoint at which the action will be triggered.~%  uint16 endIndex~%  uint16 intervalWPNum~%  uint16 waypointCountToTerminate  # It determines the waypoint count till the action triggered stops.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2ReachpointTrigger)))
  "Returns full string definition for message of type 'WaypointV2ReachpointTrigger"
  (cl:format cl:nil "#  It describes an action will be triggered when the aircraft reach the certain waypoint.~%  uint16 startIndex   # It determines the index of the waypoint at which the action will be triggered.~%  uint16 endIndex~%  uint16 intervalWPNum~%  uint16 waypointCountToTerminate  # It determines the waypoint count till the action triggered stops.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2ReachpointTrigger>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2ReachpointTrigger>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2ReachpointTrigger
    (cl:cons ':startIndex (startIndex msg))
    (cl:cons ':endIndex (endIndex msg))
    (cl:cons ':intervalWPNum (intervalWPNum msg))
    (cl:cons ':waypointCountToTerminate (waypointCountToTerminate msg))
))
