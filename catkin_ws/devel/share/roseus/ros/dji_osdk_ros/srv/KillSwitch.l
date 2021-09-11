;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::KillSwitch)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'KillSwitch (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::KILLSWITCH")
  (make-package "DJI_OSDK_ROS::KILLSWITCH"))
(unless (find-package "DJI_OSDK_ROS::KILLSWITCHREQUEST")
  (make-package "DJI_OSDK_ROS::KILLSWITCHREQUEST"))
(unless (find-package "DJI_OSDK_ROS::KILLSWITCHRESPONSE")
  (make-package "DJI_OSDK_ROS::KILLSWITCHRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::KillSwitchRequest
  :super ros::object
  :slots (_enable ))

(defmethod dji_osdk_ros::KillSwitchRequest
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::KillSwitchResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::KillSwitchResponse
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

(defclass dji_osdk_ros::KillSwitch
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::KillSwitch :md5sum-) "29d58f387352c15c4e4f5763022ae875")
(setf (get dji_osdk_ros::KillSwitch :datatype-) "dji_osdk_ros/KillSwitch")
(setf (get dji_osdk_ros::KillSwitch :request) dji_osdk_ros::KillSwitchRequest)
(setf (get dji_osdk_ros::KillSwitch :response) dji_osdk_ros::KillSwitchResponse)

(defmethod dji_osdk_ros::KillSwitchRequest
  (:response () (instance dji_osdk_ros::KillSwitchResponse :init)))

(setf (get dji_osdk_ros::KillSwitchRequest :md5sum-) "29d58f387352c15c4e4f5763022ae875")
(setf (get dji_osdk_ros::KillSwitchRequest :datatype-) "dji_osdk_ros/KillSwitchRequest")
(setf (get dji_osdk_ros::KillSwitchRequest :definition-)
      "#request
bool enable
---
#response
bool result
")

(setf (get dji_osdk_ros::KillSwitchResponse :md5sum-) "29d58f387352c15c4e4f5763022ae875")
(setf (get dji_osdk_ros::KillSwitchResponse :datatype-) "dji_osdk_ros/KillSwitchResponse")
(setf (get dji_osdk_ros::KillSwitchResponse :definition-)
      "#request
bool enable
---
#response
bool result
")



(provide :dji_osdk_ros/KillSwitch "29d58f387352c15c4e4f5763022ae875")


