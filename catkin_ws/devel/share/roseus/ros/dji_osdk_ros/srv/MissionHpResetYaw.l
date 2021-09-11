;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::MissionHpResetYaw)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'MissionHpResetYaw (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::MISSIONHPRESETYAW")
  (make-package "DJI_OSDK_ROS::MISSIONHPRESETYAW"))
(unless (find-package "DJI_OSDK_ROS::MISSIONHPRESETYAWREQUEST")
  (make-package "DJI_OSDK_ROS::MISSIONHPRESETYAWREQUEST"))
(unless (find-package "DJI_OSDK_ROS::MISSIONHPRESETYAWRESPONSE")
  (make-package "DJI_OSDK_ROS::MISSIONHPRESETYAWRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::MissionHpResetYawRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::MissionHpResetYawRequest
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

(defclass dji_osdk_ros::MissionHpResetYawResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_osdk_ros::MissionHpResetYawResponse
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

(defclass dji_osdk_ros::MissionHpResetYaw
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::MissionHpResetYaw :md5sum-) "f03b0bc279b265c40946c1011df83013")
(setf (get dji_osdk_ros::MissionHpResetYaw :datatype-) "dji_osdk_ros/MissionHpResetYaw")
(setf (get dji_osdk_ros::MissionHpResetYaw :request) dji_osdk_ros::MissionHpResetYawRequest)
(setf (get dji_osdk_ros::MissionHpResetYaw :response) dji_osdk_ros::MissionHpResetYawResponse)

(defmethod dji_osdk_ros::MissionHpResetYawRequest
  (:response () (instance dji_osdk_ros::MissionHpResetYawResponse :init)))

(setf (get dji_osdk_ros::MissionHpResetYawRequest :md5sum-) "f03b0bc279b265c40946c1011df83013")
(setf (get dji_osdk_ros::MissionHpResetYawRequest :datatype-) "dji_osdk_ros/MissionHpResetYawRequest")
(setf (get dji_osdk_ros::MissionHpResetYawRequest :definition-)
      "---
bool result
# for debugging usage
uint8 cmd_set
uint8 cmd_id
uint32 ack_data
")

(setf (get dji_osdk_ros::MissionHpResetYawResponse :md5sum-) "f03b0bc279b265c40946c1011df83013")
(setf (get dji_osdk_ros::MissionHpResetYawResponse :datatype-) "dji_osdk_ros/MissionHpResetYawResponse")
(setf (get dji_osdk_ros::MissionHpResetYawResponse :definition-)
      "---
bool result
# for debugging usage
uint8 cmd_set
uint8 cmd_id
uint32 ack_data
")



(provide :dji_osdk_ros/MissionHpResetYaw "f03b0bc279b265c40946c1011df83013")


