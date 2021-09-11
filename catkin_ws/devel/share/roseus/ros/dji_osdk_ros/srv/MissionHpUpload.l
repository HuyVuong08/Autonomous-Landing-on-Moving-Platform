;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::MissionHpUpload)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'MissionHpUpload (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::MISSIONHPUPLOAD")
  (make-package "DJI_OSDK_ROS::MISSIONHPUPLOAD"))
(unless (find-package "DJI_OSDK_ROS::MISSIONHPUPLOADREQUEST")
  (make-package "DJI_OSDK_ROS::MISSIONHPUPLOADREQUEST"))
(unless (find-package "DJI_OSDK_ROS::MISSIONHPUPLOADRESPONSE")
  (make-package "DJI_OSDK_ROS::MISSIONHPUPLOADRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::MissionHpUploadRequest
  :super ros::object
  :slots (_hotpoint_task ))

(defmethod dji_osdk_ros::MissionHpUploadRequest
  (:init
   (&key
    ((:hotpoint_task __hotpoint_task) (instance dji_osdk_ros::MissionHotpointTask :init))
    )
   (send-super :init)
   (setq _hotpoint_task __hotpoint_task)
   self)
  (:hotpoint_task
   (&rest __hotpoint_task)
   (if (keywordp (car __hotpoint_task))
       (send* _hotpoint_task __hotpoint_task)
     (progn
       (if __hotpoint_task (setq _hotpoint_task (car __hotpoint_task)))
       _hotpoint_task)))
  (:serialization-length
   ()
   (+
    ;; dji_osdk_ros/MissionHotpointTask _hotpoint_task
    (send _hotpoint_task :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_osdk_ros/MissionHotpointTask _hotpoint_task
       (send _hotpoint_task :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_osdk_ros/MissionHotpointTask _hotpoint_task
     (send _hotpoint_task :deserialize buf ptr-) (incf ptr- (send _hotpoint_task :serialization-length))
   ;;
   self)
  )

(defclass dji_osdk_ros::MissionHpUploadResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_osdk_ros::MissionHpUploadResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:cmd_set __cmd_set) 0)
    ((:cmd_id __cmd_id) 0)
    ((:ack_data __ack_data) 0)
    )
   (send-super :init)
   (setq _result __result)
   (setq _cmd_set (round __cmd_set))
   (setq _cmd_id (round __cmd_id))
   (setq _ack_data (round __ack_data))
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
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
    ;; bool _result
    1
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
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _cmd_set
     (setq _cmd_set (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _ack_data
     (setq _ack_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_osdk_ros::MissionHpUpload
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::MissionHpUpload :md5sum-) "af658341aaed3be3d18e0bcbefcd2cd9")
(setf (get dji_osdk_ros::MissionHpUpload :datatype-) "dji_osdk_ros/MissionHpUpload")
(setf (get dji_osdk_ros::MissionHpUpload :request) dji_osdk_ros::MissionHpUploadRequest)
(setf (get dji_osdk_ros::MissionHpUpload :response) dji_osdk_ros::MissionHpUploadResponse)

(defmethod dji_osdk_ros::MissionHpUploadRequest
  (:response () (instance dji_osdk_ros::MissionHpUploadResponse :init)))

(setf (get dji_osdk_ros::MissionHpUploadRequest :md5sum-) "af658341aaed3be3d18e0bcbefcd2cd9")
(setf (get dji_osdk_ros::MissionHpUploadRequest :datatype-) "dji_osdk_ros/MissionHpUploadRequest")
(setf (get dji_osdk_ros::MissionHpUploadRequest :definition-)
      "MissionHotpointTask hotpoint_task

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
---
bool result
# for debugging usage
uint8 cmd_set
uint8 cmd_id
uint32 ack_data
")

(setf (get dji_osdk_ros::MissionHpUploadResponse :md5sum-) "af658341aaed3be3d18e0bcbefcd2cd9")
(setf (get dji_osdk_ros::MissionHpUploadResponse :datatype-) "dji_osdk_ros/MissionHpUploadResponse")
(setf (get dji_osdk_ros::MissionHpUploadResponse :definition-)
      "MissionHotpointTask hotpoint_task

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
---
bool result
# for debugging usage
uint8 cmd_set
uint8 cmd_id
uint32 ack_data
")



(provide :dji_osdk_ros/MissionHpUpload "af658341aaed3be3d18e0bcbefcd2cd9")


