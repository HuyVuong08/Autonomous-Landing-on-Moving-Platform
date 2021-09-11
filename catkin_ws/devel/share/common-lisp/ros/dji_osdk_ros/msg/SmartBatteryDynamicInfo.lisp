; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude SmartBatteryDynamicInfo.msg.html

(cl:defclass <SmartBatteryDynamicInfo> (roslisp-msg-protocol:ros-message)
  ((batteryIndex
    :reader batteryIndex
    :initarg :batteryIndex
    :type cl:fixnum
    :initform 0)
   (currentVoltage
    :reader currentVoltage
    :initarg :currentVoltage
    :type cl:integer
    :initform 0)
   (currentElectric
    :reader currentElectric
    :initarg :currentElectric
    :type cl:integer
    :initform 0)
   (fullCapacity
    :reader fullCapacity
    :initarg :fullCapacity
    :type cl:integer
    :initform 0)
   (remainedCapacity
    :reader remainedCapacity
    :initarg :remainedCapacity
    :type cl:integer
    :initform 0)
   (batteryTemperature
    :reader batteryTemperature
    :initarg :batteryTemperature
    :type cl:fixnum
    :initform 0)
   (cellCount
    :reader cellCount
    :initarg :cellCount
    :type cl:fixnum
    :initform 0)
   (batteryCapacityPercent
    :reader batteryCapacityPercent
    :initarg :batteryCapacityPercent
    :type cl:fixnum
    :initform 0)
   (batteryState
    :reader batteryState
    :initarg :batteryState
    :type dji_osdk_ros-msg:SmartBatteryState
    :initform (cl:make-instance 'dji_osdk_ros-msg:SmartBatteryState))
   (SOP
    :reader SOP
    :initarg :SOP
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SmartBatteryDynamicInfo (<SmartBatteryDynamicInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SmartBatteryDynamicInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SmartBatteryDynamicInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<SmartBatteryDynamicInfo> is deprecated: use dji_osdk_ros-msg:SmartBatteryDynamicInfo instead.")))

(cl:ensure-generic-function 'batteryIndex-val :lambda-list '(m))
(cl:defmethod batteryIndex-val ((m <SmartBatteryDynamicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:batteryIndex-val is deprecated.  Use dji_osdk_ros-msg:batteryIndex instead.")
  (batteryIndex m))

(cl:ensure-generic-function 'currentVoltage-val :lambda-list '(m))
(cl:defmethod currentVoltage-val ((m <SmartBatteryDynamicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:currentVoltage-val is deprecated.  Use dji_osdk_ros-msg:currentVoltage instead.")
  (currentVoltage m))

(cl:ensure-generic-function 'currentElectric-val :lambda-list '(m))
(cl:defmethod currentElectric-val ((m <SmartBatteryDynamicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:currentElectric-val is deprecated.  Use dji_osdk_ros-msg:currentElectric instead.")
  (currentElectric m))

(cl:ensure-generic-function 'fullCapacity-val :lambda-list '(m))
(cl:defmethod fullCapacity-val ((m <SmartBatteryDynamicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:fullCapacity-val is deprecated.  Use dji_osdk_ros-msg:fullCapacity instead.")
  (fullCapacity m))

(cl:ensure-generic-function 'remainedCapacity-val :lambda-list '(m))
(cl:defmethod remainedCapacity-val ((m <SmartBatteryDynamicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:remainedCapacity-val is deprecated.  Use dji_osdk_ros-msg:remainedCapacity instead.")
  (remainedCapacity m))

(cl:ensure-generic-function 'batteryTemperature-val :lambda-list '(m))
(cl:defmethod batteryTemperature-val ((m <SmartBatteryDynamicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:batteryTemperature-val is deprecated.  Use dji_osdk_ros-msg:batteryTemperature instead.")
  (batteryTemperature m))

(cl:ensure-generic-function 'cellCount-val :lambda-list '(m))
(cl:defmethod cellCount-val ((m <SmartBatteryDynamicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:cellCount-val is deprecated.  Use dji_osdk_ros-msg:cellCount instead.")
  (cellCount m))

(cl:ensure-generic-function 'batteryCapacityPercent-val :lambda-list '(m))
(cl:defmethod batteryCapacityPercent-val ((m <SmartBatteryDynamicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:batteryCapacityPercent-val is deprecated.  Use dji_osdk_ros-msg:batteryCapacityPercent instead.")
  (batteryCapacityPercent m))

(cl:ensure-generic-function 'batteryState-val :lambda-list '(m))
(cl:defmethod batteryState-val ((m <SmartBatteryDynamicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:batteryState-val is deprecated.  Use dji_osdk_ros-msg:batteryState instead.")
  (batteryState m))

(cl:ensure-generic-function 'SOP-val :lambda-list '(m))
(cl:defmethod SOP-val ((m <SmartBatteryDynamicInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:SOP-val is deprecated.  Use dji_osdk_ros-msg:SOP instead.")
  (SOP m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SmartBatteryDynamicInfo>) ostream)
  "Serializes a message object of type '<SmartBatteryDynamicInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryIndex)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'currentVoltage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'currentElectric)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fullCapacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fullCapacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fullCapacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fullCapacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remainedCapacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remainedCapacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'remainedCapacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'remainedCapacity)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'batteryTemperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cellCount)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryCapacityPercent)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'batteryState) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SOP)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SmartBatteryDynamicInfo>) istream)
  "Deserializes a message object of type '<SmartBatteryDynamicInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryIndex)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'currentVoltage) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'currentElectric) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'fullCapacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'fullCapacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'fullCapacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'fullCapacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remainedCapacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remainedCapacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'remainedCapacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'remainedCapacity)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'batteryTemperature) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cellCount)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryCapacityPercent)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'batteryState) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SOP)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SmartBatteryDynamicInfo>)))
  "Returns string type for a message object of type '<SmartBatteryDynamicInfo>"
  "dji_osdk_ros/SmartBatteryDynamicInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SmartBatteryDynamicInfo)))
  "Returns string type for a message object of type 'SmartBatteryDynamicInfo"
  "dji_osdk_ros/SmartBatteryDynamicInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SmartBatteryDynamicInfo>)))
  "Returns md5sum for a message object of type '<SmartBatteryDynamicInfo>"
  "cdcd4be856eb19722059d659610eb844")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SmartBatteryDynamicInfo)))
  "Returns md5sum for a message object of type 'SmartBatteryDynamicInfo"
  "cdcd4be856eb19722059d659610eb844")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SmartBatteryDynamicInfo>)))
  "Returns full string definition for message of type '<SmartBatteryDynamicInfo>"
  (cl:format cl:nil "uint8  batteryIndex~%int32  currentVoltage          # uint:mV~%int32  currentElectric         # uint:mA~%uint32 fullCapacity            # uint:mAh~%uint32 remainedCapacity        # uint:mAh~%int16  batteryTemperature      # uint:0.1℃~%uint8  cellCount~%uint8  batteryCapacityPercent  # uint:%~%SmartBatteryState batteryState~%uint8  SOP                     # Relative power percentage~%================================================================================~%MSG: dji_osdk_ros/SmartBatteryState~%uint8 cellBreak                  # 0:normal;other:Undervoltage core index(0x01-0x1F)~%uint8 selfCheckError             # enum-type: DJISmartBatterySelfCheck~%uint8 batteryClosedReason        # enum-type: DJI_BETTERY_CLOSED_REASON~%uint8 batSOHState                # enum-type: DJISmartBatterySohState*/~%uint8 maxCycleLimit              # APP:cycle_limit*10*/~%uint8 batteryCommunicationAbnormal~%uint8 hasCellBreak~%uint8 heatState                  # enum-type: DJISmartBatteryHeatState~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SmartBatteryDynamicInfo)))
  "Returns full string definition for message of type 'SmartBatteryDynamicInfo"
  (cl:format cl:nil "uint8  batteryIndex~%int32  currentVoltage          # uint:mV~%int32  currentElectric         # uint:mA~%uint32 fullCapacity            # uint:mAh~%uint32 remainedCapacity        # uint:mAh~%int16  batteryTemperature      # uint:0.1℃~%uint8  cellCount~%uint8  batteryCapacityPercent  # uint:%~%SmartBatteryState batteryState~%uint8  SOP                     # Relative power percentage~%================================================================================~%MSG: dji_osdk_ros/SmartBatteryState~%uint8 cellBreak                  # 0:normal;other:Undervoltage core index(0x01-0x1F)~%uint8 selfCheckError             # enum-type: DJISmartBatterySelfCheck~%uint8 batteryClosedReason        # enum-type: DJI_BETTERY_CLOSED_REASON~%uint8 batSOHState                # enum-type: DJISmartBatterySohState*/~%uint8 maxCycleLimit              # APP:cycle_limit*10*/~%uint8 batteryCommunicationAbnormal~%uint8 hasCellBreak~%uint8 heatState                  # enum-type: DJISmartBatteryHeatState~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SmartBatteryDynamicInfo>))
  (cl:+ 0
     1
     4
     4
     4
     4
     2
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'batteryState))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SmartBatteryDynamicInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SmartBatteryDynamicInfo
    (cl:cons ':batteryIndex (batteryIndex msg))
    (cl:cons ':currentVoltage (currentVoltage msg))
    (cl:cons ':currentElectric (currentElectric msg))
    (cl:cons ':fullCapacity (fullCapacity msg))
    (cl:cons ':remainedCapacity (remainedCapacity msg))
    (cl:cons ':batteryTemperature (batteryTemperature msg))
    (cl:cons ':cellCount (cellCount msg))
    (cl:cons ':batteryCapacityPercent (batteryCapacityPercent msg))
    (cl:cons ':batteryState (batteryState msg))
    (cl:cons ':SOP (SOP msg))
))
