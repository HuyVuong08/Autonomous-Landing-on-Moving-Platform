;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::BatteryState)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'BatteryState (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::BATTERYSTATE")
  (make-package "DJI_OSDK_ROS::BATTERYSTATE"))

(in-package "ROS")
;;//! \htmlinclude BatteryState.msg.html


(defclass dji_osdk_ros::BatteryState
  :super ros::object
  :slots (_voltageNotSafety _veryLowVoltageAlarm _LowVoltageAlarm _seriousLowCapacityAlarm _LowCapacityAlarm ))

(defmethod dji_osdk_ros::BatteryState
  (:init
   (&key
    ((:voltageNotSafety __voltageNotSafety) 0)
    ((:veryLowVoltageAlarm __veryLowVoltageAlarm) 0)
    ((:LowVoltageAlarm __LowVoltageAlarm) 0)
    ((:seriousLowCapacityAlarm __seriousLowCapacityAlarm) 0)
    ((:LowCapacityAlarm __LowCapacityAlarm) 0)
    )
   (send-super :init)
   (setq _voltageNotSafety (round __voltageNotSafety))
   (setq _veryLowVoltageAlarm (round __veryLowVoltageAlarm))
   (setq _LowVoltageAlarm (round __LowVoltageAlarm))
   (setq _seriousLowCapacityAlarm (round __seriousLowCapacityAlarm))
   (setq _LowCapacityAlarm (round __LowCapacityAlarm))
   self)
  (:voltageNotSafety
   (&optional __voltageNotSafety)
   (if __voltageNotSafety (setq _voltageNotSafety __voltageNotSafety)) _voltageNotSafety)
  (:veryLowVoltageAlarm
   (&optional __veryLowVoltageAlarm)
   (if __veryLowVoltageAlarm (setq _veryLowVoltageAlarm __veryLowVoltageAlarm)) _veryLowVoltageAlarm)
  (:LowVoltageAlarm
   (&optional __LowVoltageAlarm)
   (if __LowVoltageAlarm (setq _LowVoltageAlarm __LowVoltageAlarm)) _LowVoltageAlarm)
  (:seriousLowCapacityAlarm
   (&optional __seriousLowCapacityAlarm)
   (if __seriousLowCapacityAlarm (setq _seriousLowCapacityAlarm __seriousLowCapacityAlarm)) _seriousLowCapacityAlarm)
  (:LowCapacityAlarm
   (&optional __LowCapacityAlarm)
   (if __LowCapacityAlarm (setq _LowCapacityAlarm __LowCapacityAlarm)) _LowCapacityAlarm)
  (:serialization-length
   ()
   (+
    ;; uint8 _voltageNotSafety
    1
    ;; uint8 _veryLowVoltageAlarm
    1
    ;; uint8 _LowVoltageAlarm
    1
    ;; uint8 _seriousLowCapacityAlarm
    1
    ;; uint8 _LowCapacityAlarm
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _voltageNotSafety
       (write-byte _voltageNotSafety s)
     ;; uint8 _veryLowVoltageAlarm
       (write-byte _veryLowVoltageAlarm s)
     ;; uint8 _LowVoltageAlarm
       (write-byte _LowVoltageAlarm s)
     ;; uint8 _seriousLowCapacityAlarm
       (write-byte _seriousLowCapacityAlarm s)
     ;; uint8 _LowCapacityAlarm
       (write-byte _LowCapacityAlarm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _voltageNotSafety
     (setq _voltageNotSafety (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _veryLowVoltageAlarm
     (setq _veryLowVoltageAlarm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LowVoltageAlarm
     (setq _LowVoltageAlarm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _seriousLowCapacityAlarm
     (setq _seriousLowCapacityAlarm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _LowCapacityAlarm
     (setq _LowCapacityAlarm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_osdk_ros::BatteryState :md5sum-) "5243c6a8356e946f828c69a991da7334")
(setf (get dji_osdk_ros::BatteryState :datatype-) "dji_osdk_ros/BatteryState")
(setf (get dji_osdk_ros::BatteryState :definition-)
      "uint8 voltageNotSafety # Generally caused by low temperature, the battery has electricity,
                       # but the battery voltage is too low.
uint8 veryLowVoltageAlarm
uint8 LowVoltageAlarm
uint8 seriousLowCapacityAlarm
uint8 LowCapacityAlarm
")



(provide :dji_osdk_ros/BatteryState "5243c6a8356e946f828c69a991da7334")


