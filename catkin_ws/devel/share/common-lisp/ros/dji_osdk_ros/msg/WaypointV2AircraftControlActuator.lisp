; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2AircraftControlActuator.msg.html

(cl:defclass <WaypointV2AircraftControlActuator> (roslisp-msg-protocol:ros-message)
  ((actuatorIndex
    :reader actuatorIndex
    :initarg :actuatorIndex
    :type cl:fixnum
    :initform 0)
   (DJIWaypointV2ActionActuatorAircraftControlOperationType
    :reader DJIWaypointV2ActionActuatorAircraftControlOperationType
    :initarg :DJIWaypointV2ActionActuatorAircraftControlOperationType
    :type cl:fixnum
    :initform 0)
   (waypointV2AircraftControlActuatorFlying
    :reader waypointV2AircraftControlActuatorFlying
    :initarg :waypointV2AircraftControlActuatorFlying
    :type dji_osdk_ros-msg:WaypointV2AircraftControlActuatorFlying
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2AircraftControlActuatorFlying))
   (waypointV2AircraftControlActuatorRotateHeading
    :reader waypointV2AircraftControlActuatorRotateHeading
    :initarg :waypointV2AircraftControlActuatorRotateHeading
    :type dji_osdk_ros-msg:WaypointV2AircraftControlActuatorRotateHeading
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2AircraftControlActuatorRotateHeading)))
)

