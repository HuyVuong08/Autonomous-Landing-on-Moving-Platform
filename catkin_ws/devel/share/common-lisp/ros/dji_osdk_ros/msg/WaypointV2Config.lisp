; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2Config.msg.html

(cl:defclass <WaypointV2Config> (roslisp-msg-protocol:ros-message)
  ((useLocalCruiseVel
    :reader useLocalCruiseVel
    :initarg :useLocalCruiseVel
    :type cl:fixnum
    :initform 0)
   (useLocalMaxVel
    :reader useLocalMaxVel
    :initarg :useLocalMaxVel
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointV2Config (<WaypointV2Config>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2Config>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2Config)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2Config> is deprecated: use dji_osdk_ros-msg:WaypointV2Config instead.")))

(cl:ensure-generic-function 'useLocalCruiseVel-val :lambda-list '(m))
(cl:defmethod useLocalCruiseVel-val ((m <WaypointV2Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:useLocalCruiseVel-val is deprecated.  Use dji_osdk_ros-msg:useLocalCruiseVel instead.")
  (useLocalCruiseVel m))

(cl:ensure-generic-function 'useLocalMaxVel-val :lambda-list '(m))
(cl:defmethod useLocalMaxVel-val ((m <WaypointV2Config>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:useLocalMaxVel-val is deprecated.  Use dji_osdk_ros-msg:useLocalMaxVel instead.")
  (useLocalMaxVel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2Config>) ostream)
  "Serializes a message object of type '<WaypointV2Config>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'useLocalCruiseVel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'useLocalMaxVel)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2Config>) istream)
  "Deserializes a message object of type '<WaypointV2Config>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'useLocalCruiseVel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'useLocalMaxVel)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2Config>)))
  "Returns string type for a message object of type '<WaypointV2Config>"
  "dji_osdk_ros/WaypointV2Config")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2Config)))
  "Returns string type for a message object of type 'WaypointV2Config"
  "dji_osdk_ros/WaypointV2Config")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2Config>)))
  "Returns md5sum for a message object of type '<WaypointV2Config>"
  "32f75247c8f43b9a30c17e7ebb7bf75b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2Config)))
  "Returns md5sum for a message object of type 'WaypointV2Config"
  "32f75247c8f43b9a30c17e7ebb7bf75b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2Config>)))
  "Returns full string definition for message of type '<WaypointV2Config>"
  (cl:format cl:nil "# Represents current waypoint's speed config.~%# 0: set local waypoint's cruise speed,~%# 1: unset global waypoint's cruise speed*/~%uint8  useLocalCruiseVel~%# 0: set local waypoint's max speed,~%# 1: unset global waypoint's max speed*/~%uint8  useLocalMaxVel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2Config)))
  "Returns full string definition for message of type 'WaypointV2Config"
  (cl:format cl:nil "# Represents current waypoint's speed config.~%# 0: set local waypoint's cruise speed,~%# 1: unset global waypoint's cruise speed*/~%uint8  useLocalCruiseVel~%# 0: set local waypoint's max speed,~%# 1: unset global waypoint's max speed*/~%uint8  useLocalMaxVel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2Config>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2Config>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2Config
    (cl:cons ':useLocalCruiseVel (useLocalCruiseVel msg))
    (cl:cons ':useLocalMaxVel (useLocalMaxVel msg))
))
