;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::MissionStatus)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'MissionStatus (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::MISSIONSTATUS")
  (make-package "DJI_OSDK_ROS::MISSIONSTATUS"))
(unless (find-package "DJI_OSDK_ROS::MISSIONSTATUSREQUEST")
  (make-package "DJI_OSDK_ROS::MISSIONSTATUSREQUEST"))
(unless (find-package "DJI_OSDK_ROS::MISSIONSTATUSRESPONSE")
  (make-package "DJI_OSDK_ROS::MISSIONSTATUSRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::MissionStatusRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::MissionStatusRequest
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

(defclass dji_osdk_ros::MissionStatusResponse
  :super ros::object
  :slots (_waypoint_mission_count _hotpoint_mission_count ))

(defmethod dji_osdk_ros::MissionStatusResponse
  (:init
   (&key
    ((:waypoint_mission_count __waypoint_mission_count) 0)
    ((:hotpoint_mission_count __hotpoint_mission_count) 0)
    )
   (send-super :init)
   (setq _waypoint_mission_count (round __waypoint_mission_count))
   (setq _hotpoint_mission_count (round __hotpoint_mission_count))
   self)
  (:waypoint_mission_count
   (&optional __waypoint_mission_count)
   (if __waypoint_mission_count (setq _waypoint_mission_count __waypoint_mission_count)) _waypoint_mission_count)
  (:hotpoint_mission_count
   (&optional __hotpoint_mission_count)
   (if __hotpoint_mission_count (setq _hotpoint_mission_count __hotpoint_mission_count)) _hotpoint_mission_count)
  (:serialization-length
   ()
   (+
    ;; uint8 _waypoint_mission_count
    1
    ;; uint8 _hotpoint_mission_count
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _waypoint_mission_count
       (write-byte _waypoint_mission_count s)
     ;; uint8 _hotpoint_mission_count
       (write-byte _hotpoint_mission_count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _waypoint_mission_count
     (setq _waypoint_mission_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hotpoint_mission_count
     (setq _hotpoint_mission_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::MissionStatus
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::MissionStatus :md5sum-) "76ed0b909c77c6ce98df135419939be9")
(setf (get dji_osdk_ros::MissionStatus :datatype-) "dji_osdk_ros/MissionStatus")
(setf (get dji_osdk_ros::MissionStatus :request) dji_osdk_ros::MissionStatusRequest)
(setf (get dji_osdk_ros::MissionStatus :response) dji_osdk_ros::MissionStatusResponse)

(defmethod dji_osdk_ros::MissionStatusRequest
  (:response () (instance dji_osdk_ros::MissionStatusResponse :init)))

(setf (get dji_osdk_ros::MissionStatusRequest :md5sum-) "76ed0b909c77c6ce98df135419939be9")
(setf (get dji_osdk_ros::MissionStatusRequest :datatype-) "dji_osdk_ros/MissionStatusRequest")
(setf (get dji_osdk_ros::MissionStatusRequest :definition-)
      "---
uint8 waypoint_mission_count
uint8 hotpoint_mission_count
")

(setf (get dji_osdk_ros::MissionStatusResponse :md5sum-) "76ed0b909c77c6ce98df135419939be9")
(setf (get dji_osdk_ros::MissionStatusResponse :datatype-) "dji_osdk_ros/MissionStatusResponse")
(setf (get dji_osdk_ros::MissionStatusResponse :definition-)
      "---
uint8 waypoint_mission_count
uint8 hotpoint_mission_count
")



(provide :dji_osdk_ros/MissionStatus "76ed0b909c77c6ce98df135419939be9")


