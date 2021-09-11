; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude GetSingleBatteryDynamicInfo-request.msg.html

(cl:defclass <GetSingleBatteryDynamicInfo-request> (roslisp-msg-protocol:ros-message)
  ((batteryIndex
    :reader batteryIndex
    :initarg :batteryIndex
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetSingleBatteryDynamicInfo-request (<GetSingleBatteryDynamicInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSingleBatteryDynamicInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSingleBatteryDynamicInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetSingleBatteryDynamicInfo-request> is deprecated: use dji_osdk_ros-srv:GetSingleBatteryDynamicInfo-request instead.")))

(cl:ensure-generic-function 'batteryIndex-val :lambda-list '(m))
(cl:defmethod batteryIndex-val ((m <GetSingleBatteryDynamicInfo-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:batteryIndex-val is deprecated.  Use dji_osdk_ros-srv:batteryIndex instead.")
  (batteryIndex m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GetSingleBatteryDynamicInfo-request>)))
    "Constants for message type '<GetSingleBatteryDynamicInfo-request>"
  '((:FIRST_SMART_BATTERY . 1)
    (:SECOND_SMART_BATTERY . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GetSingleBatteryDynamicInfo-request)))
    "Constants for message type 'GetSingleBatteryDynamicInfo-request"
  '((:FIRST_SMART_BATTERY . 1)
    (:SECOND_SMART_BATTERY . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSingleBatteryDynamicInfo-request>) ostream)
  "Serializes a message object of type '<GetSingleBatteryDynamicInfo-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryIndex)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSingleBatteryDynamicInfo-request>) istream)
  "Deserializes a message object of type '<GetSingleBatteryDynamicInfo-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'batteryIndex)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSingleBatteryDynamicInfo-request>)))
  "Returns string type for a service object of type '<GetSingleBatteryDynamicInfo-request>"
  "dji_osdk_ros/GetSingleBatteryDynamicInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSingleBatteryDynamicInfo-request)))
  "Returns string type for a service object of type 'GetSingleBatteryDynamicInfo-request"
  "dji_osdk_ros/GetSingleBatteryDynamicInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSingleBatteryDynamicInfo-request>)))
  "Returns md5sum for a message object of type '<GetSingleBatteryDynamicInfo-request>"
  "e5d629fb1dec6d80fbc10fc0bfd54348")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSingleBatteryDynamicInfo-request)))
  "Returns md5sum for a message object of type 'GetSingleBatteryDynamicInfo-request"
  "e5d629fb1dec6d80fbc10fc0bfd54348")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSingleBatteryDynamicInfo-request>)))
  "Returns full string definition for message of type '<GetSingleBatteryDynamicInfo-request>"
  (cl:format cl:nil "#request~%uint8 first_smart_battery = 1~%uint8 second_smart_battery = 2~%~%uint8 batteryIndex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSingleBatteryDynamicInfo-request)))
  "Returns full string definition for message of type 'GetSingleBatteryDynamicInfo-request"
  (cl:format cl:nil "#request~%uint8 first_smart_battery = 1~%uint8 second_smart_battery = 2~%~%uint8 batteryIndex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSingleBatteryDynamicInfo-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSingleBatteryDynamicInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSingleBatteryDynamicInfo-request
    (cl:cons ':batteryIndex (batteryIndex msg))
))
;//! \htmlinclude GetSingleBatteryDynamicInfo-response.msg.html

(cl:defclass <GetSingleBatteryDynamicInfo-response> (roslisp-msg-protocol:ros-message)
  ((smartBatteryDynamicInfo
    :reader smartBatteryDynamicInfo
    :initarg :smartBatteryDynamicInfo
    :type dji_osdk_ros-msg:SmartBatteryDynamicInfo
    :initform (cl:make-instance 'dji_osdk_ros-msg:SmartBatteryDynamicInfo)))
)

(cl:defclass GetSingleBatteryDynamicInfo-response (<GetSingleBatteryDynamicInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetSingleBatteryDynamicInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetSingleBatteryDynamicInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetSingleBatteryDynamicInfo-response> is deprecated: use dji_osdk_ros-srv:GetSingleBatteryDynamicInfo-response instead.")))

(cl:ensure-generic-function 'smartBatteryDynamicInfo-val :lambda-list '(m))
(cl:defmethod smartBatteryDynamicInfo-val ((m <GetSingleBatteryDynamicInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:smartBatteryDynamicInfo-val is deprecated.  Use dji_osdk_ros-srv:smartBatteryDynamicInfo instead.")
  (smartBatteryDynamicInfo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetSingleBatteryDynamicInfo-response>) ostream)
  "Serializes a message object of type '<GetSingleBatteryDynamicInfo-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'smartBatteryDynamicInfo) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetSingleBatteryDynamicInfo-response>) istream)
  "Deserializes a message object of type '<GetSingleBatteryDynamicInfo-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'smartBatteryDynamicInfo) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetSingleBatteryDynamicInfo-response>)))
  "Returns string type for a service object of type '<GetSingleBatteryDynamicInfo-response>"
  "dji_osdk_ros/GetSingleBatteryDynamicInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSingleBatteryDynamicInfo-response)))
  "Returns string type for a service object of type 'GetSingleBatteryDynamicInfo-response"
  "dji_osdk_ros/GetSingleBatteryDynamicInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetSingleBatteryDynamicInfo-response>)))
  "Returns md5sum for a message object of type '<GetSingleBatteryDynamicInfo-response>"
  "e5d629fb1dec6d80fbc10fc0bfd54348")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetSingleBatteryDynamicInfo-response)))
  "Returns md5sum for a message object of type 'GetSingleBatteryDynamicInfo-response"
  "e5d629fb1dec6d80fbc10fc0bfd54348")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetSingleBatteryDynamicInfo-response>)))
  "Returns full string definition for message of type '<GetSingleBatteryDynamicInfo-response>"
  (cl:format cl:nil "#response~%SmartBatteryDynamicInfo smartBatteryDynamicInfo~%~%================================================================================~%MSG: dji_osdk_ros/SmartBatteryDynamicInfo~%uint8  batteryIndex~%int32  currentVoltage          # uint:mV~%int32  currentElectric         # uint:mA~%uint32 fullCapacity            # uint:mAh~%uint32 remainedCapacity        # uint:mAh~%int16  batteryTemperature      # uint:0.1℃~%uint8  cellCount~%uint8  batteryCapacityPercent  # uint:%~%SmartBatteryState batteryState~%uint8  SOP                     # Relative power percentage~%================================================================================~%MSG: dji_osdk_ros/SmartBatteryState~%uint8 cellBreak                  # 0:normal;other:Undervoltage core index(0x01-0x1F)~%uint8 selfCheckError             # enum-type: DJISmartBatterySelfCheck~%uint8 batteryClosedReason        # enum-type: DJI_BETTERY_CLOSED_REASON~%uint8 batSOHState                # enum-type: DJISmartBatterySohState*/~%uint8 maxCycleLimit              # APP:cycle_limit*10*/~%uint8 batteryCommunicationAbnormal~%uint8 hasCellBreak~%uint8 heatState                  # enum-type: DJISmartBatteryHeatState~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetSingleBatteryDynamicInfo-response)))
  "Returns full string definition for message of type 'GetSingleBatteryDynamicInfo-response"
  (cl:format cl:nil "#response~%SmartBatteryDynamicInfo smartBatteryDynamicInfo~%~%================================================================================~%MSG: dji_osdk_ros/SmartBatteryDynamicInfo~%uint8  batteryIndex~%int32  currentVoltage          # uint:mV~%int32  currentElectric         # uint:mA~%uint32 fullCapacity            # uint:mAh~%uint32 remainedCapacity        # uint:mAh~%int16  batteryTemperature      # uint:0.1℃~%uint8  cellCount~%uint8  batteryCapacityPercent  # uint:%~%SmartBatteryState batteryState~%uint8  SOP                     # Relative power percentage~%================================================================================~%MSG: dji_osdk_ros/SmartBatteryState~%uint8 cellBreak                  # 0:normal;other:Undervoltage core index(0x01-0x1F)~%uint8 selfCheckError             # enum-type: DJISmartBatterySelfCheck~%uint8 batteryClosedReason        # enum-type: DJI_BETTERY_CLOSED_REASON~%uint8 batSOHState                # enum-type: DJISmartBatterySohState*/~%uint8 maxCycleLimit              # APP:cycle_limit*10*/~%uint8 batteryCommunicationAbnormal~%uint8 hasCellBreak~%uint8 heatState                  # enum-type: DJISmartBatteryHeatState~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetSingleBatteryDynamicInfo-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'smartBatteryDynamicInfo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetSingleBatteryDynamicInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetSingleBatteryDynamicInfo-response
    (cl:cons ':smartBatteryDynamicInfo (smartBatteryDynamicInfo msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetSingleBatteryDynamicInfo)))
  'GetSingleBatteryDynamicInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetSingleBatteryDynamicInfo)))
  'GetSingleBatteryDynamicInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetSingleBatteryDynamicInfo)))
  "Returns string type for a service object of type '<GetSingleBatteryDynamicInfo>"
  "dji_osdk_ros/GetSingleBatteryDynamicInfo")