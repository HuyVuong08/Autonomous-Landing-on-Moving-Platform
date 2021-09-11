;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::GetWholeBatteryInfo)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'GetWholeBatteryInfo (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::GETWHOLEBATTERYINFO")
  (make-package "DJI_OSDK_ROS::GETWHOLEBATTERYINFO"))
(unless (find-package "DJI_OSDK_ROS::GETWHOLEBATTERYINFOREQUEST")
  (make-package "DJI_OSDK_ROS::GETWHOLEBATTERYINFOREQUEST"))
(unless (find-package "DJI_OSDK_ROS::GETWHOLEBATTERYINFORESPONSE")
  (make-package "DJI_OSDK_ROS::GETWHOLEBATTERYINFORESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::GetWholeBatteryInfoRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::GetWholeBatteryInfoRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dji_osdk_ros::GetWholeBatteryInfoResponse
  :super ros::object
  :slots (_battery_whole_info ))

(defmethod dji_osdk_ros::GetWholeBatteryInfoResponse
  (:init
   (&key
    ((:battery_whole_info __battery_whole_info) (instance dji_osdk_ros::BatteryWholeInfo :init))
    )
   (send-super :init)
   (setq _battery_whole_info __battery_whole_info)
   self)
  (:battery_whole_info
   (&rest __battery_whole_info)
   (if (keywordp (car __battery_whole_info))
       (send* _battery_whole_info __battery_whole_info)
     (progn
       (if __battery_whole_info (setq _battery_whole_info (car __battery_whole_info)))
       _battery_whole_info)))
  (:serialization-length
   ()
   (+
    ;; dji_osdk_ros/BatteryWholeInfo _battery_whole_info
    (send _battery_whole_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_osdk_ros/BatteryWholeInfo _battery_whole_info
       (send _battery_whole_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_osdk_ros/BatteryWholeInfo _battery_whole_info
     (send _battery_whole_info :deserialize buf ptr-) (incf ptr- (send _battery_whole_info :serialization-length))
   ;;
   self)
  )

(defclass dji_osdk_ros::GetWholeBatteryInfo
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::GetWholeBatteryInfo :md5sum-) "a954f2c109885a4dd2f5564d3eb1433a")
(setf (get dji_osdk_ros::GetWholeBatteryInfo :datatype-) "dji_osdk_ros/GetWholeBatteryInfo")
(setf (get dji_osdk_ros::GetWholeBatteryInfo :request) dji_osdk_ros::GetWholeBatteryInfoRequest)
(setf (get dji_osdk_ros::GetWholeBatteryInfo :response) dji_osdk_ros::GetWholeBatteryInfoResponse)

(defmethod dji_osdk_ros::GetWholeBatteryInfoRequest
  (:response () (instance dji_osdk_ros::GetWholeBatteryInfoResponse :init)))

(setf (get dji_osdk_ros::GetWholeBatteryInfoRequest :md5sum-) "a954f2c109885a4dd2f5564d3eb1433a")
(setf (get dji_osdk_ros::GetWholeBatteryInfoRequest :datatype-) "dji_osdk_ros/GetWholeBatteryInfoRequest")
(setf (get dji_osdk_ros::GetWholeBatteryInfoRequest :definition-)
      "#request
---
#response
BatteryWholeInfo battery_whole_info

================================================================================
MSG: dji_osdk_ros/BatteryWholeInfo
uint16  remainFlyTime             # remain fly time(s)
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
")

(setf (get dji_osdk_ros::GetWholeBatteryInfoResponse :md5sum-) "a954f2c109885a4dd2f5564d3eb1433a")
(setf (get dji_osdk_ros::GetWholeBatteryInfoResponse :datatype-) "dji_osdk_ros/GetWholeBatteryInfoResponse")
(setf (get dji_osdk_ros::GetWholeBatteryInfoResponse :definition-)
      "#request
---
#response
BatteryWholeInfo battery_whole_info

================================================================================
MSG: dji_osdk_ros/BatteryWholeInfo
uint16  remainFlyTime             # remain fly time(s)
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
")



(provide :dji_osdk_ros/GetWholeBatteryInfo "a954f2c109885a4dd2f5564d3eb1433a")


