; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude SmartBatteryState.msg.html

(cl:defclass <SmartBatteryState> (roslisp-msg-protocol:ros-message)
  ((cellBreak
    :reader cellBreak
    :initarg :cellBreak
    :type cl:fixnum
    :initform 0)
   (selfCheckError
    :reader selfCheckError
    :initarg :selfCheckError
    :type cl:fixnum
    :initform 0)
   (batteryClosedReason
    :reader batteryClosedReason
    :initarg :batteryClosedReason
    :type cl:fixnum
    :initform 0)
   (batSOHState
    :reader batSOHState
    :initarg :batSOHState
    :type cl:fixnum
    :initform 0)
   (maxCycleLimit
    :reader maxCycleLimit
    :initarg :maxCycleLimit
    :type cl:fixnum
    :initform 0)
   (batteryCommunicationAbnormal
    :reader batteryCommunicationAbnormal
    :initarg :batteryCommunicationAbnormal
    :type cl:fixnum
    :initform 0)
   (hasCellBreak
    :reader hasCellBreak
    :initarg :hasCellBreak
    :type cl:fixnum
    :initform 0)
   (heatState
    :reader heatState
    :initarg :heatState
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SmartBatteryState (<SmartBatteryState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SmartBatteryState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SmartBatteryState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<SmartBatteryState> is deprecated: use dji_osdk_ros-msg:SmartBatteryState instead.")))

(cl:ensure-generic-function 'cellBreak-val :lambda-list '(m))
(cl:defmethod cellBreak-val ((m <SmartBatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:cellBreak-val is deprecated.  Use dji_osdk_ros-msg:cellBreak instead.")
  (cellBreak m))

(cl:ensure-generic-function 'selfCheckError-val :lambda-list '(m))
(cl:defmethod selfCheckError-val ((m <SmartBatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:selfCheckError-val is deprecated.  Use dji_osdk_ros-msg:selfCheckError instead.")
  (selfCheckError m))

(cl:ensure-generic-function 'batteryClosedReason-val :lambda-list '(m))
(cl:defmethod batteryClosedReason-val ((m <SmartBatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:batteryClosedReason-val is deprecated.  Use dji_osdk_ros-msg:batteryClosedReason instead.")
  (batteryClosedReason m))

(cl:ensure-generic-function 'batSOHState-val :lambda-list '(m))
(cl:defmethod batSOHState-val ((m <SmartBatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:batSOHState-val is deprecated.  Use dji_osdk_ros-msg:batSOHState instead.")
  (batSOHState m))

(cl:ensure-generic-function 'maxCycleLimit-val :lambda-list '(m))
(cl:defmethod maxCycleLimit-val ((m <SmartBatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:maxCycleLimit-val is deprecated.  Use dji_osdk_ros-msg:maxCycleLimit instead.")
  (maxCycleLimit m))

(cl:ensure-generic-function 'batteryCommunicationAbnormal-val :lambda-list '(m))
(cl:defmethod batteryCommunicationAbnormal-val ((m <SmartBatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:batteryCommunicationAbnormal-val is deprecated.  Use dji_osdk_ros-msg:batteryCommunicationAbnormal instead.")
  (batteryCommunicationAbnormal m))

(cl:ensure-generic-function 'hasCellBreak-val :lambda-list '(m))
(cl:defmethod hasCellBreak-val ((m <SmartBatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:hasCellBreak-val is deprecated.  Use dji_osdk_ros-msg:hasCellBreak instead.")
  (hasCellBreak m))

(cl:ensure-generic-function 'heatState-val :lambda-list '(m))
(cl:defmethod heatState-val ((m <SmartBatteryState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:heatState-val is deprecated.  Use dji_osdk_ros-msg:heatState instead.")
  (heatState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SmartBatteryState>) ostream)
  "Serializes a message object of type '<SmartBatteryState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cellBreak)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'selfCheckError)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryClosedReason)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batSOHState)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxCycleLimit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryCommunicationAbnormal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hasCellBreak)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'heatState)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SmartBatteryState>) istream)
  "Deserializes a message object of type '<SmartBatteryState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cellBreak)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'selfCheckError)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryClosedReason)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batSOHState)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'maxCycleLimit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryCommunicationAbnormal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hasCellBreak)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'heatState)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SmartBatteryState>)))
  "Returns string type for a message object of type '<SmartBatteryState>"
  "dji_osdk_ros/SmartBatteryState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SmartBatteryState)))
  "Returns string type for a message object of type 'SmartBatteryState"
  "dji_osdk_ros/SmartBatteryState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SmartBatteryState>)))
  "Returns md5sum for a message object of type '<SmartBatteryState>"
  "2a0ddaf2e9bc1f4b0e5e1567435f698e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SmartBatteryState)))
  "Returns md5sum for a message object of type 'SmartBatteryState"
  "2a0ddaf2e9bc1f4b0e5e1567435f698e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SmartBatteryState>)))
  "Returns full string definition for message of type '<SmartBatteryState>"
  (cl:format cl:nil "uint8 cellBreak                  # 0:normal;other:Undervoltage core index(0x01-0x1F)~%uint8 selfCheckError             # enum-type: DJISmartBatterySelfCheck~%uint8 batteryClosedReason        # enum-type: DJI_BETTERY_CLOSED_REASON~%uint8 batSOHState                # enum-type: DJISmartBatterySohState*/~%uint8 maxCycleLimit              # APP:cycle_limit*10*/~%uint8 batteryCommunicationAbnormal~%uint8 hasCellBreak~%uint8 heatState                  # enum-type: DJISmartBatteryHeatState~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SmartBatteryState)))
  "Returns full string definition for message of type 'SmartBatteryState"
  (cl:format cl:nil "uint8 cellBreak                  # 0:normal;other:Undervoltage core index(0x01-0x1F)~%uint8 selfCheckError             # enum-type: DJISmartBatterySelfCheck~%uint8 batteryClosedReason        # enum-type: DJI_BETTERY_CLOSED_REASON~%uint8 batSOHState                # enum-type: DJISmartBatterySohState*/~%uint8 maxCycleLimit              # APP:cycle_limit*10*/~%uint8 batteryCommunicationAbnormal~%uint8 hasCellBreak~%uint8 heatState                  # enum-type: DJISmartBatteryHeatState~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SmartBatteryState>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SmartBatteryState>))
  "Converts a ROS message object to a list"
  (cl:list 'SmartBatteryState
    (cl:cons ':cellBreak (cellBreak msg))
    (cl:cons ':selfCheckError (selfCheckError msg))
    (cl:cons ':batteryClosedReason (batteryClosedReason msg))
    (cl:cons ':batSOHState (batSOHState msg))
    (cl:cons ':maxCycleLimit (maxCycleLimit msg))
    (cl:cons ':batteryCommunicationAbnormal (batteryCommunicationAbnormal msg))
    (cl:cons ':hasCellBreak (hasCellBreak msg))
    (cl:cons ':heatState (heatState msg))
))
