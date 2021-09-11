; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude BatteryWholeInfo.msg.html

(cl:defclass <BatteryWholeInfo> (roslisp-msg-protocol:ros-message)
  ((remainFlyTime
    :reader remainFlyTime
    :initarg :remainFlyTime
    :type cl:fixnum
    :initform 0)
   (goHomeNeedTime
    :reader goHomeNeedTime
    :initarg :goHomeNeedTime
    :type cl:fixnum
    :initform 0)
   (landNeedTime
    :reader landNeedTime
    :initarg :landNeedTime
    :type cl:fixnum
    :initform 0)
   (goHomeNeedCapacity
    :reader goHomeNeedCapacity
    :initarg :goHomeNeedCapacity
    :type cl:fixnum
    :initform 0)
   (landNeedCapacity
    :reader landNeedCapacity
    :initarg :landNeedCapacity
    :type cl:fixnum
    :initform 0)
   (safeFlyRadius
    :reader safeFlyRadius
    :initarg :safeFlyRadius
    :type cl:float
    :initform 0.0)
   (capacityConsumeSpeed
    :reader capacityConsumeSpeed
    :initarg :capacityConsumeSpeed
    :type cl:float
    :initform 0.0)
   (batteryState
    :reader batteryState
    :initarg :batteryState
    :type dji_osdk_ros-msg:BatteryState
    :initform (cl:make-instance 'dji_osdk_ros-msg:BatteryState))
   (goHomeCountDownState
    :reader goHomeCountDownState
    :initarg :goHomeCountDownState
    :type cl:fixnum
    :initform 0)
   (gohomeCountDownvalue
    :reader gohomeCountDownvalue
    :initarg :gohomeCountDownvalue
    :type cl:fixnum
    :initform 0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:fixnum
    :initform 0)
   (batteryCapacityPercentage
    :reader batteryCapacityPercentage
    :initarg :batteryCapacityPercentage
    :type cl:fixnum
    :initform 0)
   (lowBatteryAlarmThreshold
    :reader lowBatteryAlarmThreshold
    :initarg :lowBatteryAlarmThreshold
    :type cl:fixnum
    :initform 0)
   (lowBatteryAlarmEnable
    :reader lowBatteryAlarmEnable
    :initarg :lowBatteryAlarmEnable
    :type cl:fixnum
    :initform 0)
   (seriousLowBatteryAlarmThreshold
    :reader seriousLowBatteryAlarmThreshold
    :initarg :seriousLowBatteryAlarmThreshold
    :type cl:fixnum
    :initform 0)
   (seriousLowBatteryAlarmEnable
    :reader seriousLowBatteryAlarmEnable
    :initarg :seriousLowBatteryAlarmEnable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BatteryWholeInfo (<BatteryWholeInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryWholeInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryWholeInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<BatteryWholeInfo> is deprecated: use dji_osdk_ros-msg:BatteryWholeInfo instead.")))

(cl:ensure-generic-function 'remainFlyTime-val :lambda-list '(m))
(cl:defmethod remainFlyTime-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:remainFlyTime-val is deprecated.  Use dji_osdk_ros-msg:remainFlyTime instead.")
  (remainFlyTime m))

(cl:ensure-generic-function 'goHomeNeedTime-val :lambda-list '(m))
(cl:defmethod goHomeNeedTime-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:goHomeNeedTime-val is deprecated.  Use dji_osdk_ros-msg:goHomeNeedTime instead.")
  (goHomeNeedTime m))

(cl:ensure-generic-function 'landNeedTime-val :lambda-list '(m))
(cl:defmethod landNeedTime-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:landNeedTime-val is deprecated.  Use dji_osdk_ros-msg:landNeedTime instead.")
  (landNeedTime m))

(cl:ensure-generic-function 'goHomeNeedCapacity-val :lambda-list '(m))
(cl:defmethod goHomeNeedCapacity-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:goHomeNeedCapacity-val is deprecated.  Use dji_osdk_ros-msg:goHomeNeedCapacity instead.")
  (goHomeNeedCapacity m))

(cl:ensure-generic-function 'landNeedCapacity-val :lambda-list '(m))
(cl:defmethod landNeedCapacity-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:landNeedCapacity-val is deprecated.  Use dji_osdk_ros-msg:landNeedCapacity instead.")
  (landNeedCapacity m))

(cl:ensure-generic-function 'safeFlyRadius-val :lambda-list '(m))
(cl:defmethod safeFlyRadius-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:safeFlyRadius-val is deprecated.  Use dji_osdk_ros-msg:safeFlyRadius instead.")
  (safeFlyRadius m))

(cl:ensure-generic-function 'capacityConsumeSpeed-val :lambda-list '(m))
(cl:defmethod capacityConsumeSpeed-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:capacityConsumeSpeed-val is deprecated.  Use dji_osdk_ros-msg:capacityConsumeSpeed instead.")
  (capacityConsumeSpeed m))

(cl:ensure-generic-function 'batteryState-val :lambda-list '(m))
(cl:defmethod batteryState-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:batteryState-val is deprecated.  Use dji_osdk_ros-msg:batteryState instead.")
  (batteryState m))

(cl:ensure-generic-function 'goHomeCountDownState-val :lambda-list '(m))
(cl:defmethod goHomeCountDownState-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:goHomeCountDownState-val is deprecated.  Use dji_osdk_ros-msg:goHomeCountDownState instead.")
  (goHomeCountDownState m))

(cl:ensure-generic-function 'gohomeCountDownvalue-val :lambda-list '(m))
(cl:defmethod gohomeCountDownvalue-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:gohomeCountDownvalue-val is deprecated.  Use dji_osdk_ros-msg:gohomeCountDownvalue instead.")
  (gohomeCountDownvalue m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:voltage-val is deprecated.  Use dji_osdk_ros-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'batteryCapacityPercentage-val :lambda-list '(m))
(cl:defmethod batteryCapacityPercentage-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:batteryCapacityPercentage-val is deprecated.  Use dji_osdk_ros-msg:batteryCapacityPercentage instead.")
  (batteryCapacityPercentage m))

(cl:ensure-generic-function 'lowBatteryAlarmThreshold-val :lambda-list '(m))
(cl:defmethod lowBatteryAlarmThreshold-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:lowBatteryAlarmThreshold-val is deprecated.  Use dji_osdk_ros-msg:lowBatteryAlarmThreshold instead.")
  (lowBatteryAlarmThreshold m))

(cl:ensure-generic-function 'lowBatteryAlarmEnable-val :lambda-list '(m))
(cl:defmethod lowBatteryAlarmEnable-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:lowBatteryAlarmEnable-val is deprecated.  Use dji_osdk_ros-msg:lowBatteryAlarmEnable instead.")
  (lowBatteryAlarmEnable m))

(cl:ensure-generic-function 'seriousLowBatteryAlarmThreshold-val :lambda-list '(m))
(cl:defmethod seriousLowBatteryAlarmThreshold-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:seriousLowBatteryAlarmThreshold-val is deprecated.  Use dji_osdk_ros-msg:seriousLowBatteryAlarmThreshold instead.")
  (seriousLowBatteryAlarmThreshold m))

(cl:ensure-generic-function 'seriousLowBatteryAlarmEnable-val :lambda-list '(m))
(cl:defmethod seriousLowBatteryAlarmEnable-val ((m <BatteryWholeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:seriousLowBatteryAlarmEnable-val is deprecated.  Use dji_osdk_ros-msg:seriousLowBatteryAlarmEnable instead.")
  (seriousLowBatteryAlarmEnable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryWholeInfo>) ostream)
  "Serializes a message object of type '<BatteryWholeInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remainFlyTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remainFlyTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goHomeNeedTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goHomeNeedTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'landNeedTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'landNeedTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goHomeNeedCapacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goHomeNeedCapacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'landNeedCapacity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'landNeedCapacity)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'safeFlyRadius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'capacityConsumeSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'batteryState) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goHomeCountDownState)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gohomeCountDownvalue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryCapacityPercentage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lowBatteryAlarmThreshold)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lowBatteryAlarmEnable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seriousLowBatteryAlarmThreshold)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seriousLowBatteryAlarmEnable)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryWholeInfo>) istream)
  "Deserializes a message object of type '<BatteryWholeInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remainFlyTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remainFlyTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goHomeNeedTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goHomeNeedTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'landNeedTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'landNeedTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goHomeNeedCapacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'goHomeNeedCapacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'landNeedCapacity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'landNeedCapacity)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'safeFlyRadius) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'capacityConsumeSpeed) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'batteryState) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'goHomeCountDownState)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gohomeCountDownvalue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryCapacityPercentage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lowBatteryAlarmThreshold)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lowBatteryAlarmEnable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seriousLowBatteryAlarmThreshold)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seriousLowBatteryAlarmEnable)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryWholeInfo>)))
  "Returns string type for a message object of type '<BatteryWholeInfo>"
  "dji_osdk_ros/BatteryWholeInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryWholeInfo)))
  "Returns string type for a message object of type 'BatteryWholeInfo"
  "dji_osdk_ros/BatteryWholeInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryWholeInfo>)))
  "Returns md5sum for a message object of type '<BatteryWholeInfo>"
  "7e822abf802642ce971495ff2b95946b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryWholeInfo)))
  "Returns md5sum for a message object of type 'BatteryWholeInfo"
  "7e822abf802642ce971495ff2b95946b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryWholeInfo>)))
  "Returns full string definition for message of type '<BatteryWholeInfo>"
  (cl:format cl:nil "uint16  remainFlyTime             # remain fly time(s)~%uint16  goHomeNeedTime            # Time required for the gohome flight (s)~%uint16  landNeedTime              # Time required for the land flight (s).max value:100*/~%uint16  goHomeNeedCapacity        # Capacity required for the gohome flight (%).max value:100*/~%uint16  landNeedCapacity          # Capacity required for the land flight (%).max value:100*/~%float32 safeFlyRadius             # Safe flight area radius (m)*/~%float32 capacityConsumeSpeed      # (mAh/sec)*/~%BatteryState batteryState~%uint8   goHomeCountDownState      # Countdown status of smart battery gohome~%                                   # 0/2:not in gohome state~%                                   # 1  :in gohome state~%                                   #~%uint8   gohomeCountDownvalue      # uint:s.max value:10~%uint16  voltage                   # mv~%uint8   batteryCapacityPercentage # uint:%.max value:100~%uint8   lowBatteryAlarmThreshold~%uint8   lowBatteryAlarmEnable~%uint8   seriousLowBatteryAlarmThreshold~%uint8   seriousLowBatteryAlarmEnable  ~%================================================================================~%MSG: dji_osdk_ros/BatteryState~%uint8 voltageNotSafety # Generally caused by low temperature, the battery has electricity,~%                       # but the battery voltage is too low.~%uint8 veryLowVoltageAlarm~%uint8 LowVoltageAlarm~%uint8 seriousLowCapacityAlarm~%uint8 LowCapacityAlarm~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryWholeInfo)))
  "Returns full string definition for message of type 'BatteryWholeInfo"
  (cl:format cl:nil "uint16  remainFlyTime             # remain fly time(s)~%uint16  goHomeNeedTime            # Time required for the gohome flight (s)~%uint16  landNeedTime              # Time required for the land flight (s).max value:100*/~%uint16  goHomeNeedCapacity        # Capacity required for the gohome flight (%).max value:100*/~%uint16  landNeedCapacity          # Capacity required for the land flight (%).max value:100*/~%float32 safeFlyRadius             # Safe flight area radius (m)*/~%float32 capacityConsumeSpeed      # (mAh/sec)*/~%BatteryState batteryState~%uint8   goHomeCountDownState      # Countdown status of smart battery gohome~%                                   # 0/2:not in gohome state~%                                   # 1  :in gohome state~%                                   #~%uint8   gohomeCountDownvalue      # uint:s.max value:10~%uint16  voltage                   # mv~%uint8   batteryCapacityPercentage # uint:%.max value:100~%uint8   lowBatteryAlarmThreshold~%uint8   lowBatteryAlarmEnable~%uint8   seriousLowBatteryAlarmThreshold~%uint8   seriousLowBatteryAlarmEnable  ~%================================================================================~%MSG: dji_osdk_ros/BatteryState~%uint8 voltageNotSafety # Generally caused by low temperature, the battery has electricity,~%                       # but the battery voltage is too low.~%uint8 veryLowVoltageAlarm~%uint8 LowVoltageAlarm~%uint8 seriousLowCapacityAlarm~%uint8 LowCapacityAlarm~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryWholeInfo>))
  (cl:+ 0
     2
     2
     2
     2
     2
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'batteryState))
     1
     1
     2
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryWholeInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryWholeInfo
    (cl:cons ':remainFlyTime (remainFlyTime msg))
    (cl:cons ':goHomeNeedTime (goHomeNeedTime msg))
    (cl:cons ':landNeedTime (landNeedTime msg))
    (cl:cons ':goHomeNeedCapacity (goHomeNeedCapacity msg))
    (cl:cons ':landNeedCapacity (landNeedCapacity msg))
    (cl:cons ':safeFlyRadius (safeFlyRadius msg))
    (cl:cons ':capacityConsumeSpeed (capacityConsumeSpeed msg))
    (cl:cons ':batteryState (batteryState msg))
    (cl:cons ':goHomeCountDownState (goHomeCountDownState msg))
    (cl:cons ':gohomeCountDownvalue (gohomeCountDownvalue msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':batteryCapacityPercentage (batteryCapacityPercentage msg))
    (cl:cons ':lowBatteryAlarmThreshold (lowBatteryAlarmThreshold msg))
    (cl:cons ':lowBatteryAlarmEnable (lowBatteryAlarmEnable msg))
    (cl:cons ':seriousLowBatteryAlarmThreshold (seriousLowBatteryAlarmThreshold msg))
    (cl:cons ':seriousLowBatteryAlarmEnable (seriousLowBatteryAlarmEnable msg))
))
