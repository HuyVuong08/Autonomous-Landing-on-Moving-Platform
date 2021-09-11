;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::HMSPushInfo)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'HMSPushInfo (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::HMSPUSHINFO")
  (make-package "DJI_OSDK_ROS::HMSPUSHINFO"))

(in-package "ROS")
;;//! \htmlinclude HMSPushInfo.msg.html


(defclass dji_osdk_ros::HMSPushInfo
  :super ros::object
  :slots (_alarmID _sensorIndex _reportLevel ))

(defmethod dji_osdk_ros::HMSPushInfo
  (:init
   (&key
    ((:alarmID __alarmID) 0)
    ((:sensorIndex __sensorIndex) 0)
    ((:reportLevel __reportLevel) 0)
    )
   (send-super :init)
   (setq _alarmID (round __alarmID))
   (setq _sensorIndex (round __sensorIndex))
   (setq _reportLevel (round __reportLevel))
   self)
  (:alarmID
   (&optional __alarmID)
   (if __alarmID (setq _alarmID __alarmID)) _alarmID)
  (:sensorIndex
   (&optional __sensorIndex)
   (if __sensorIndex (setq _sensorIndex __sensorIndex)) _sensorIndex)
  (:reportLevel
   (&optional __reportLevel)
   (if __reportLevel (setq _reportLevel __reportLevel)) _reportLevel)
  (:serialization-length
   ()
   (+
    ;; uint32 _alarmID
    4
    ;; uint8 _sensorIndex
    1
    ;; uint8 _reportLevel
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _alarmID
       (write-long _alarmID s)
     ;; uint8 _sensorIndex
       (write-byte _sensorIndex s)
     ;; uint8 _reportLevel
       (write-byte _reportLevel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _alarmID
     (setq _alarmID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _sensorIndex
     (setq _sensorIndex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _reportLevel
     (setq _reportLevel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_osdk_ros::HMSPushInfo :md5sum-) "ce70d5cd1d8f70130b2a622841cf2bac")
(setf (get dji_osdk_ros::HMSPushInfo :datatype-) "dji_osdk_ros/HMSPushInfo")
(setf (get dji_osdk_ros::HMSPushInfo :definition-)
      "uint32 alarmID     #/*! error code*/
uint8  sensorIndex #/*! fault sensor's index*/
uint8  reportLevel #/*! fault level ,0-4,0 is no error,4 is highest*/
")



(provide :dji_osdk_ros/HMSPushInfo "ce70d5cd1d8f70130b2a622841cf2bac")


