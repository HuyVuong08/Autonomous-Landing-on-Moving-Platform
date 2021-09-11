;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::StopWaypointV2Mission)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'StopWaypointV2Mission (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::STOPWAYPOINTV2MISSION")
  (make-package "DJI_OSDK_ROS::STOPWAYPOINTV2MISSION"))
(unless (find-package "DJI_OSDK_ROS::STOPWAYPOINTV2MISSIONREQUEST")
  (make-package "DJI_OSDK_ROS::STOPWAYPOINTV2MISSIONREQUEST"))
(unless (find-package "DJI_OSDK_ROS::STOPWAYPOINTV2MISSIONRESPONSE")
  (make-package "DJI_OSDK_ROS::STOPWAYPOINTV2MISSIONRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::StopWaypointV2MissionRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::StopWaypointV2MissionRequest
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

(defclass dji_osdk_ros::StopWaypointV2MissionResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::StopWaypointV2MissionResponse
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

(defclass dji_osdk_ros::StopWaypointV2Mission
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::StopWaypointV2Mission :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::StopWaypointV2Mission :datatype-) "dji_osdk_ros/StopWaypointV2Mission")
(setf (get dji_osdk_ros::StopWaypointV2Mission :request) dji_osdk_ros::StopWaypointV2MissionRequest)
(setf (get dji_osdk_ros::StopWaypointV2Mission :response) dji_osdk_ros::StopWaypointV2MissionResponse)

(defmethod dji_osdk_ros::StopWaypointV2MissionRequest
  (:response () (instance dji_osdk_ros::StopWaypointV2MissionResponse :init)))

(setf (get dji_osdk_ros::StopWaypointV2MissionRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::StopWaypointV2MissionRequest :datatype-) "dji_osdk_ros/StopWaypointV2MissionRequest")
(setf (get dji_osdk_ros::StopWaypointV2MissionRequest :definition-)
      "#request
---
#response
bool result
")

(setf (get dji_osdk_ros::StopWaypointV2MissionResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::StopWaypointV2MissionResponse :datatype-) "dji_osdk_ros/StopWaypointV2MissionResponse")
(setf (get dji_osdk_ros::StopWaypointV2MissionResponse :definition-)
      "#request
---
#response
bool result
")



(provide :dji_osdk_ros/StopWaypointV2Mission "eb13ac1f1354ccecb7941ee8fa2192e8")


