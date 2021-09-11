;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SmartBatteryDynamicInfo)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SmartBatteryDynamicInfo (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SMARTBATTERYDYNAMICINFO")
  (make-package "DJI_OSDK_ROS::SMARTBATTERYDYNAMICINFO"))

(in-package "ROS")
;;//! \htmlinclude SmartBatteryDynamicInfo.msg.html


(defclass dji_osdk_ros::SmartBatteryDynamicInfo
  :super ros::object
  :slots (_batteryIndex _currentVoltage _currentElectric _fullCapacity _remainedCapacity _batteryTemperature _cellCount _batteryCapacityPercent _batteryState _SOP ))

(defmethod dji_osdk_ros::SmartBatteryDynamicInfo
  (:init
   (&key
    ((:batteryIndex __batteryIndex) 0)
    ((:currentVoltage __currentVoltage) 0)
    ((:currentElectric __currentElectric) 0)
    ((:fullCapacity __fullCapacity) 0)
    ((:remainedCapacity __remainedCapacity) 0)
    ((:batteryTemperature __batteryTemperature) 0)
    ((:cellCount __cellCount) 0)
    ((:batteryCapacityPercent __batteryCapacityPercent) 0)
    ((:batteryState __batteryState) (instance dji_osdk_ros::SmartBatteryState :init))
    ((:SOP __SOP) 0)
    )
   (send-super :init)
   (setq _batteryIndex (round __batteryIndex))
   (setq _currentVoltage (round __currentVoltage))
   (setq _currentElectric (round __currentElectric))
   (setq _fullCapacity (round __fullCapacity))
   (setq _remainedCapacity (round __remainedCapacity))
   (setq _batteryTemperature (round __batteryTemperature))
   (setq _cellCount (round __cellCount))
   (setq _batteryCapacityPercent (round __batteryCapacityPercent))
   (setq _batteryState __batteryState)
   (setq _SOP (round __SOP))
   self)
  (:batteryIndex
   (&optional __batteryIndex)
   (if __batteryIndex (setq _batteryIndex __batteryIndex)) _batteryIndex)
  (:currentVoltage
   (&optional __currentVoltage)
   (if __currentVoltage (setq _currentVoltage __currentVoltage)) _currentVoltage)
  (:currentElectric
   (&optional __currentElectric)
   (if __currentElectric (setq _currentElectric __currentElectric)) _currentElectric)
  (:fullCapacity
   (&optional __fullCapacity)
   (if __fullCapacity (setq _fullCapacity __fullCapacity)) _fullCapacity)
  (:remainedCapacity
   (&optional __remainedCapacity)
   (if __remainedCapacity (setq _remainedCapacity __remainedCapacity)) _remainedCapacity)
  (:batteryTemperature
   (&optional __batteryTemperature)
   (if __batteryTemperature (setq _batteryTemperature __batteryTemperature)) _batteryTemperature)
  (:cellCount
   (&optional __cellCount)
   (if __cellCount (setq _cellCount __cellCount)) _cellCount)
  (:batteryCapacityPercent
   (&optional __batteryCapacityPercent)
   (if __batteryCapacityPercent (setq _batteryCapacityPercent __batteryCapacityPercent)) _batteryCapacityPercent)
  (:batteryState
   (&rest __batteryState)
   (if (keywordp (car __batteryState))
       (send* _batteryState __batteryState)
     (progn
       (if __batteryState (setq _batteryState (car __batteryState)))
       _batteryState)))
  (:SOP
   (&optional __SOP)
   (if __SOP (setq _SOP __SOP)) _SOP)
  (:serialization-length
   ()
   (+
    ;; uint8 _batteryIndex
    1
    ;; int32 _currentVoltage
    4
    ;; int32 _currentElectric
    4
    ;; uint32 _fullCapacity
    4
    ;; uint32 _remainedCapacity
    4
    ;; int16 _batteryTemperature
    2
    ;; uint8 _cellCount
    1
    ;; uint8 _batteryCapacityPercent
    1
    ;; dji_osdk_ros/SmartBatteryState _batteryState
    (send _batteryState :serialization-length)
    ;; uint8 _SOP
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _batteryIndex
       (write-byte _batteryIndex s)
     ;; int32 _currentVoltage
       (write-long _currentVoltage s)
     ;; int32 _currentElectric
       (write-long _currentElectric s)
     ;; uint32 _fullCapacity
       (write-long _fullCapacity s)
     ;; uint32 _remainedCapacity
       (write-long _remainedCapacity s)
     ;; int16 _batteryTemperature
       (write-word _batteryTemperature s)
     ;; uint8 _cellCount
       (write-byte _cellCount s)
     ;; uint8 _batteryCapacityPercent
       (write-byte _batteryCapacityPercent s)
     ;; dji_osdk_ros/SmartBatteryState _batteryState
       (send _batteryState :serialize s)
     ;; uint8 _SOP
       (write-byte _SOP s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _batteryIndex
     (setq _batteryIndex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _currentVoltage
     (setq _currentVoltage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _currentElectric
     (setq _currentElectric (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _fullCapacity
     (setq _fullCapacity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _remainedCapacity
     (setq _remainedCapacity (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _batteryTemperature
     (setq _batteryTemperature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _cellCount
     (setq _cellCount (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _batteryCapacityPercent
     (setq _batteryCapacityPercent (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dji_osdk_ros/SmartBatteryState _batteryState
     (send _batteryState :deserialize buf ptr-) (incf ptr- (send _batteryState :serialization-length))
   ;; uint8 _SOP
     (setq _SOP (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_osdk_ros::SmartBatteryDynamicInfo :md5sum-) "cdcd4be856eb19722059d659610eb844")
(setf (get dji_osdk_ros::SmartBatteryDynamicInfo :datatype-) "dji_osdk_ros/SmartBatteryDynamicInfo")
(setf (get dji_osdk_ros::SmartBatteryDynamicInfo :definition-)
      "uint8  batteryIndex
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
uint8 heatState                  # enum-type: DJISmartBatteryHeatState
")



(provide :dji_osdk_ros/SmartBatteryDynamicInfo "cdcd4be856eb19722059d659610eb844")


