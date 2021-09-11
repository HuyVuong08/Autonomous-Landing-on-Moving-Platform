; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude SetJoystickMode-request.msg.html

(cl:defclass <SetJoystickMode-request> (roslisp-msg-protocol:ros-message)
  ((horizontal_mode
    :reader horizontal_mode
    :initarg :horizontal_mode
    :type cl:fixnum
    :initform 0)
   (vertical_mode
    :reader vertical_mode
    :initarg :vertical_mode
    :type cl:fixnum
    :initform 0)
   (yaw_mode
    :reader yaw_mode
    :initarg :yaw_mode
    :type cl:fixnum
    :initform 0)
   (horizontal_coordinate
    :reader horizontal_coordinate
    :initarg :horizontal_coordinate
    :type cl:fixnum
    :initform 0)
   (stable_mode
    :reader stable_mode
    :initarg :stable_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetJoystickMode-request (<SetJoystickMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJoystickMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJoystickMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetJoystickMode-request> is deprecated: use dji_osdk_ros-srv:SetJoystickMode-request instead.")))

(cl:ensure-generic-function 'horizontal_mode-val :lambda-list '(m))
(cl:defmethod horizontal_mode-val ((m <SetJoystickMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:horizontal_mode-val is deprecated.  Use dji_osdk_ros-srv:horizontal_mode instead.")
  (horizontal_mode m))

(cl:ensure-generic-function 'vertical_mode-val :lambda-list '(m))
(cl:defmethod vertical_mode-val ((m <SetJoystickMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:vertical_mode-val is deprecated.  Use dji_osdk_ros-srv:vertical_mode instead.")
  (vertical_mode m))

(cl:ensure-generic-function 'yaw_mode-val :lambda-list '(m))
(cl:defmethod yaw_mode-val ((m <SetJoystickMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:yaw_mode-val is deprecated.  Use dji_osdk_ros-srv:yaw_mode instead.")
  (yaw_mode m))

(cl:ensure-generic-function 'horizontal_coordinate-val :lambda-list '(m))
(cl:defmethod horizontal_coordinate-val ((m <SetJoystickMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:horizontal_coordinate-val is deprecated.  Use dji_osdk_ros-srv:horizontal_coordinate instead.")
  (horizontal_coordinate m))

(cl:ensure-generic-function 'stable_mode-val :lambda-list '(m))
(cl:defmethod stable_mode-val ((m <SetJoystickMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:stable_mode-val is deprecated.  Use dji_osdk_ros-srv:stable_mode instead.")
  (stable_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetJoystickMode-request>)))
    "Constants for message type '<SetJoystickMode-request>"
  '((:HORIZONTAL_ANGLE . 0)
    (:HORIZONTAL_VELOCITY . 1)
    (:HORIZONTAL_POSITION . 2)
    (:HORIZONTAL_ANGULAR_RATE . 3)
    (:VERTICAL_VELOCITY . 0)
    (:VERTICAL_POSITION . 1)
    (:VERTICAL_THRUST . 2)
    (:YAW_ANGLE . 0)
    (:YAW_RATE . 1)
    (:HORIZONTAL_GROUND . 0)
    (:HORIZONTAL_BODY . 1)
    (:STABLE_DISABLE . 0)
    (:STABLE_ENABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetJoystickMode-request)))
    "Constants for message type 'SetJoystickMode-request"
  '((:HORIZONTAL_ANGLE . 0)
    (:HORIZONTAL_VELOCITY . 1)
    (:HORIZONTAL_POSITION . 2)
    (:HORIZONTAL_ANGULAR_RATE . 3)
    (:VERTICAL_VELOCITY . 0)
    (:VERTICAL_POSITION . 1)
    (:VERTICAL_THRUST . 2)
    (:YAW_ANGLE . 0)
    (:YAW_RATE . 1)
    (:HORIZONTAL_GROUND . 0)
    (:HORIZONTAL_BODY . 1)
    (:STABLE_DISABLE . 0)
    (:STABLE_ENABLE . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJoystickMode-request>) ostream)
  "Serializes a message object of type '<SetJoystickMode-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horizontal_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vertical_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yaw_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horizontal_coordinate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stable_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJoystickMode-request>) istream)
  "Deserializes a message object of type '<SetJoystickMode-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horizontal_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vertical_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yaw_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horizontal_coordinate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stable_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJoystickMode-request>)))
  "Returns string type for a service object of type '<SetJoystickMode-request>"
  "dji_osdk_ros/SetJoystickModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJoystickMode-request)))
  "Returns string type for a service object of type 'SetJoystickMode-request"
  "dji_osdk_ros/SetJoystickModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJoystickMode-request>)))
  "Returns md5sum for a message object of type '<SetJoystickMode-request>"
  "c55e9c9164f1a634e9bf9721aa4cb437")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJoystickMode-request)))
  "Returns md5sum for a message object of type 'SetJoystickMode-request"
  "c55e9c9164f1a634e9bf9721aa4cb437")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJoystickMode-request>)))
  "Returns full string definition for message of type '<SetJoystickMode-request>"
  (cl:format cl:nil "#request~%#contant for horizontal_mode~%# Set the control-mode to control pitch & roll angle of the vehicle.~%# Need to be referenced to either the ground or body frame ~%# by HorizontalCoordinate setting.~%# Limit: 35 degree~%uint8 HORIZONTAL_ANGLE = 0~%# Set the control-mode to control horizontal vehicle velocities.~%# Need to be referenced to either the ground or body frame by~%# HorizontalCoordinate setting.~%# Limit: 30 m/s~%uint8 HORIZONTAL_VELOCITY = 1~%# Set the control-mode to control position offsets of pitch & roll directions~%# Need to be referenced to either the ground r body frame by HorizontalCoordinate setting.~%# Limit: N/A~%uint8 HORIZONTAL_POSITION = 2~%# Set the control-mode to control rate of change of the vehicle's attitude~%# Need to be referenced to either the ground or body frame by HorizontalCoordinate setting.~%# Limit: 150.0 deg/s~%uint8 HORIZONTAL_ANGULAR_RATE = 3~%~%#contant for vertical_mode~%# Set the control-mode to control the vertical~%# speed of UAV, upward is positive~%# Limit: -5 to 5 m/s~%uint8 VERTICAL_VELOCITY = 0~%# Set the control-mode to control the height of UAV~%# Limit: 0 to 120 m~%uint8 VERTICAL_POSITION = 1~%# Set the control-mode to directly control the thrust~%# Range: 0% to 100%~%uint8 VERTICAL_THRUST = 2~%~%#contant for yaw_mode~%# Set the control-mode to control yaw angle.~%# Yaw angle is referenced to the ground frame.~%# In this control mode, Ground frame is enforeced in Autopilot.~%uint8 YAW_ANGLE = 0~%# Set the control-mode to control yaw angular velocity.~%# Same reference frame as YAW_ANGLE.~%# Limite: 150 deg/s~%uint8 YAW_RATE = 1~%#contant for horizontal_coordinate~%# Set the x-y of ground frame as the horizontal frame (NEU) */~%uint8 HORIZONTAL_GROUND = 0~%# Set the x-y of body frame as the horizontal frame (FRU) */~%uint8 HORIZONTAL_BODY = 1~%#contant for stable_mode~%# Disable the stable mode~%uint8 STABLE_DISABLE = 0~%# Enable the stable mode~%uint8 STABLE_ENABLE = 1~%~%# Only when the GPS signal is good (health_flag >=3)，horizontal~%# position control (HORIZONTAL_POSITION) related control modes can be used.~%# Only when GPS signal is good (health_flag >=3)，or when AdvancedSensing~%# system is working properly with Autopilot，horizontal velocity control~%# （HORIZONTAL_VELOCITY）related control modes can be used.~%uint8 horizontal_mode~%~%# We suggest developers do not use VERTICAL_POSITION control mode indoor~%# when your UAV flight height is larger than 3 meters.~%# This is because in indoor environments, barometer can be inaccurate, and~%# the vertical controller may fail to keep the height of the UAV.~%uint8 vertical_mode~%uint8 yaw_mode~%uint8 horizontal_coordinate~%~%# Only works in Horizontal velocity control mode~%# In velocity stable mode, drone will brake and hover at one position once~%# the input command is zero.~%# Drone will try to stay in position once in hover state.~%# In velocity non-stable mode, drone will follow the velocity command and~%# doesn’t hover when the command is zero.~%# That’s to say drone will drift with the wind.~%uint8 stable_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJoystickMode-request)))
  "Returns full string definition for message of type 'SetJoystickMode-request"
  (cl:format cl:nil "#request~%#contant for horizontal_mode~%# Set the control-mode to control pitch & roll angle of the vehicle.~%# Need to be referenced to either the ground or body frame ~%# by HorizontalCoordinate setting.~%# Limit: 35 degree~%uint8 HORIZONTAL_ANGLE = 0~%# Set the control-mode to control horizontal vehicle velocities.~%# Need to be referenced to either the ground or body frame by~%# HorizontalCoordinate setting.~%# Limit: 30 m/s~%uint8 HORIZONTAL_VELOCITY = 1~%# Set the control-mode to control position offsets of pitch & roll directions~%# Need to be referenced to either the ground r body frame by HorizontalCoordinate setting.~%# Limit: N/A~%uint8 HORIZONTAL_POSITION = 2~%# Set the control-mode to control rate of change of the vehicle's attitude~%# Need to be referenced to either the ground or body frame by HorizontalCoordinate setting.~%# Limit: 150.0 deg/s~%uint8 HORIZONTAL_ANGULAR_RATE = 3~%~%#contant for vertical_mode~%# Set the control-mode to control the vertical~%# speed of UAV, upward is positive~%# Limit: -5 to 5 m/s~%uint8 VERTICAL_VELOCITY = 0~%# Set the control-mode to control the height of UAV~%# Limit: 0 to 120 m~%uint8 VERTICAL_POSITION = 1~%# Set the control-mode to directly control the thrust~%# Range: 0% to 100%~%uint8 VERTICAL_THRUST = 2~%~%#contant for yaw_mode~%# Set the control-mode to control yaw angle.~%# Yaw angle is referenced to the ground frame.~%# In this control mode, Ground frame is enforeced in Autopilot.~%uint8 YAW_ANGLE = 0~%# Set the control-mode to control yaw angular velocity.~%# Same reference frame as YAW_ANGLE.~%# Limite: 150 deg/s~%uint8 YAW_RATE = 1~%#contant for horizontal_coordinate~%# Set the x-y of ground frame as the horizontal frame (NEU) */~%uint8 HORIZONTAL_GROUND = 0~%# Set the x-y of body frame as the horizontal frame (FRU) */~%uint8 HORIZONTAL_BODY = 1~%#contant for stable_mode~%# Disable the stable mode~%uint8 STABLE_DISABLE = 0~%# Enable the stable mode~%uint8 STABLE_ENABLE = 1~%~%# Only when the GPS signal is good (health_flag >=3)，horizontal~%# position control (HORIZONTAL_POSITION) related control modes can be used.~%# Only when GPS signal is good (health_flag >=3)，or when AdvancedSensing~%# system is working properly with Autopilot，horizontal velocity control~%# （HORIZONTAL_VELOCITY）related control modes can be used.~%uint8 horizontal_mode~%~%# We suggest developers do not use VERTICAL_POSITION control mode indoor~%# when your UAV flight height is larger than 3 meters.~%# This is because in indoor environments, barometer can be inaccurate, and~%# the vertical controller may fail to keep the height of the UAV.~%uint8 vertical_mode~%uint8 yaw_mode~%uint8 horizontal_coordinate~%~%# Only works in Horizontal velocity control mode~%# In velocity stable mode, drone will brake and hover at one position once~%# the input command is zero.~%# Drone will try to stay in position once in hover state.~%# In velocity non-stable mode, drone will follow the velocity command and~%# doesn’t hover when the command is zero.~%# That’s to say drone will drift with the wind.~%uint8 stable_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJoystickMode-request>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJoystickMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJoystickMode-request
    (cl:cons ':horizontal_mode (horizontal_mode msg))
    (cl:cons ':vertical_mode (vertical_mode msg))
    (cl:cons ':yaw_mode (yaw_mode msg))
    (cl:cons ':horizontal_coordinate (horizontal_coordinate msg))
    (cl:cons ':stable_mode (stable_mode msg))
))
;//! \htmlinclude SetJoystickMode-response.msg.html

(cl:defclass <SetJoystickMode-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetJoystickMode-response (<SetJoystickMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJoystickMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJoystickMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetJoystickMode-response> is deprecated: use dji_osdk_ros-srv:SetJoystickMode-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetJoystickMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJoystickMode-response>) ostream)
  "Serializes a message object of type '<SetJoystickMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJoystickMode-response>) istream)
  "Deserializes a message object of type '<SetJoystickMode-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJoystickMode-response>)))
  "Returns string type for a service object of type '<SetJoystickMode-response>"
  "dji_osdk_ros/SetJoystickModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJoystickMode-response)))
  "Returns string type for a service object of type 'SetJoystickMode-response"
  "dji_osdk_ros/SetJoystickModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJoystickMode-response>)))
  "Returns md5sum for a message object of type '<SetJoystickMode-response>"
  "c55e9c9164f1a634e9bf9721aa4cb437")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJoystickMode-response)))
  "Returns md5sum for a message object of type 'SetJoystickMode-response"
  "c55e9c9164f1a634e9bf9721aa4cb437")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJoystickMode-response>)))
  "Returns full string definition for message of type '<SetJoystickMode-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJoystickMode-response)))
  "Returns full string definition for message of type 'SetJoystickMode-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJoystickMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJoystickMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJoystickMode-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJoystickMode)))
  'SetJoystickMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJoystickMode)))
  'SetJoystickMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJoystickMode)))
  "Returns string type for a service object of type '<SetJoystickMode>"
  "dji_osdk_ros/SetJoystickMode")