;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::MissionHpGetInfo)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'MissionHpGetInfo (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::MISSIONHPGETINFO")
  (make-package "DJI_OSDK_ROS::MISSIONHPGETINFO"))
(unless (find-package "DJI_OSDK_ROS::MISSIONHPGETINFOREQUEST")
  (make-package "DJI_OSDK_ROS::MISSIONHPGETINFOREQUEST"))
(unless (find-package "DJI_OSDK_ROS::MISSIONHPGETINFORESPONSE")
  (make-package "DJI_OSDK_ROS::MISSIONHPGETINFORESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::MissionHpGetInfoRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::MissionHpGetInfoRequest
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

(defclass dji_osdk_ros::MissionHpGetInfoResponse
  :super ros::object
  :slots (_hotpoint_task _cmd_set _cmd_id _ack_data ))

(defmethod dji_osdk_ros::MissionHpGetInfoResponse
  (:init
   (&key
    ((:hotpoint_task __hotpoint_task) (instance dji_osdk_ros::MissionHotpointTask :init))
    ((:cmd_set __cmd_set) 0)
    ((:cmd_id __cmd_id) 0)
    ((:ack_data __ack_data) 0)
    )
   (send-super :init)
   (setq _hotpoint_task __hotpoint_task)
   (setq _cmd_set (round __cmd_set))
   (setq _cmd_id (round __cmd_id))
   (setq _ack_data (round __ack_data))
   self)
  (:hotpoint_task
   (&rest __hotpoint_task)
   (if (keywordp (car __hotpoint_task))
       (send* _hotpoint_task __hotpoint_task)
     (progn
       (if __hotpoint_task (setq _hotpoint_task (car __hotpoint_task)))
       _hotpoint_task)))
  (:cmd_set
   (&optional __cmd_set)
   (if __cmd_set (setq _cmd_set __cmd_set)) _cmd_set)
  (:cmd_id
   (&optional __cmd_id)
   (if __cmd_id (setq _cmd_id __cmd_id)) _cmd_id)
  (:ack_data
   (&optional __ack_data)
   (if __ack_data (setq _ack_data __ack_data)) _ack_data)
  (:serialization-length
   ()
   (+
    ;; dji_osdk_ros/MissionHotpointTask _hotpoint_task
    (send _hotpoint_task :serialization-length)
    ;; uint8 _cmd_set
    1
    ;; uint8 _cmd_id
    1
    ;; uint32 _ack_data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_osdk_ros/MissionHotpointTask _hotpoint_task
       (send _hotpoint_task :serialize s)
     ;; uint8 _cmd_set
       (write-byte _cmd_set s)
     ;; uint8 _cmd_id
       (write-byte _cmd_id s)
     ;; uint32 _ack_data
       (write-long _ack_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_osdk_ros/MissionHotpointTask _hotpoint_task
     (send _hotpoint_task :deserialize buf ptr-) (incf ptr- (send _hotpoint_task :serialization-length))
   ;; uint8 _cmd_set
     (setq _cmd_set (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _ack_data
     (setq _ack_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_osdk_ros::MissionHpGetInfo
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::MissionHpGetInfo :md5sum-) "8c08f93488e030961f6001dc630fd2c2")
(setf (get dji_osdk_ros::MissionHpGetInfo :datatype-) "dji_osdk_ros/MissionHpGetInfo")
(setf (get dji_osdk_ros::MissionHpGetInfo :request) dji_osdk_ros::MissionHpGetInfoRequest)
(setf (get dji_osdk_ros::MissionHpGetInfo :response) dji_osdk_ros::MissionHpGetInfoResponse)

(defmethod dji_osdk_ros::MissionHpGetInfoRequest
  (:response () (instance dji_osdk_ros::MissionHpGetInfoResponse :init)))

(setf (get dji_osdk_ros::MissionHpGetInfoRequest :md5sum-) "8c08f93488e030961f6001dc630fd2c2")
(setf (get dji_osdk_ros::MissionHpGetInfoRequest :datatype-) "dji_osdk_ros/MissionHpGetInfoRequest")
(setf (get dji_osdk_ros::MissionHpGetInfoRequest :definition-)
      "---
MissionHotpointTask hotpoint_task
# for debugging usage
uint8 cmd_set
uint8 cmd_id
uint32 ack_data

================================================================================
MSG: dji_osdk_ros/MissionHotpointTask
float64 latitude  # degree
float64 longitude # degree
float64 altitude  # meter
float64 radius    # meter
float32 angular_speed #deg/s
uint8 is_clockwise
uint8 start_point
uint8 yaw_mode
")

(setf (get dji_osdk_ros::MissionHpGetInfoResponse :md5sum-) "8c08f93488e030961f6001dc630fd2c2")
(setf (get dji_osdk_ros::MissionHpGetInfoResponse :datatype-) "dji_osdk_ros/MissionHpGetInfoResponse")
(setf (get dji_osdk_ros::MissionHpGetInfoResponse :definition-)
      "---
MissionHotpointTask hotpoint_task
# for debugging usage
uint8 cmd_set
uint8 cmd_id
uint32 ack_data

================================================================================
MSG: dji_osdk_ros/MissionHotpointTask
float64 latitude  # degree
float64 longitude # degree
float64 altitude  # meter
float64 radius    # meter
float32 angular_speed #deg/s
uint8 is_clockwise
uint8 start_point
uint8 yaw_mode
")



(provide :dji_osdk_ros/MissionHpGetInfo "8c08f93488e030961f6001dc630fd2c2")


