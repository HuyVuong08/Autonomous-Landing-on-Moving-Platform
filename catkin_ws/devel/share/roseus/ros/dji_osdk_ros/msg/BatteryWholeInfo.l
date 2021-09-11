;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::BatteryWholeInfo)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'BatteryWholeInfo (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::BATTERYWHOLEINFO")
  (make-package "DJI_OSDK_ROS::BATTERYWHOLEINFO"))

(in-package "ROS")
;;//! \htmlinclude BatteryWholeInfo.msg.html


(defclass dji_osdk_ros::BatteryWholeInfo
  :super ros::object
  :slots (_remainFlyTime _goHomeNeedTime _landNeedTime _goHomeNeedCapacity _landNeedCapacity _safeFlyRadius _capacityConsumeSpeed _batteryState _goHomeCountDownState _gohomeCountDownvalue _voltage _batteryCapacityPercentage _lowBatteryAlarmThreshold _lowBatteryAlarmEnable _seriousLowBatteryAlarmThreshold _seriousLowBatteryAlarmEnable ))

(defmethod dji_osdk_ros::BatteryWholeInfo
  (:init
   (&key
    ((:remainFlyTime __remainFlyTime) 0)
    ((:goHomeNeedTime __goHomeNeedTime) 0)
    ((:landNeedTime __landNeedTime) 0)
    ((:goHomeNeedCapacity __goHomeNeedCapacity) 0)
    ((:landNeedCapacity __landNeedCapacity) 0)
    ((:safeFlyRadius __safeFlyRadius) 0.0)
    ((:capacityConsumeSpeed __capacityConsumeSpeed) 0.0)
    ((:batteryState __batteryState) (instance dji_osdk_ros::BatteryState :init))
    ((:goHomeCountDownState __goHomeCountDownState) 0)
    ((:gohomeCountDownvalue __gohomeCountDownvalue) 0)
    ((:voltage __voltage) 0)
    ((:batteryCapacityPercentage __batteryCapacityPercentage) 0)
    ((:lowBatteryAlarmThreshold __lowBatteryAlarmThreshold) 0)
    ((:lowBatteryAlarmEnable __lowBatteryAlarmEnable) 0)
    ((:seriousLowBatteryAlarmThreshold __seriousLowBatteryAlarmThreshold) 0)
    ((:seriousLowBatteryAlarmEnable __seriousLowBatteryAlarmEnable) 0)
    )
   (send-super :init)
   (setq _remainFlyTime (round __remainFlyTime))
   (setq _goHomeNeedTime (round __goHomeNeedTime))
   (setq _landNeedTime (round __landNeedTime))
   (setq _goHomeNeedCapacity (round __goHomeNeedCapacity))
   (setq _landNeedCapacity (round __landNeedCapacity))
   (setq _safeFlyRadius (float __safeFlyRadius))
   (setq _capacityConsumeSpeed (float __capacityConsumeSpeed))
   (setq _batteryState __batteryState)
   (setq _goHomeCountDownState (round __goHomeCountDownState))
   (setq _gohomeCountDownvalue (round __gohomeCountDownvalue))
   (setq _voltage (round __voltage))
   (setq _batteryCapacityPercentage (round __batteryCapacityPercentage))
   (setq _lowBatteryAlarmThreshold (round __lowBatteryAlarmThreshold))
   (setq _lowBatteryAlarmEnable (round __lowBatteryAlarmEnable))
   (setq _seriousLowBatteryAlarmThreshold (round __seriousLowBatteryAlarmThreshold))
   (setq _seriousLowBatteryAlarmEnable (round __seriousLowBatteryAlarmEnable))
   self)
  (:remainFlyTime
   (&optional __remainFlyTime)
   (if __remainFlyTime (setq _remainFlyTime __remainFlyTime)) _remainFlyTime)
  (:goHomeNeedTime
   (&optional __goHomeNeedTime)
   (if __goHomeNeedTime (setq _goHomeNeedTime __goHomeNeedTime)) _goHomeNeedTime)
  (:landNeedTime
   (&optional __landNeedTime)
   (if __landNeedTime (setq _landNeedTime __landNeedTime)) _landNeedTime)
  (:goHomeNeedCapacity
   (&optional __goHomeNeedCapacity)
   (if __goHomeNeedCapacity (setq _goHomeNeedCapacity __goHomeNeedCapacity)) _goHomeNeedCapacity)
  (:landNeedCapacity
   (&optional __landNeedCapacity)
   (if __landNeedCapacity (setq _landNeedCapacity __landNeedCapacity)) _landNeedCapacity)
  (:safeFlyRadius
   (&optional __safeFlyRadius)
   (if __safeFlyRadius (setq _safeFlyRadius __safeFlyRadius)) _safeFlyRadius)
  (:capacityConsumeSpeed
   (&optional __capacityConsumeSpeed)
   (if __capacityConsumeSpeed (setq _capacityConsumeSpeed __capacityConsumeSpeed)) _capacityConsumeSpeed)
  (:batteryState
   (&rest __batteryState)
   (if (keywordp (car __batteryState))
       (send* _batteryState __batteryState)
     (progn
       (if __batteryState (setq _batteryState (car __batteryState)))
       _batteryState)))
  (:goHomeCountDownState
   (&optional __goHomeCountDownState)
   (if __goHomeCountDownState (setq _goHomeCountDownState __goHomeCountDownState)) _goHomeCountDownState)
  (:gohomeCountDownvalue
   (&optional __gohomeCountDownvalue)
   (if __gohomeCountDownvalue (setq _gohomeCountDownvalue __gohomeCountDownvalue)) _gohomeCountDownvalue)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:batteryCapacityPercentage
   (&optional __batteryCapacityPercentage)
   (if __batteryCapacityPercentage (setq _batteryCapacityPercentage __batteryCapacityPercentage)) _batteryCapacityPercentage)
  (:lowBatteryAlarmThreshold
   (&optional __lowBatteryAlarmThreshold)
   (if __lowBatteryAlarmThreshold (setq _lowBatteryAlarmThreshold __lowBatteryAlarmThreshold)) _lowBatteryAlarmThreshold)
  (:lowBatteryAlarmEnable
   (&optional __lowBatteryAlarmEnable)
   (if __lowBatteryAlarmEnable (setq _lowBatteryAlarmEnable __lowBatteryAlarmEnable)) _lowBatteryAlarmEnable)
  (:seriousLowBatteryAlarmThreshold
   (&optional __seriousLowBatteryAlarmThreshold)
   (if __seriousLowBatteryAlarmThreshold (setq _seriousLowBatteryAlarmThreshold __seriousLowBatteryAlarmThreshold)) _seriousLowBatteryAlarmThreshold)
  (:seriousLowBatteryAlarmEnable
   (&optional __seriousLowBatteryAlarmEnable)
   (if __seriousLowBatteryAlarmEnable (setq _seriousLowBatteryAlarmEnable __seriousLowBatteryAlarmEnable)) _seriousLowBatteryAlarmEnable)
  (:serialization-length
   ()
   (+
    ;; uint16 _remainFlyTime
    2
    ;; uint16 _goHomeNeedTime
    2
    ;; uint16 _landNeedTime
    2
    ;; uint16 _goHomeNeedCapacity
    2
    ;; uint16 _landNeedCapacity
    2
    ;; float32 _safeFlyRadius
    4
    ;; float32 _capacityConsumeSpeed
    4
    ;; dji_osdk_ros/BatteryState _batteryState
    (send _batteryState :serialization-length)
    ;; uint8 _goHomeCountDownState
    1
    ;; uint8 _gohomeCountDownvalue
    1
    ;; uint16 _voltage
    2
    ;; uint8 _batteryCapacityPercentage
    1
    ;; uint8 _lowBatteryAlarmThreshold
    1
    ;; uint8 _lowBatteryAlarmEnable
    1
    ;; uint8 _seriousLowBatteryAlarmThreshold
    1
    ;; uint8 _seriousLowBatteryAlarmEnable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _remainFlyTime
       (write-word _remainFlyTime s)
     ;; uint16 _goHomeNeedTime
       (write-word _goHomeNeedTime s)
     ;; uint16 _landNeedTime
       (write-word _landNeedTime s)
     ;; uint16 _goHomeNeedCapacity
       (write-word _goHomeNeedCapacity s)
     ;; uint16 _landNeedCapacity
       (write-word _landNeedCapacity s)
     ;; float32 _safeFlyRadius
       (sys::poke _safeFlyRadius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _capacityConsumeSpeed
       (sys::poke _capacityConsumeSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dji_osdk_ros/BatteryState _batteryState
       (send _batteryState :serialize s)
     ;; uint8 _goHomeCountDownState
       (write-byte _goHomeCountDownState s)
     ;; uint8 _gohomeCountDownvalue
       (write-byte _gohomeCountDownvalue s)
     ;; uint16 _voltage
       (write-word _voltage s)
     ;; uint8 _batteryCapacityPercentage
       (write-byte _batteryCapacityPercentage s)
     ;; uint8 _lowBatteryAlarmThreshold
       (write-byte _lowBatteryAlarmThreshold s)
     ;; uint8 _lowBatteryAlarmEnable
       (write-byte _lowBatteryAlarmEnable s)
     ;; uint8 _seriousLowBatteryAlarmThreshold
       (write-byte _seriousLowBatteryAlarmThreshold s)
     ;; uint8 _seriousLowBatteryAlarmEnable
       (write-byte _seriousLowBatteryAlarmEnable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _remainFlyTime
     (setq _remainFlyTime (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _goHomeNeedTime
     (setq _goHomeNeedTime (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _landNeedTime
     (setq _landNeedTime (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _goHomeNeedCapacity
     (setq _goHomeNeedCapacity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _landNeedCapacity
     (setq _landNeedCapacity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _safeFlyRadius
     (setq _safeFlyRadius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _capacityConsumeSpeed
     (setq _capacityConsumeSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dji_osdk_ros/BatteryState _batteryState
     (send _batteryState :deserialize buf ptr-) (incf ptr- (send _batteryState :serialization-length))
   ;; uint8 _goHomeCountDownState
     (setq _goHomeCountDownState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gohomeCountDownvalue
     (setq _gohomeCountDownvalue (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _voltage
     (setq _voltage (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _batteryCapacityPercentage
     (setq _batteryCapacityPercentage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lowBatteryAlarmThreshold
     (setq _lowBatteryAlarmThreshold (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lowBatteryAlarmEnable
     (setq _lowBatteryAlarmEnable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _seriousLowBatteryAlarmThreshold
     (setq _seriousLowBatteryAlarmThreshold (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _seriousLowBatteryAlarmEnable
     (setq _seriousLowBatteryAlarmEnable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_osdk_ros::BatteryWholeInfo :md5sum-) "7e822abf802642ce971495ff2b95946b")
(setf (get dji_osdk_ros::BatteryWholeInfo :datatype-) "dji_osdk_ros/BatteryWholeInfo")
(setf (get dji_osdk_ros::BatteryWholeInfo :definition-)
      "uint16  remainFlyTime             # remain fly time(s)
uint16  goHomeNeedTime            # Time required for the gohome flight (s)
uint16  landNeedTime              # Time required for the land flight (s).max value:100*/
uint16  goHomeNeedCapacity        # Capacity required for the gohome flight (%).max value:100*/
uint16  landNeedCapacity          # Capacity required for the land flight (%).max value:100*/
float32 safeFlyRadius             # Safe flight area radius (m)*/
float32 capacityConsumeSpeed      # (mAh/sec)*/
BatteryState batteryState
uint8   goHomeCountDownState      # Countdown status of smart battery gohome
                                   # 0/2:not in gohome state
                                   # 1  :in gohome state
                                   #
uint8   gohomeCountDownvalue      # uint:s.max value:10
uint16  voltage                   # mv
uint8   batteryCapacityPercentage # uint:%.max value:100
uint8   lowBatteryAlarmThreshold
uint8   lowBatteryAlarmEnable
uint8   seriousLowBatteryAlarmThreshold
uint8   seriousLowBatteryAlarmEnable  
================================================================================
MSG: dji_osdk_ros/BatteryState
uint8 voltageNotSafety # Generally caused by low temperature, the battery has electricity,
                       # but the battery voltage is too low.
uint8 veryLowVoltageAlarm
uint8 LowVoltageAlarm
uint8 seriousLowCapacityAlarm
uint8 LowCapacityAlarm
")



(provide :dji_osdk_ros/BatteryWholeInfo "7e822abf802642ce971495ff2b95946b")


