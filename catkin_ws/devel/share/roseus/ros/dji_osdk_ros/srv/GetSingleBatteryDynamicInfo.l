;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::GetSingleBatteryDynamicInfo)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'GetSingleBatteryDynamicInfo (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::GETSINGLEBATTERYDYNAMICINFO")
  (make-package "DJI_OSDK_ROS::GETSINGLEBATTERYDYNAMICINFO"))
(unless (find-package "DJI_OSDK_ROS::GETSINGLEBATTERYDYNAMICINFOREQUEST")
  (make-package "DJI_OSDK_ROS::GETSINGLEBATTERYDYNAMICINFOREQUEST"))
(unless (find-package "DJI_OSDK_ROS::GETSINGLEBATTERYDYNAMICINFORESPONSE")
  (make-package "DJI_OSDK_ROS::GETSINGLEBATTERYDYNAMICINFORESPONSE"))

(in-package "ROS")





(intern "*FIRST_SMART_BATTERY*" (find-package "DJI_OSDK_ROS::GETSINGLEBATTERYDYNAMICINFOREQUEST"))
(shadow '*FIRST_SMART_BATTERY* (find-package "DJI_OSDK_ROS::GETSINGLEBATTERYDYNAMICINFOREQUEST"))
(defconstant dji_osdk_ros::GetSingleBatteryDynamicInfoRequest::*FIRST_SMART_BATTERY* 1)
(intern "*SECOND_SMART_BATTERY*" (find-package "DJI_OSDK_ROS::GETSINGLEBATTERYDYNAMICINFOREQUEST"))
(shadow '*SECOND_SMART_BATTERY* (find-package "DJI_OSDK_ROS::GETSINGLEBATTERYDYNAMICINFOREQUEST"))
(defconstant dji_osdk_ros::GetSingleBatteryDynamicInfoRequest::*SECOND_SMART_BATTERY* 2)

(defun dji_osdk_ros::GetSingleBatteryDynamicInfoRequest-to-symbol (const)
  (cond
        ((= const 1) 'dji_osdk_ros::GetSingleBatteryDynamicInfoRequest::*first_smart_battery*)
        ((= const 2) 'dji_osdk_ros::GetSingleBatteryDynamicInfoRequest::*second_smart_battery*)
        (t nil)))

(defclass dji_osdk_ros::GetSingleBatteryDynamicInfoRequest
  :super ros::object
  :slots (_batteryIndex ))

(defmethod dji_osdk_ros::GetSingleBatteryDynamicInfoRequest
  (:init
   (&key
    ((:batteryIndex __batteryIndex) 0)
    )
   (send-super :init)
   (setq _batteryIndex (round __batteryIndex))
   self)
  (:batteryIndex
   (&optional __batteryIndex)
   (if __batteryIndex (setq _batteryIndex __batteryIndex)) _batteryIndex)
  (:serialization-length
   ()
   (+
    ;; uint8 _batteryIndex
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _batteryIndex
       (write-byte _batteryIndex s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _batteryIndex
     (setq _batteryIndex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::GetSingleBatteryDynamicInfoResponse
  :super ros::object
  :slots (_smartBatteryDynamicInfo ))

(defmethod dji_osdk_ros::GetSingleBatteryDynamicInfoResponse
  (:init
   (&key
    ((:smartBatteryDynamicInfo __smartBatteryDynamicInfo) (instance dji_osdk_ros::SmartBatteryDynamicInfo :init))
    )
   (send-super :init)
   (setq _smartBatteryDynamicInfo __smartBatteryDynamicInfo)
   self)
  (:smartBatteryDynamicInfo
   (&rest __smartBatteryDynamicInfo)
   (if (keywordp (car __smartBatteryDynamicInfo))
       (send* _smartBatteryDynamicInfo __smartBatteryDynamicInfo)
     (progn
       (if __smartBatteryDynamicInfo (setq _smartBatteryDynamicInfo (car __smartBatteryDynamicInfo)))
       _smartBatteryDynamicInfo)))
  (:serialization-length
   ()
   (+
    ;; dji_osdk_ros/SmartBatteryDynamicInfo _smartBatteryDynamicInfo
    (send _smartBatteryDynamicInfo :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_osdk_ros/SmartBatteryDynamicInfo _smartBatteryDynamicInfo
       (send _smartBatteryDynamicInfo :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_osdk_ros/SmartBatteryDynamicInfo _smartBatteryDynamicInfo
     (send _smartBatteryDynamicInfo :deserialize buf ptr-) (incf ptr- (send _smartBatteryDynamicInfo :serialization-length))
   ;;
   self)
  )

(defclass dji_osdk_ros::GetSingleBatteryDynamicInfo
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::GetSingleBatteryDynamicInfo :md5sum-) "e5d629fb1dec6d80fbc10fc0bfd54348")
(setf (get dji_osdk_ros::GetSingleBatteryDynamicInfo :datatype-) "dji_osdk_ros/GetSingleBatteryDynamicInfo")
(setf (get dji_osdk_ros::GetSingleBatteryDynamicInfo :request) dji_osdk_ros::GetSingleBatteryDynamicInfoRequest)
(setf (get dji_osdk_ros::GetSingleBatteryDynamicInfo :response) dji_osdk_ros::GetSingleBatteryDynamicInfoResponse)

(defmethod dji_osdk_ros::GetSingleBatteryDynamicInfoRequest
  (:response () (instance dji_osdk_ros::GetSingleBatteryDynamicInfoResponse :init)))

(setf (get dji_osdk_ros::GetSingleBatteryDynamicInfoRequest :md5sum-) "e5d629fb1dec6d80fbc10fc0bfd54348")
(setf (get dji_osdk_ros::GetSingleBatteryDynamicInfoRequest :datatype-) "dji_osdk_ros/GetSingleBatteryDynamicInfoRequest")
(setf (get dji_osdk_ros::GetSingleBatteryDynamicInfoRequest :definition-)
      "#request
uint8 first_smart_battery = 1
uint8 second_smart_battery = 2

uint8 batteryIndex
---
#response
SmartBatteryDynamicInfo smartBatteryDynamicInfo

================================================================================
MSG: dji_osdk_ros/SmartBatteryDynamicInfo
uint8  batteryIndex
int32  currentVoltage          # uint:mV
int32  currentElectric         # uint:mA
uint32 fullCapacity            # uint:mAh
uint32 remainedCapacity        # uint:mAh
int16  batteryTemperature      # uint:0.1℃
uint8  cellCount
uint8  batteryCapacityPercent  # uint:%
SmartBatteryState batteryState
uint8  SOP                     # Relative power percentage
================================================================================
MSG: dji_osdk_ros/SmartBatteryState
uint8 cellBreak                  # 0:normal;other:Undervoltage core index(0x01-0x1F)
uint8 selfCheckError             # enum-type: DJISmartBatterySelfCheck
uint8 batteryClosedReason        # enum-type: DJI_BETTERY_CLOSED_REASON
uint8 batSOHState                # enum-type: DJISmartBatterySohState*/
uint8 maxCycleLimit              # APP:cycle_limit*10*/
uint8 batteryCommunicationAbnormal
uint8 hasCellBreak
")

(setf (get dji_osdk_ros::GetSingleBatteryDynamicInfoResponse :md5sum-) "e5d629fb1dec6d80fbc10fc0bfd54348")
(setf (get dji_osdk_ros::GetSingleBatteryDynamicInfoResponse :datatype-) "dji_osdk_ros/GetSingleBatteryDynamicInfoResponse")
(setf (get dji_osdk_ros::GetSingleBatteryDynamicInfoResponse :definition-)
      "#request
uint8 first_smart_battery = 1
uint8 second_smart_battery = 2

uint8 batteryIndex
---
#response
SmartBatteryDynamicInfo smartBatteryDynamicInfo

================================================================================
MSG: dji_osdk_ros/SmartBatteryDynamicInfo
uint8  batteryIndex
int32  currentVoltage          # uint:mV
int32  currentElectric         # uint:mA
uint32 fullCapacity            # uint:mAh
uint32 remainedCapacity        # uint:mAh
int16  batteryTemperature      # uint:0.1℃
uint8  cellCount
uint8  batteryCapacityPercent  # uint:%
SmartBatteryState batteryState
uint8  SOP                     # Relative power percentage
================================================================================
MSG: dji_osdk_ros/SmartBatteryState
uint8 cellBreak                  # 0:normal;other:Undervoltage core index(0x01-0x1F)
uint8 selfCheckError             # enum-type: DJISmartBatterySelfCheck
uint8 batteryClosedReason        # enum-type: DJI_BETTERY_CLOSED_REASON
uint8 batSOHState                # enum-type: DJISmartBatterySohState*/
uint8 maxCycleLimit              # APP:cycle_limit*10*/
uint8 batteryCommunicationAbnormal
uint8 hasCellBreak
")



(provide :dji_osdk_ros/GetSingleBatteryDynamicInfo "e5d629fb1dec6d80fbc10fc0bfd54348")


