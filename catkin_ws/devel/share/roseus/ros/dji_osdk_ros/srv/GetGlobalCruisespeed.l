;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::GetGlobalCruisespeed)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'GetGlobalCruisespeed (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::GETGLOBALCRUISESPEED")
  (make-package "DJI_OSDK_ROS::GETGLOBALCRUISESPEED"))
(unless (find-package "DJI_OSDK_ROS::GETGLOBALCRUISESPEEDREQUEST")
  (make-package "DJI_OSDK_ROS::GETGLOBALCRUISESPEEDREQUEST"))
(unless (find-package "DJI_OSDK_ROS::GETGLOBALCRUISESPEEDRESPONSE")
  (make-package "DJI_OSDK_ROS::GETGLOBALCRUISESPEEDRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::GetGlobalCruisespeedRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::GetGlobalCruisespeedRequest
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

(defclass dji_osdk_ros::GetGlobalCruisespeedResponse
  :super ros::object
  :slots (_global_cruisespeed _result ))

(defmethod dji_osdk_ros::GetGlobalCruisespeedResponse
  (:init
   (&key
    ((:global_cruisespeed __global_cruisespeed) 0.0)
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _global_cruisespeed (float __global_cruisespeed))
   (setq _result __result)
   self)
  (:global_cruisespeed
   (&optional __global_cruisespeed)
   (if __global_cruisespeed (setq _global_cruisespeed __global_cruisespeed)) _global_cruisespeed)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; float32 _global_cruisespeed
    4
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _global_cruisespeed
       (sys::poke _global_cruisespeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _global_cruisespeed
     (setq _global_cruisespeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::GetGlobalCruisespeed
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::GetGlobalCruisespeed :md5sum-) "df3d2cfe28195de85b4c9680fe9f9068")
(setf (get dji_osdk_ros::GetGlobalCruisespeed :datatype-) "dji_osdk_ros/GetGlobalCruisespeed")
(setf (get dji_osdk_ros::GetGlobalCruisespeed :request) dji_osdk_ros::GetGlobalCruisespeedRequest)
(setf (get dji_osdk_ros::GetGlobalCruisespeed :response) dji_osdk_ros::GetGlobalCruisespeedResponse)

(defmethod dji_osdk_ros::GetGlobalCruisespeedRequest
  (:response () (instance dji_osdk_ros::GetGlobalCruisespeedResponse :init)))

(setf (get dji_osdk_ros::GetGlobalCruisespeedRequest :md5sum-) "df3d2cfe28195de85b4c9680fe9f9068")
(setf (get dji_osdk_ros::GetGlobalCruisespeedRequest :datatype-) "dji_osdk_ros/GetGlobalCruisespeedRequest")
(setf (get dji_osdk_ros::GetGlobalCruisespeedRequest :definition-)
      "#request
---
#response
# Global cruise speed of mission
# unit: m/s
# range:[0,WayPointV2InitSettings::maxFlightSpeed]
float32 global_cruisespeed
bool result
")

(setf (get dji_osdk_ros::GetGlobalCruisespeedResponse :md5sum-) "df3d2cfe28195de85b4c9680fe9f9068")
(setf (get dji_osdk_ros::GetGlobalCruisespeedResponse :datatype-) "dji_osdk_ros/GetGlobalCruisespeedResponse")
(setf (get dji_osdk_ros::GetGlobalCruisespeedResponse :definition-)
      "#request
---
#response
# Global cruise speed of mission
# unit: m/s
# range:[0,WayPointV2InitSettings::maxFlightSpeed]
float32 global_cruisespeed
bool result
")



(provide :dji_osdk_ros/GetGlobalCruisespeed "df3d2cfe28195de85b4c9680fe9f9068")


