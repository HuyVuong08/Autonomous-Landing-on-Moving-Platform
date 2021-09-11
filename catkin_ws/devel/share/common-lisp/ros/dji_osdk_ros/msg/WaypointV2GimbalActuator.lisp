; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2GimbalActuator.msg.html

(cl:defclass <WaypointV2GimbalActuator> (roslisp-msg-protocol:ros-message)
  ((DJIWaypointV2ActionActuatorGimbalOperationType
    :reader DJIWaypointV2ActionActuatorGimbalOperationType
    :initarg :DJIWaypointV2ActionActuatorGimbalOperationType
    :type cl:fixnum
    :initform 0)
   (actuatorIndex
    :reader actuatorIndex
    :initarg :actuatorIndex
    :type cl:fixnum
    :initform 0)
   (waypointV2GimbalActuatorRotationParam
    :reader waypointV2GimbalActuatorRotationParam
    :initarg :waypointV2GimbalActuatorRotationParam
    :type dji_osdk_ros-msg:WaypointV2GimbalActuatorRotationParam
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2GimbalActuatorRotationParam)))
)

(cl:defclass WaypointV2GimbalActuator (<WaypointV2GimbalActuator>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2GimbalActuator>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2GimbalActuator)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2GimbalActuator> is deprecated: use dji_osdk_ros-msg:WaypointV2GimbalActuator instead.")))

(cl:ensure-generic-function 'DJIWaypointV2ActionActuatorGimbalOperationType-val :lambda-list '(m))
(cl:defmethod DJIWaypointV2ActionActuatorGimbalOperationType-val ((m <WaypointV2GimbalActuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:DJIWaypointV2ActionActuatorGimbalOperationType-val is deprecated.  Use dji_osdk_ros-msg:DJIWaypointV2ActionActuatorGimbalOperationType instead.")
  (DJIWaypointV2ActionActuatorGimbalOperationType m))

(cl:ensure-generic-function 'actuatorIndex-val :lambda-list '(m))
(cl:defmethod actuatorIndex-val ((m <WaypointV2GimbalActuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:actuatorIndex-val is deprecated.  Use dji_osdk_ros-msg:actuatorIndex instead.")
  (actuatorIndex m))

(cl:ensure-generic-function 'waypointV2GimbalActuatorRotationParam-val :lambda-list '(m))
(cl:defmethod waypointV2GimbalActuatorRotationParam-val ((m <WaypointV2GimbalActuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointV2GimbalActuatorRotationParam-val is deprecated.  Use dji_osdk_ros-msg:waypointV2GimbalActuatorRotationParam instead.")
  (waypointV2GimbalActuatorRotationParam m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointV2GimbalActuator>)))
    "Constants for message type '<WaypointV2GimbalActuator>"
  '((:DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEROTATEGIMBAL . 1)
    (:DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEUNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointV2GimbalActuator)))
    "Constants for message type 'WaypointV2GimbalActuator"
  '((:DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEROTATEGIMBAL . 1)
    (:DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEUNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2GimbalActuator>) ostream)
  "Serializes a message object of type '<WaypointV2GimbalActuator>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DJIWaypointV2ActionActuatorGimbalOperationType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actuatorIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'actuatorIndex)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypointV2GimbalActuatorRotationParam) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2GimbalActuator>) istream)
  "Deserializes a message object of type '<WaypointV2GimbalActuator>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DJIWaypointV2ActionActuatorGimbalOperationType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actuatorIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'actuatorIndex)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypointV2GimbalActuatorRotationParam) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2GimbalActuator>)))
  "Returns string type for a message object of type '<WaypointV2GimbalActuator>"
  "dji_osdk_ros/WaypointV2GimbalActuator")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2GimbalActuator)))
  "Returns string type for a message object of type 'WaypointV2GimbalActuator"
  "dji_osdk_ros/WaypointV2GimbalActuator")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2GimbalActuator>)))
  "Returns md5sum for a message object of type '<WaypointV2GimbalActuator>"
  "8bcaee6b26f8e0a2c23b117c342971ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2GimbalActuator)))
  "Returns md5sum for a message object of type 'WaypointV2GimbalActuator"
  "8bcaee6b26f8e0a2c23b117c342971ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2GimbalActuator>)))
  "Returns full string definition for message of type '<WaypointV2GimbalActuator>"
  (cl:format cl:nil "# gimbal actuator will be performed when a waypoint mission is executed.~%#constant for DJIWaypointV2ActionActuatorGimbalOperationType~%# Rotates the gimbal. Only valid when the trigger type is~%# ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_ReachPoint``.~%uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeRotateGimbal = 1~%# Unknown~%uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeUnknown = 255~%~%uint8 DJIWaypointV2ActionActuatorGimbalOperationType~%uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related~%                      # to camera or gimbal and the connected product has multiple gimbals and cameras.~%WaypointV2GimbalActuatorRotationParam waypointV2GimbalActuatorRotationParam # The operation type of gimbal actuator.~%================================================================================~%MSG: dji_osdk_ros/WaypointV2GimbalActuatorRotationParam~%  int16 x             # gimbal roll angle,  unit: 0.1 deg,range:[-3600, 3600]*/~%  int16 y             # gimbal pitch angle, unit: 0.1 deg,range:[-3600, 3600]*/~%  int16 z             # gimbal yaw angle,   unit: 0.1 deg,range:[-3600, 3600]*/~%  uint8 ctrl_mode     # 0: absolute position control, 1:relative position control*/~%  uint8 rollCmdIgnore # 0: roll command normal,  1: roll command ignore*/~%  uint8 pitchCmdIgnore# 0: pitch command normal,  1: pitch command ignore*/~%  uint8 yawCmdIgnore  # 0: yaw command normal,  1: yaw command ignore*/~%  uint8 absYawModeRef # 0: absoluate rotate yaw relative to aircraft,~%                      #  1: absoluate rotate yaw relative to North*/~%  uint8 duationTime    # 0: rotate time,unit:0.1s, range[1,255]*/~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2GimbalActuator)))
  "Returns full string definition for message of type 'WaypointV2GimbalActuator"
  (cl:format cl:nil "# gimbal actuator will be performed when a waypoint mission is executed.~%#constant for DJIWaypointV2ActionActuatorGimbalOperationType~%# Rotates the gimbal. Only valid when the trigger type is~%# ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_ReachPoint``.~%uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeRotateGimbal = 1~%# Unknown~%uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeUnknown = 255~%~%uint8 DJIWaypointV2ActionActuatorGimbalOperationType~%uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related~%                      # to camera or gimbal and the connected product has multiple gimbals and cameras.~%WaypointV2GimbalActuatorRotationParam waypointV2GimbalActuatorRotationParam # The operation type of gimbal actuator.~%================================================================================~%MSG: dji_osdk_ros/WaypointV2GimbalActuatorRotationParam~%  int16 x             # gimbal roll angle,  unit: 0.1 deg,range:[-3600, 3600]*/~%  int16 y             # gimbal pitch angle, unit: 0.1 deg,range:[-3600, 3600]*/~%  int16 z             # gimbal yaw angle,   unit: 0.1 deg,range:[-3600, 3600]*/~%  uint8 ctrl_mode     # 0: absolute position control, 1:relative position control*/~%  uint8 rollCmdIgnore # 0: roll command normal,  1: roll command ignore*/~%  uint8 pitchCmdIgnore# 0: pitch command normal,  1: pitch command ignore*/~%  uint8 yawCmdIgnore  # 0: yaw command normal,  1: yaw command ignore*/~%  uint8 absYawModeRef # 0: absoluate rotate yaw relative to aircraft,~%                      #  1: absoluate rotate yaw relative to North*/~%  uint8 duationTime    # 0: rotate time,unit:0.1s, range[1,255]*/~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2GimbalActuator>))
  (cl:+ 0
     1
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypointV2GimbalActuatorRotationParam))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2GimbalActuator>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2GimbalActuator
    (cl:cons ':DJIWaypointV2ActionActuatorGimbalOperationType (DJIWaypointV2ActionActuatorGimbalOperationType msg))
    (cl:cons ':actuatorIndex (actuatorIndex msg))
    (cl:cons ':waypointV2GimbalActuatorRotationParam (waypointV2GimbalActuatorRotationParam msg))
))
