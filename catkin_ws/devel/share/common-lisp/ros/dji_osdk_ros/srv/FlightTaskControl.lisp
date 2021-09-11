; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude FlightTaskControl-request.msg.html

(cl:defclass <FlightTaskControl-request> (roslisp-msg-protocol:ros-message)
  ((task
    :reader task
    :initarg :task
    :type cl:fixnum
    :initform 0)
   (joystickCommand
    :reader joystickCommand
    :initarg :joystickCommand
    :type dji_osdk_ros-msg:JoystickParams
    :initform (cl:make-instance 'dji_osdk_ros-msg:JoystickParams))
   (velocityControlTimeMs
    :reader velocityControlTimeMs
    :initarg :velocityControlTimeMs
    :type cl:integer
    :initform 0)
   (posThresholdInM
    :reader posThresholdInM
    :initarg :posThresholdInM
    :type cl:float
    :initform 0.0)
   (yawThresholdInDeg
    :reader yawThresholdInDeg
    :initarg :yawThresholdInDeg
    :type cl:float
    :initform 0.0))
)

(cl:defclass FlightTaskControl-request (<FlightTaskControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlightTaskControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlightTaskControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<FlightTaskControl-request> is deprecated: use dji_osdk_ros-srv:FlightTaskControl-request instead.")))

(cl:ensure-generic-function 'task-val :lambda-list '(m))
(cl:defmethod task-val ((m <FlightTaskControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:task-val is deprecated.  Use dji_osdk_ros-srv:task instead.")
  (task m))

(cl:ensure-generic-function 'joystickCommand-val :lambda-list '(m))
(cl:defmethod joystickCommand-val ((m <FlightTaskControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:joystickCommand-val is deprecated.  Use dji_osdk_ros-srv:joystickCommand instead.")
  (joystickCommand m))

(cl:ensure-generic-function 'velocityControlTimeMs-val :lambda-list '(m))
(cl:defmethod velocityControlTimeMs-val ((m <FlightTaskControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:velocityControlTimeMs-val is deprecated.  Use dji_osdk_ros-srv:velocityControlTimeMs instead.")
  (velocityControlTimeMs m))

(cl:ensure-generic-function 'posThresholdInM-val :lambda-list '(m))
(cl:defmethod posThresholdInM-val ((m <FlightTaskControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:posThresholdInM-val is deprecated.  Use dji_osdk_ros-srv:posThresholdInM instead.")
  (posThresholdInM m))

(cl:ensure-generic-function 'yawThresholdInDeg-val :lambda-list '(m))
(cl:defmethod yawThresholdInDeg-val ((m <FlightTaskControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:yawThresholdInDeg-val is deprecated.  Use dji_osdk_ros-srv:yawThresholdInDeg instead.")
  (yawThresholdInDeg m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FlightTaskControl-request>)))
    "Constants for message type '<FlightTaskControl-request>"
  '((:TASK_GOHOME . 1)
    (:TASK_POSITION_AND_YAW_CONTROL . 2)
    (:TASK_GOHOME_AND_CONFIRM_LANDING . 3)
    (:TASK_TAKEOFF . 4)
    (:TASK_VELOCITY_AND_YAWRATE_CONTROL . 5)
    (:TASK_LAND . 6)
    (:START_MOTOR . 7)
    (:STOP_MOTOR . 8)
    (:TASK_EXIT_GO_HOME . 12)
    (:TASK_EXIT_LANDING . 14)
    (:TASK_FORCE_LANDING_AVOID_GROUND . 30)
    (:TASK_FORCE_LANDING . 31))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FlightTaskControl-request)))
    "Constants for message type 'FlightTaskControl-request"
  '((:TASK_GOHOME . 1)
    (:TASK_POSITION_AND_YAW_CONTROL . 2)
    (:TASK_GOHOME_AND_CONFIRM_LANDING . 3)
    (:TASK_TAKEOFF . 4)
    (:TASK_VELOCITY_AND_YAWRATE_CONTROL . 5)
    (:TASK_LAND . 6)
    (:START_MOTOR . 7)
    (:STOP_MOTOR . 8)
    (:TASK_EXIT_GO_HOME . 12)
    (:TASK_EXIT_LANDING . 14)
    (:TASK_FORCE_LANDING_AVOID_GROUND . 30)
    (:TASK_FORCE_LANDING . 31))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlightTaskControl-request>) ostream)
  "Serializes a message object of type '<FlightTaskControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joystickCommand) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocityControlTimeMs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'velocityControlTimeMs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'velocityControlTimeMs)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'velocityControlTimeMs)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'posThresholdInM))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yawThresholdInDeg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlightTaskControl-request>) istream)
  "Deserializes a message object of type '<FlightTaskControl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joystickCommand) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocityControlTimeMs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'velocityControlTimeMs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'velocityControlTimeMs)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'velocityControlTimeMs)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'posThresholdInM) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yawThresholdInDeg) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlightTaskControl-request>)))
  "Returns string type for a service object of type '<FlightTaskControl-request>"
  "dji_osdk_ros/FlightTaskControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlightTaskControl-request)))
  "Returns string type for a service object of type 'FlightTaskControl-request"
  "dji_osdk_ros/FlightTaskControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlightTaskControl-request>)))
  "Returns md5sum for a message object of type '<FlightTaskControl-request>"
  "6c2d7ee9a1feaa8383a6f0a485b64e2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlightTaskControl-request)))
  "Returns md5sum for a message object of type 'FlightTaskControl-request"
  "6c2d7ee9a1feaa8383a6f0a485b64e2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlightTaskControl-request>)))
  "Returns full string definition for message of type '<FlightTaskControl-request>"
  (cl:format cl:nil "#constant for tasks~%uint8 TASK_GOHOME = 1~%uint8 TASK_POSITION_AND_YAW_CONTROL   = 2~%uint8 TASK_GOHOME_AND_CONFIRM_LANDING = 3~%uint8 TASK_TAKEOFF = 4~%uint8 TASK_VELOCITY_AND_YAWRATE_CONTROL = 5~%uint8 TASK_LAND          = 6~%uint8 START_MOTOR        = 7~%uint8 STOP_MOTOR         = 8~%uint8 TASK_EXIT_GO_HOME  = 12~%uint8 TASK_EXIT_LANDING  = 14~%uint8 TASK_FORCE_LANDING_AVOID_GROUND = 30 #/*!< confirm landing */~%uint8 TASK_FORCE_LANDING              = 31 #/*!< force landing */~%~%#request~%uint8 task    # see constants above for possible tasks~%JoystickParams joystickCommand  #Provide Position and Velocity control~%uint32 velocityControlTimeMs    #Velocity control time~%float32 posThresholdInM  #(Meter)~%float32 yawThresholdInDeg  #(Degree)~%~%================================================================================~%MSG: dji_osdk_ros/JoystickParams~%float32 x   # Control with respect to the x axis of the~%            # DJI::OSDK::Control::HorizontalCoordinate.~%float32 y   # Control with respect to the y axis of the~%            # DJI::OSDK::Control::HorizontalCoordinate.~%float32 z   # Control with respect to the z axis, up is positive.~%float32 yaw #Yaw position/velocity control w.r.t. the ground frame.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlightTaskControl-request)))
  "Returns full string definition for message of type 'FlightTaskControl-request"
  (cl:format cl:nil "#constant for tasks~%uint8 TASK_GOHOME = 1~%uint8 TASK_POSITION_AND_YAW_CONTROL   = 2~%uint8 TASK_GOHOME_AND_CONFIRM_LANDING = 3~%uint8 TASK_TAKEOFF = 4~%uint8 TASK_VELOCITY_AND_YAWRATE_CONTROL = 5~%uint8 TASK_LAND          = 6~%uint8 START_MOTOR        = 7~%uint8 STOP_MOTOR         = 8~%uint8 TASK_EXIT_GO_HOME  = 12~%uint8 TASK_EXIT_LANDING  = 14~%uint8 TASK_FORCE_LANDING_AVOID_GROUND = 30 #/*!< confirm landing */~%uint8 TASK_FORCE_LANDING              = 31 #/*!< force landing */~%~%#request~%uint8 task    # see constants above for possible tasks~%JoystickParams joystickCommand  #Provide Position and Velocity control~%uint32 velocityControlTimeMs    #Velocity control time~%float32 posThresholdInM  #(Meter)~%float32 yawThresholdInDeg  #(Degree)~%~%================================================================================~%MSG: dji_osdk_ros/JoystickParams~%float32 x   # Control with respect to the x axis of the~%            # DJI::OSDK::Control::HorizontalCoordinate.~%float32 y   # Control with respect to the y axis of the~%            # DJI::OSDK::Control::HorizontalCoordinate.~%float32 z   # Control with respect to the z axis, up is positive.~%float32 yaw #Yaw position/velocity control w.r.t. the ground frame.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlightTaskControl-request>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joystickCommand))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlightTaskControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FlightTaskControl-request
    (cl:cons ':task (task msg))
    (cl:cons ':joystickCommand (joystickCommand msg))
    (cl:cons ':velocityControlTimeMs (velocityControlTimeMs msg))
    (cl:cons ':posThresholdInM (posThresholdInM msg))
    (cl:cons ':yawThresholdInDeg (yawThresholdInDeg msg))
))
;//! \htmlinclude FlightTaskControl-response.msg.html

(cl:defclass <FlightTaskControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FlightTaskControl-response (<FlightTaskControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlightTaskControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlightTaskControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<FlightTaskControl-response> is deprecated: use dji_osdk_ros-srv:FlightTaskControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <FlightTaskControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlightTaskControl-response>) ostream)
  "Serializes a message object of type '<FlightTaskControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlightTaskControl-response>) istream)
  "Deserializes a message object of type '<FlightTaskControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlightTaskControl-response>)))
  "Returns string type for a service object of type '<FlightTaskControl-response>"
  "dji_osdk_ros/FlightTaskControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlightTaskControl-response)))
  "Returns string type for a service object of type 'FlightTaskControl-response"
  "dji_osdk_ros/FlightTaskControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlightTaskControl-response>)))
  "Returns md5sum for a message object of type '<FlightTaskControl-response>"
  "6c2d7ee9a1feaa8383a6f0a485b64e2a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlightTaskControl-response)))
  "Returns md5sum for a message object of type 'FlightTaskControl-response"
  "6c2d7ee9a1feaa8383a6f0a485b64e2a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlightTaskControl-response>)))
  "Returns full string definition for message of type '<FlightTaskControl-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlightTaskControl-response)))
  "Returns full string definition for message of type 'FlightTaskControl-response"
  (cl:format cl:nil "#response~%bool result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlightTaskControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlightTaskControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FlightTaskControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FlightTaskControl)))
  'FlightTaskControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FlightTaskControl)))
  'FlightTaskControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlightTaskControl)))
  "Returns string type for a service object of type '<FlightTaskControl>"
  "dji_osdk_ros/FlightTaskControl")