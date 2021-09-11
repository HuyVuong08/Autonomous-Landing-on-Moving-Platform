; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude BatteryState.msg.html

(cl:defclass <BatteryState> (roslisp-msg-protocol:ros-message)
  ((voltageNotSafety
    :reader voltageNotSafety
    :initarg :voltageNotSafety
    :type cl:fixnum
    :initform 0)
   (veryLowVoltageAlarm
    :reader veryLowVoltageAlarm
    :initarg :veryLowVoltageAlarm
    :type cl:fixnum
    :initform 0)
   (LowVoltageAlarm
    :reader LowVoltageAlarm
    :initarg :LowVoltageAlarm
    :type cl:fixnum
    :initform 0)
   (seriousLowCapacityAlarm
    :reader seriousLowCapacityAlarm
    :initarg :seriousLowCapacityAlarm
    :type cl:fixnum
    :initform 0)
   (LowCapacityAlarm
    :reader LowCapacityAlarm
    :initarg :LowCapacityAlarm
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BatteryState (<BatteryState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<BatteryState> is deprecated: use dji_osdk_ros-msg:BatteryState instead.")))

(cl:ensure-generic-function 'voltageNotSafety-val :lambda-list '(m))
(cl:defmethod voltageNotSafety-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:voltageNotSafety-val is deprecated.  Use dji_osdk_ros-msg:voltageNotSafety instead.")
  (voltageNotSafety m))

(cl:ensure-generic-function 'veryLowVoltageAlarm-val :lambda-list '(m))
(cl:defmethod veryLowVoltageAlarm-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:veryLowVoltageAlarm-val is deprecated.  Use dji_osdk_ros-msg:veryLowVoltageAlarm instead.")
  (veryLowVoltageAlarm m))

(cl:ensure-generic-function 'LowVoltageAlarm-val :lambda-list '(m))
(cl:defmethod LowVoltageAlarm-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:LowVoltageAlarm-val is deprecated.  Use dji_osdk_ros-msg:LowVoltageAlarm instead.")
  (LowVoltageAlarm m))

(cl:ensure-generic-function 'seriousLowCapacityAlarm-val :lambda-list '(m))
(cl:defmethod seriousLowCapacityAlarm-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:seriousLowCapacityAlarm-val is deprecated.  Use dji_osdk_ros-msg:seriousLowCapacityAlarm instead.")
  (seriousLowCapacityAlarm m))

(cl:ensure-generic-function 'LowCapacityAlarm-val :lambda-list '(m))
(cl:defmethod LowCapacityAlarm-val ((m <BatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:LowCapacityAlarm-val is deprecated.  Use dji_osdk_ros-msg:LowCapacityAlarm instead.")
  (LowCapacityAlarm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryState>) ostream)
  "Serializes a message object of type '<BatteryState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltageNotSafety)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'veryLowVoltageAlarm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LowVoltageAlarm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seriousLowCapacityAlarm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LowCapacityAlarm)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryState>) istream)
  "Deserializes a message object of type '<BatteryState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltageNotSafety)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'veryLowVoltageAlarm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LowVoltageAlarm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seriousLowCapacityAlarm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LowCapacityAlarm)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryState>)))
  "Returns string type for a message object of type '<BatteryState>"
  "dji_osdk_ros/BatteryState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryState)))
  "Returns string type for a message object of type 'BatteryState"
  "dji_osdk_ros/BatteryState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryState>)))
  "Returns md5sum for a message object of type '<BatteryState>"
  "5243c6a8356e946f828c69a991da7334")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryState)))
  "Returns md5sum for a message object of type 'BatteryState"
  "5243c6a8356e946f828c69a991da7334")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryState>)))
  "Returns full string definition for message of type '<BatteryState>"
  (cl:format cl:nil "uint8 voltageNotSafety # Generally caused by low temperature, the battery has electricity,~%                       # but the battery voltage is too low.~%uint8 veryLowVoltageAlarm~%uint8 LowVoltageAlarm~%uint8 seriousLowCapacityAlarm~%uint8 LowCapacityAlarm~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryState)))
  "Returns full string definition for message of type 'BatteryState"
  (cl:format cl:nil "uint8 voltageNotSafety # Generally caused by low temperature, the battery has electricity,~%                       # but the battery voltage is too low.~%uint8 veryLowVoltageAlarm~%uint8 LowVoltageAlarm~%uint8 seriousLowCapacityAlarm~%uint8 LowCapacityAlarm~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryState>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryState>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryState
    (cl:cons ':voltageNotSafety (voltageNotSafety msg))
    (cl:cons ':veryLowVoltageAlarm (veryLowVoltageAlarm msg))
    (cl:cons ':LowVoltageAlarm (LowVoltageAlarm msg))
    (cl:cons ':seriousLowCapacityAlarm (seriousLowCapacityAlarm msg))
    (cl:cons ':LowCapacityAlarm (LowCapacityAlarm msg))
))
