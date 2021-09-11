;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SetAvoidEnable)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SetAvoidEnable (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SETAVOIDENABLE")
  (make-package "DJI_OSDK_ROS::SETAVOIDENABLE"))
(unless (find-package "DJI_OSDK_ROS::SETAVOIDENABLEREQUEST")
  (make-package "DJI_OSDK_ROS::SETAVOIDENABLEREQUEST"))
(unless (find-package "DJI_OSDK_ROS::SETAVOIDENABLERESPONSE")
  (make-package "DJI_OSDK_ROS::SETAVOIDENABLERESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::SetAvoidEnableRequest
  :super ros::object
  :slots (_enable ))

(defmethod dji_osdk_ros::SetAvoidEnableRequest
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

(defclass dji_osdk_ros::SetAvoidEnableResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::SetAvoidEnableResponse
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

(defclass dji_osdk_ros::SetAvoidEnable
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SetAvoidEnable :md5sum-) "29d58f387352c15c4e4f5763022ae875")
(setf (get dji_osdk_ros::SetAvoidEnable :datatype-) "dji_osdk_ros/SetAvoidEnable")
(setf (get dji_osdk_ros::SetAvoidEnable :request) dji_osdk_ros::SetAvoidEnableRequest)
(setf (get dji_osdk_ros::SetAvoidEnable :response) dji_osdk_ros::SetAvoidEnableResponse)

(defmethod dji_osdk_ros::SetAvoidEnableRequest
  (:response () (instance dji_osdk_ros::SetAvoidEnableResponse :init)))

(setf (get dji_osdk_ros::SetAvoidEnableRequest :md5sum-) "29d58f387352c15c4e4f5763022ae875")
(setf (get dji_osdk_ros::SetAvoidEnableRequest :datatype-) "dji_osdk_ros/SetAvoidEnableRequest")
(setf (get dji_osdk_ros::SetAvoidEnableRequest :definition-)
      "#request
bool enable
---
#response
bool result
")

(setf (get dji_osdk_ros::SetAvoidEnableResponse :md5sum-) "29d58f387352c15c4e4f5763022ae875")
(setf (get dji_osdk_ros::SetAvoidEnableResponse :datatype-) "dji_osdk_ros/SetAvoidEnableResponse")
(setf (get dji_osdk_ros::SetAvoidEnableResponse :definition-)
      "#request
bool enable
---
#response
bool result
")



(provide :dji_osdk_ros/SetAvoidEnable "29d58f387352c15c4e4f5763022ae875")


