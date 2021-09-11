;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SetGlobalCruisespeed)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SetGlobalCruisespeed (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SETGLOBALCRUISESPEED")
  (make-package "DJI_OSDK_ROS::SETGLOBALCRUISESPEED"))
(unless (find-package "DJI_OSDK_ROS::SETGLOBALCRUISESPEEDREQUEST")
  (make-package "DJI_OSDK_ROS::SETGLOBALCRUISESPEEDREQUEST"))
(unless (find-package "DJI_OSDK_ROS::SETGLOBALCRUISESPEEDRESPONSE")
  (make-package "DJI_OSDK_ROS::SETGLOBALCRUISESPEEDRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::SetGlobalCruisespeedRequest
  :super ros::object
  :slots (_global_cruisespeed ))

(defmethod dji_osdk_ros::SetGlobalCruisespeedRequest
  (:init
   (&key
    ((:global_cruisespeed __global_cruisespeed) 0.0)
    )
   (send-super :init)
   (setq _global_cruisespeed (float __global_cruisespeed))
   self)
  (:global_cruisespeed
   (&optional __global_cruisespeed)
   (if __global_cruisespeed (setq _global_cruisespeed __global_cruisespeed)) _global_cruisespeed)
  (:serialization-length
   ()
   (+
    ;; float32 _global_cruisespeed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _global_cruisespeed
       (sys::poke _global_cruisespeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _global_cruisespeed
     (setq _global_cruisespeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_osdk_ros::SetGlobalCruisespeedResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::SetGlobalCruisespeedResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::SetGlobalCruisespeed
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SetGlobalCruisespeed :md5sum-) "e19b70d4008bdcfcf34ff2b1bd83474e")
(setf (get dji_osdk_ros::SetGlobalCruisespeed :datatype-) "dji_osdk_ros/SetGlobalCruisespeed")
(setf (get dji_osdk_ros::SetGlobalCruisespeed :request) dji_osdk_ros::SetGlobalCruisespeedRequest)
(setf (get dji_osdk_ros::SetGlobalCruisespeed :response) dji_osdk_ros::SetGlobalCruisespeedResponse)

(defmethod dji_osdk_ros::SetGlobalCruisespeedRequest
  (:response () (instance dji_osdk_ros::SetGlobalCruisespeedResponse :init)))

(setf (get dji_osdk_ros::SetGlobalCruisespeedRequest :md5sum-) "e19b70d4008bdcfcf34ff2b1bd83474e")
(setf (get dji_osdk_ros::SetGlobalCruisespeedRequest :datatype-) "dji_osdk_ros/SetGlobalCruisespeedRequest")
(setf (get dji_osdk_ros::SetGlobalCruisespeedRequest :definition-)
      "#request
# Global cruise speed of mission
# unit: m/s
# range:[0,WayPointV2InitSettings::maxFlightSpeed]
float32 global_cruisespeed
---
#response
bool result
")

(setf (get dji_osdk_ros::SetGlobalCruisespeedResponse :md5sum-) "e19b70d4008bdcfcf34ff2b1bd83474e")
(setf (get dji_osdk_ros::SetGlobalCruisespeedResponse :datatype-) "dji_osdk_ros/SetGlobalCruisespeedResponse")
(setf (get dji_osdk_ros::SetGlobalCruisespeedResponse :definition-)
      "#request
# Global cruise speed of mission
# unit: m/s
# range:[0,WayPointV2InitSettings::maxFlightSpeed]
float32 global_cruisespeed
---
#response
bool result
")



(provide :dji_osdk_ros/SetGlobalCruisespeed "e19b70d4008bdcfcf34ff2b1bd83474e")


