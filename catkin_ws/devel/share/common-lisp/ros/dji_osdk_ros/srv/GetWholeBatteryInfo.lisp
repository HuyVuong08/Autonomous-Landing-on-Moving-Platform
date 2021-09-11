; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude GetWholeBatteryInfo-request.msg.html

(cl:defclass <GetWholeBatteryInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetWholeBatteryInfo-request (<GetWholeBatteryInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWholeBatteryInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWholeBatteryInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetWholeBatteryInfo-request> is deprecated: use dji_osdk_ros-srv:GetWholeBatteryInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWholeBatteryInfo-request>) ostream)
  "Serializes a message object of type '<GetWholeBatteryInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWholeBatteryInfo-request>) istream)
  "Deserializes a message object of type '<GetWholeBatteryInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWholeBatteryInfo-request>)))
  "Returns string type for a service object of type '<GetWholeBatteryInfo-request>"
  "dji_osdk_ros/GetWholeBatteryInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWholeBatteryInfo-request)))
  "Returns string type for a service object of type 'GetWholeBatteryInfo-request"
  "dji_osdk_ros/GetWholeBatteryInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWholeBatteryInfo-request>)))
  "Returns md5sum for a message object of type '<GetWholeBatteryInfo-request>"
  "a954f2c109885a4dd2f5564d3eb1433a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWholeBatteryInfo-request)))
  "Returns md5sum for a message object of type 'GetWholeBatteryInfo-request"
  "a954f2c109885a4dd2f5564d3eb1433a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWholeBatteryInfo-request>)))
  "Returns full string definition for message of type '<GetWholeBatteryInfo-request>"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWholeBatteryInfo-request)))
  "Returns full string definition for message of type 'GetWholeBatteryInfo-request"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWholeBatteryInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWholeBatteryInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWholeBatteryInfo-request
))
;//! \htmlinclude GetWholeBatteryInfo-response.msg.html