(cl:defclass WaypointV2AircraftControlActuator (<WaypointV2AircraftControlActuator>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2AircraftControlActuator>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2AircraftControlActuator)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2AircraftControlActuator> is deprecated: use dji_osdk_ros-msg:WaypointV2AircraftControlActuator instead.")))

(cl:ensure-generic-function 'actuatorIndex-val :lambda-list '(m))
(cl:defmethod actuatorIndex-val ((m <WaypointV2AircraftControlActuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:actuatorIndex-val is deprecated.  Use dji_osdk_ros-msg:actuatorIndex instead.")
  (actuatorIndex m))

(cl:ensure-generic-function 'DJIWaypointV2ActionActuatorAircraftControlOperationType-val :lambda-list '(m))
(cl:defmethod DJIWaypointV2ActionActuatorAircraftControlOperationType-val ((m <WaypointV2AircraftControlActuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:DJIWaypointV2ActionActuatorAircraftControlOperationType-val is deprecated.  Use dji_osdk_ros-msg:DJIWaypointV2ActionActuatorAircraftControlOperationType instead.")
  (DJIWaypointV2ActionActuatorAircraftControlOperationType m))

(cl:ensure-generic-function 'waypointV2AircraftControlActuatorFlying-val :lambda-list '(m))
(cl:defmethod waypointV2AircraftControlActuatorFlying-val ((m <WaypointV2AircraftControlActuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointV2AircraftControlActuatorFlying-val is deprecated.  Use dji_osdk_ros-msg:waypointV2AircraftControlActuatorFlying instead.")
  (waypointV2AircraftControlActuatorFlying m))

(cl:ensure-generic-function 'waypointV2AircraftControlActuatorRotateHeading-val :lambda-list '(m))
(cl:defmethod waypointV2AircraftControlActuatorRotateHeading-val ((m <WaypointV2AircraftControlActuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointV2AircraftControlActuatorRotateHeading-val is deprecated.  Use dji_osdk_ros-msg:waypointV2AircraftControlActuatorRotateHeading instead.")
  (waypointV2AircraftControlActuatorRotateHeading m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointV2AircraftControlActuator>)))
    "Constants for message type '<WaypointV2AircraftControlActuator>"
  '((:DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEROTATEYAW . 1)
    (:DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEFLYINGCONTROL . 2)
    (:DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEUNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointV2AircraftControlActuator)))
    "Constants for message type 'WaypointV2AircraftControlActuator"
  '((:DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEROTATEYAW . 1)
    (:DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEFLYINGCONTROL . 2)
    (:DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEUNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2AircraftControlActuator>) ostream)
  "Serializes a message object of type '<WaypointV2AircraftControlActuator>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actuatorIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DJIWaypointV2ActionActuatorAircraftControlOperationType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DJIWaypointV2ActionActuatorAircraftControlOperationType)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypointV2AircraftControlActuatorFlying) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypointV2AircraftControlActuatorRotateHeading) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2AircraftControlActuator>) istream)
  "Deserializes a message object of type '<WaypointV2AircraftControlActuator>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actuatorIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'DJIWaypointV2ActionActuatorAircraftControlOperationType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'DJIWaypointV2ActionActuatorAircraftControlOperationType)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypointV2AircraftControlActuatorFlying) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypointV2AircraftControlActuatorRotateHeading) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2AircraftControlActuator>)))
  "Returns string type for a message object of type '<WaypointV2AircraftControlActuator>"
  "dji_osdk_ros/WaypointV2AircraftControlActuator")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2AircraftControlActuator)))
  "Returns string type for a message object of type 'WaypointV2AircraftControlActuator"
  "dji_osdk_ros/WaypointV2AircraftControlActuator")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2AircraftControlActuator>)))
  "Returns md5sum for a message object of type '<WaypointV2AircraftControlActuator>"
  "7737a1bd220f9cf26070a870330aaaa8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2AircraftControlActuator)))
  "Returns md5sum for a message object of type 'WaypointV2AircraftControlActuator"
  "7737a1bd220f9cf26070a870330aaaa8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2AircraftControlActuator>)))
  "Returns full string definition for message of type '<WaypointV2AircraftControlActuator>"
  (cl:format cl:nil "# Parameters for aircraft control actuator. It is valid only when the~%# ``DJIWaypointV2Action_DJIWaypointV2Actuator_type`` is~%# ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorType_AircraftControl``.~%#contant for DJIWaypointV2ActionActuatorAircraftControlOperationType~%# Rotates the aircraft's yaw.~%uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeRotateYaw = 1~%# Keeps the aircraft stop flying or start flying.~%uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeFlyingControl = 2~%# Unknown~%uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeUnknown = 255~%~%uint8 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related~%                      # to camera or gimbal and the connected product has multiple gimbals and cameras.~%uint16 DJIWaypointV2ActionActuatorAircraftControlOperationType ~%WaypointV2AircraftControlActuatorFlying waypointV2AircraftControlActuatorFlying~%WaypointV2AircraftControlActuatorRotateHeading waypointV2AircraftControlActuatorRotateHeading~%================================================================================~%MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorFlying~%# This class defines if the aircraft starts or stops the flight.s.~%uint8  isStartFlying  # Determines the aircraft start flying or stop flying.~%                        # ``TRUE`` for the aircraft to start flying.~%================================================================================~%MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading~%# This class defines how the aircraft rotates on the yaw axis.~%  uint8 isRelative # Determines the aircraft rotate heading relative.~%                     # if ``TRUE``, when the aircraft is rotating, relative to the current angle.~%  float32 yaw # Determines the direction how aircraft changes its heading.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2AircraftControlActuator)))
  "Returns full string definition for message of type 'WaypointV2AircraftControlActuator"
  (cl:format cl:nil "# Parameters for aircraft control actuator. It is valid only when the~%# ``DJIWaypointV2Action_DJIWaypointV2Actuator_type`` is~%# ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorType_AircraftControl``.~%#contant for DJIWaypointV2ActionActuatorAircraftControlOperationType~%# Rotates the aircraft's yaw.~%uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeRotateYaw = 1~%# Keeps the aircraft stop flying or start flying.~%uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeFlyingControl = 2~%# Unknown~%uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeUnknown = 255~%~%uint8 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related~%                      # to camera or gimbal and the connected product has multiple gimbals and cameras.~%uint16 DJIWaypointV2ActionActuatorAircraftControlOperationType ~%WaypointV2AircraftControlActuatorFlying waypointV2AircraftControlActuatorFlying~%WaypointV2AircraftControlActuatorRotateHeading waypointV2AircraftControlActuatorRotateHeading~%================================================================================~%MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorFlying~%# This class defines if the aircraft starts or stops the flight.s.~%uint8  isStartFlying  # Determines the aircraft start flying or stop flying.~%                        # ``TRUE`` for the aircraft to start flying.~%================================================================================~%MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading~%# This class defines how the aircraft rotates on the yaw axis.~%  uint8 isRelative # Determines the aircraft rotate heading relative.~%                     # if ``TRUE``, when the aircraft is rotating, relative to the current angle.~%  float32 yaw # Determines the direction how aircraft changes its heading.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2AircraftControlActuator>))
  (cl:+ 0
     1
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypointV2AircraftControlActuatorFlying))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypointV2AircraftControlActuatorRotateHeading))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2AircraftControlActuator>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2AircraftControlActuator
    (cl:cons ':actuatorIndex (actuatorIndex msg))
    (cl:cons ':DJIWaypointV2ActionActuatorAircraftControlOperationType (DJIWaypointV2ActionActuatorAircraftControlOperationType msg))
    (cl:cons ':waypointV2AircraftControlActuatorFlying (waypointV2AircraftControlActuatorFlying msg))
    (cl:cons ':waypointV2AircraftControlActuatorRotateHeading (waypointV2AircraftControlActuatorRotateHeading msg))
))
