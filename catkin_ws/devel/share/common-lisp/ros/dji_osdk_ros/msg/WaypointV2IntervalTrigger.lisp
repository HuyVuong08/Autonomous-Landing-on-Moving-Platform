; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2IntervalTrigger.msg.html

(cl:defclass <WaypointV2IntervalTrigger> (roslisp-msg-protocol:ros-message)
  ((startIndex
    :reader startIndex
    :initarg :startIndex
    :type cl:fixnum
    :initform 0)
   (interval
    :reader interval
    :initarg :interval
    :type cl:fixnum
    :initform 0)
   (actionIntervalType
    :reader actionIntervalType
    :initarg :actionIntervalType
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointV2IntervalTrigger (<WaypointV2IntervalTrigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2IntervalTrigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2IntervalTrigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2IntervalTrigger> is deprecated: use dji_osdk_ros-msg:WaypointV2IntervalTrigger instead.")))

(cl:ensure-generic-function 'startIndex-val :lambda-list '(m))
(cl:defmethod startIndex-val ((m <WaypointV2IntervalTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:startIndex-val is deprecated.  Use dji_osdk_ros-msg:startIndex instead.")
  (startIndex m))

(cl:ensure-generic-function 'interval-val :lambda-list '(m))
(cl:defmethod interval-val ((m <WaypointV2IntervalTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:interval-val is deprecated.  Use dji_osdk_ros-msg:interval instead.")
  (interval m))

(cl:ensure-generic-function 'actionIntervalType-val :lambda-list '(m))
(cl:defmethod actionIntervalType-val ((m <WaypointV2IntervalTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:actionIntervalType-val is deprecated.  Use dji_osdk_ros-msg:actionIntervalType instead.")
  (actionIntervalType m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointV2IntervalTrigger>)))
    "Constants for message type '<WaypointV2IntervalTrigger>"
  '((:DJIWAYPOINTV2ACTIONINTERVALTYPETIME . 1)
    (:DJIWAYPOINTV2ACTIONINTERVALTYPEDISTANCE . 2)
    (:DJIWAYPOINTV2ACTIONINTERVALTYPEUNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointV2IntervalTrigger)))
    "Constants for message type 'WaypointV2IntervalTrigger"
  '((:DJIWAYPOINTV2ACTIONINTERVALTYPETIME . 1)
    (:DJIWAYPOINTV2ACTIONINTERVALTYPEDISTANCE . 2)
    (:DJIWAYPOINTV2ACTIONINTERVALTYPEUNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2IntervalTrigger>) ostream)
  "Serializes a message object of type '<WaypointV2IntervalTrigger>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'startIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'startIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interval)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'interval)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actionIntervalType)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2IntervalTrigger>) istream)
  "Deserializes a message object of type '<WaypointV2IntervalTrigger>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'startIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'startIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interval)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'interval)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actionIntervalType)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2IntervalTrigger>)))
  "Returns string type for a message object of type '<WaypointV2IntervalTrigger>"
  "dji_osdk_ros/WaypointV2IntervalTrigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2IntervalTrigger)))
  "Returns string type for a message object of type 'WaypointV2IntervalTrigger"
  "dji_osdk_ros/WaypointV2IntervalTrigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2IntervalTrigger>)))
  "Returns md5sum for a message object of type '<WaypointV2IntervalTrigger>"
  "9a737930d3da7d390475e0a354220c42")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2IntervalTrigger)))
  "Returns md5sum for a message object of type 'WaypointV2IntervalTrigger"
  "9a737930d3da7d390475e0a354220c42")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2IntervalTrigger>)))
  "Returns full string definition for message of type '<WaypointV2IntervalTrigger>"
  (cl:format cl:nil "#constant for actionIntervalType~%uint8 DJIWaypointV2ActionIntervalTypeTime     = 1  # The action will be repeated after a particular period of time.~%uint8 DJIWaypointV2ActionIntervalTypeDistance = 2  # The action will be repeated after a particular distance.~%uint8 DJIWaypointV2ActionIntervalTypeUnknown  = 255 # Unknown action trigger type.~%~%uint16 startIndex # It determines the index of the waypoint at which the trigger starts.~%# If the  ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType``~%# is ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Time``~%# The time interval in seconds when two action are executed as the aircraft moves~%# from the current waypoint to the next waypoint.~%# If the ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType`` is~%# ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Distance``~%# The distance interval in meters when two action are executed as the aircraft moves~%# from the current waypoint to the next waypoint.~%uint16 interval~%uint8 actionIntervalType # The type of interval trigger.~%                         # See ``DJIWaypointV2MissionV2_DJIWaypointV2ActionIntervalType``.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2IntervalTrigger)))
  "Returns full string definition for message of type 'WaypointV2IntervalTrigger"
  (cl:format cl:nil "#constant for actionIntervalType~%uint8 DJIWaypointV2ActionIntervalTypeTime     = 1  # The action will be repeated after a particular period of time.~%uint8 DJIWaypointV2ActionIntervalTypeDistance = 2  # The action will be repeated after a particular distance.~%uint8 DJIWaypointV2ActionIntervalTypeUnknown  = 255 # Unknown action trigger type.~%~%uint16 startIndex # It determines the index of the waypoint at which the trigger starts.~%# If the  ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType``~%# is ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Time``~%# The time interval in seconds when two action are executed as the aircraft moves~%# from the current waypoint to the next waypoint.~%# If the ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType`` is~%# ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Distance``~%# The distance interval in meters when two action are executed as the aircraft moves~%# from the current waypoint to the next waypoint.~%uint16 interval~%uint8 actionIntervalType # The type of interval trigger.~%                         # See ``DJIWaypointV2MissionV2_DJIWaypointV2ActionIntervalType``.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2IntervalTrigger>))
  (cl:+ 0
     2
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2IntervalTrigger>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2IntervalTrigger
    (cl:cons ':startIndex (startIndex msg))
    (cl:cons ':interval (interval msg))
    (cl:cons ':actionIntervalType (actionIntervalType msg))
))
