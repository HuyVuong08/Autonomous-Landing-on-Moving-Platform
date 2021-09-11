; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2TrajectoryTrigger.msg.html

(cl:defclass <WaypointV2TrajectoryTrigger> (roslisp-msg-protocol:ros-message)
  ((startIndex
    :reader startIndex
    :initarg :startIndex
    :type cl:fixnum
    :initform 0)
   (endIndex
    :reader endIndex
    :initarg :endIndex
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointV2TrajectoryTrigger (<WaypointV2TrajectoryTrigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2TrajectoryTrigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2TrajectoryTrigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2TrajectoryTrigger> is deprecated: use dji_osdk_ros-msg:WaypointV2TrajectoryTrigger instead.")))

(cl:ensure-generic-function 'startIndex-val :lambda-list '(m))
(cl:defmethod startIndex-val ((m <WaypointV2TrajectoryTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:startIndex-val is deprecated.  Use dji_osdk_ros-msg:startIndex instead.")
  (startIndex m))

(cl:ensure-generic-function 'endIndex-val :lambda-list '(m))
(cl:defmethod endIndex-val ((m <WaypointV2TrajectoryTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:endIndex-val is deprecated.  Use dji_osdk_ros-msg:endIndex instead.")
  (endIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2TrajectoryTrigger>) ostream)
  "Serializes a message object of type '<WaypointV2TrajectoryTrigger>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'startIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'startIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'endIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'endIndex)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2TrajectoryTrigger>) istream)
  "Deserializes a message object of type '<WaypointV2TrajectoryTrigger>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'startIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'startIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'endIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'endIndex)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2TrajectoryTrigger>)))
  "Returns string type for a message object of type '<WaypointV2TrajectoryTrigger>"
  "dji_osdk_ros/WaypointV2TrajectoryTrigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2TrajectoryTrigger)))
  "Returns string type for a message object of type 'WaypointV2TrajectoryTrigger"
  "dji_osdk_ros/WaypointV2TrajectoryTrigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2TrajectoryTrigger>)))
  "Returns md5sum for a message object of type '<WaypointV2TrajectoryTrigger>"
  "a990a2081bb526bf9f60173c3e6fc781")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2TrajectoryTrigger)))
  "Returns md5sum for a message object of type 'WaypointV2TrajectoryTrigger"
  "a990a2081bb526bf9f60173c3e6fc781")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2TrajectoryTrigger>)))
  "Returns full string definition for message of type '<WaypointV2TrajectoryTrigger>"
  (cl:format cl:nil "# This class represents a trajectory trigger action when should be trigger.~%~%uint16 startIndex # It determines the index of the waypoint at which the trigger starts.~%uint16 endIndex   # It determines the waypoint when the trigger stops.~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2TrajectoryTrigger)))
  "Returns full string definition for message of type 'WaypointV2TrajectoryTrigger"
  (cl:format cl:nil "# This class represents a trajectory trigger action when should be trigger.~%~%uint16 startIndex # It determines the index of the waypoint at which the trigger starts.~%uint16 endIndex   # It determines the waypoint when the trigger stops.~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2TrajectoryTrigger>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2TrajectoryTrigger>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2TrajectoryTrigger
    (cl:cons ':startIndex (startIndex msg))
    (cl:cons ':endIndex (endIndex msg))
))