(cl:defclass <GetWholeBatteryInfo-response> (roslisp-msg-protocol:ros-message)
  ((battery_whole_info
    :reader battery_whole_info
    :initarg :battery_whole_info
    :type dji_osdk_ros-msg:BatteryWholeInfo
    :initform (cl:make-instance 'dji_osdk_ros-msg:BatteryWholeInfo)))
)

(cl:defclass GetWholeBatteryInfo-response (<GetWholeBatteryInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetWholeBatteryInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetWholeBatteryInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetWholeBatteryInfo-response> is deprecated: use dji_osdk_ros-srv:GetWholeBatteryInfo-response instead.")))

(cl:ensure-generic-function 'battery_whole_info-val :lambda-list '(m))
(cl:defmethod battery_whole_info-val ((m <GetWholeBatteryInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:battery_whole_info-val is deprecated.  Use dji_osdk_ros-srv:battery_whole_info instead.")
  (battery_whole_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetWholeBatteryInfo-response>) ostream)
  "Serializes a message object of type '<GetWholeBatteryInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'battery_whole_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetWholeBatteryInfo-response>) istream)
  "Deserializes a message object of type '<GetWholeBatteryInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'battery_whole_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetWholeBatteryInfo-response>)))
  "Returns string type for a service object of type '<GetWholeBatteryInfo-response>"
  "dji_osdk_ros/GetWholeBatteryInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWholeBatteryInfo-response)))
  "Returns string type for a service object of type 'GetWholeBatteryInfo-response"
  "dji_osdk_ros/GetWholeBatteryInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetWholeBatteryInfo-response>)))
  "Returns md5sum for a message object of type '<GetWholeBatteryInfo-response>"
  "a954f2c109885a4dd2f5564d3eb1433a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetWholeBatteryInfo-response)))
  "Returns md5sum for a message object of type 'GetWholeBatteryInfo-response"
  "a954f2c109885a4dd2f5564d3eb1433a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetWholeBatteryInfo-response>)))
  "Returns full string definition for message of type '<GetWholeBatteryInfo-response>"
  (cl:format cl:nil "#response~%BatteryWholeInfo battery_whole_info~%~%================================================================================~%MSG: dji_osdk_ros/BatteryWholeInfo~%uint16  remainFlyTime             # remain fly time(s)~%uint16  goHomeNeedTime            # Time required for the gohome flight (s)~%uint16  landNeedTime              # Time required for the land flight (s).max value:100*/~%uint16  goHomeNeedCapacity        # Capacity required for the gohome flight (%).max value:100*/~%uint16  landNeedCapacity          # Capacity required for the land flight (%).max value:100*/~%float32 safeFlyRadius             # Safe flight area radius (m)*/~%float32 capacityConsumeSpeed      # (mAh/sec)*/~%BatteryState batteryState~%uint8   goHomeCountDownState      # Countdown status of smart battery gohome~%                                   # 0/2:not in gohome state~%                                   # 1  :in gohome state~%                                   #~%uint8   gohomeCountDownvalue      # uint:s.max value:10~%uint16  voltage                   # mv~%uint8   batteryCapacityPercentage # uint:%.max value:100~%uint8   lowBatteryAlarmThreshold~%uint8   lowBatteryAlarmEnable~%uint8   seriousLowBatteryAlarmThreshold~%uint8   seriousLowBatteryAlarmEnable  ~%================================================================================~%MSG: dji_osdk_ros/BatteryState~%uint8 voltageNotSafety # Generally caused by low temperature, the battery has electricity,~%                       # but the battery voltage is too low.~%uint8 veryLowVoltageAlarm~%uint8 LowVoltageAlarm~%uint8 seriousLowCapacityAlarm~%uint8 LowCapacityAlarm~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetWholeBatteryInfo-response)))
  "Returns full string definition for message of type 'GetWholeBatteryInfo-response"
  (cl:format cl:nil "#response~%BatteryWholeInfo battery_whole_info~%~%================================================================================~%MSG: dji_osdk_ros/BatteryWholeInfo~%uint16  remainFlyTime             # remain fly time(s)~%uint16  goHomeNeedTime            # Time required for the gohome flight (s)~%uint16  landNeedTime              # Time required for the land flight (s).max value:100*/~%uint16  goHomeNeedCapacity        # Capacity required for the gohome flight (%).max value:100*/~%uint16  landNeedCapacity          # Capacity required for the land flight (%).max value:100*/~%float32 safeFlyRadius             # Safe flight area radius (m)*/~%float32 capacityConsumeSpeed      # (mAh/sec)*/~%BatteryState batteryState~%uint8   goHomeCountDownState      # Countdown status of smart battery gohome~%                                   # 0/2:not in gohome state~%                                   # 1  :in gohome state~%                                   #~%uint8   gohomeCountDownvalue      # uint:s.max value:10~%uint16  voltage                   # mv~%uint8   batteryCapacityPercentage # uint:%.max value:100~%uint8   lowBatteryAlarmThreshold~%uint8   lowBatteryAlarmEnable~%uint8   seriousLowBatteryAlarmThreshold~%uint8   seriousLowBatteryAlarmEnable  ~%================================================================================~%MSG: dji_osdk_ros/BatteryState~%uint8 voltageNotSafety # Generally caused by low temperature, the battery has electricity,~%                       # but the battery voltage is too low.~%uint8 veryLowVoltageAlarm~%uint8 LowVoltageAlarm~%uint8 seriousLowCapacityAlarm~%uint8 LowCapacityAlarm~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetWholeBatteryInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'battery_whole_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetWholeBatteryInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetWholeBatteryInfo-response
    (cl:cons ':battery_whole_info (battery_whole_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetWholeBatteryInfo)))
  'GetWholeBatteryInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetWholeBatteryInfo)))
  'GetWholeBatteryInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetWholeBatteryInfo)))
  "Returns string type for a service object of type '<GetWholeBatteryInfo>"
  "dji_osdk_ros/GetWholeBatteryInfo")