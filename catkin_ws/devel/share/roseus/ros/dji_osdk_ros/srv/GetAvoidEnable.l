;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::GetAvoidEnable)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'GetAvoidEnable (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::GETAVOIDENABLE")
  (make-package "DJI_OSDK_ROS::GETAVOIDENABLE"))
(unless (find-package "DJI_OSDK_ROS::GETAVOIDENABLEREQUEST")
  (make-package "DJI_OSDK_ROS::GETAVOIDENABLEREQUEST"))
(unless (find-package "DJI_OSDK_ROS::GETAVOIDENABLERESPONSE")
  (make-package "DJI_OSDK_ROS::GETAVOIDENABLERESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::GetAvoidEnableRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::GetAvoidEnableRequest
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

(defclass dji_osdk_ros::GetAvoidEnableResponse
  :super ros::object
  :slots (_result _horizon_avoid_enable_status _upwards_avoid_enable_status ))

(defmethod dji_osdk_ros::GetAvoidEnableResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:horizon_avoid_enable_status __horizon_avoid_enable_status) 0)
    ((:upwards_avoid_enable_status __upwards_avoid_enable_status) 0)
    )
   (send-super :init)
   (setq _result __result)
   (setq _horizon_avoid_enable_status (round __horizon_avoid_enable_status))
   (setq _upwards_avoid_enable_status (round __upwards_avoid_enable_status))
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:horizon_avoid_enable_status
   (&optional __horizon_avoid_enable_status)
   (if __horizon_avoid_enable_status (setq _horizon_avoid_enable_status __horizon_avoid_enable_status)) _horizon_avoid_enable_status)
  (:upwards_avoid_enable_status
   (&optional __upwards_avoid_enable_status)
   (if __upwards_avoid_enable_status (setq _upwards_avoid_enable_status __upwards_avoid_enable_status)) _upwards_avoid_enable_status)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; uint8 _horizon_avoid_enable_status
    1
    ;; uint8 _upwards_avoid_enable_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _horizon_avoid_enable_status
       (write-byte _horizon_avoid_enable_status s)
     ;; uint8 _upwards_avoid_enable_status
       (write-byte _upwards_avoid_enable_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _horizon_avoid_enable_status
     (setq _horizon_avoid_enable_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _upwards_avoid_enable_status
     (setq _upwards_avoid_enable_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::GetAvoidEnable
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::GetAvoidEnable :md5sum-) "12c68a1a9e8bfbd739c56cc5d4af2738")
(setf (get dji_osdk_ros::GetAvoidEnable :datatype-) "dji_osdk_ros/GetAvoidEnable")
(setf (get dji_osdk_ros::GetAvoidEnable :request) dji_osdk_ros::GetAvoidEnableRequest)
(setf (get dji_osdk_ros::GetAvoidEnable :response) dji_osdk_ros::GetAvoidEnableResponse)

(defmethod dji_osdk_ros::GetAvoidEnableRequest
  (:response () (instance dji_osdk_ros::GetAvoidEnableResponse :init)))

(setf (get dji_osdk_ros::GetAvoidEnableRequest :md5sum-) "12c68a1a9e8bfbd739c56cc5d4af2738")
(setf (get dji_osdk_ros::GetAvoidEnableRequest :datatype-) "dji_osdk_ros/GetAvoidEnableRequest")
(setf (get dji_osdk_ros::GetAvoidEnableRequest :definition-)
      "#request
---
#response
bool result
uint8 horizon_avoid_enable_status #0:disable 1:enable 0xF:invalid
uint8 upwards_avoid_enable_status
")

(setf (get dji_osdk_ros::GetAvoidEnableResponse :md5sum-) "12c68a1a9e8bfbd739c56cc5d4af2738")
(setf (get dji_osdk_ros::GetAvoidEnableResponse :datatype-) "dji_osdk_ros/GetAvoidEnableResponse")
(setf (get dji_osdk_ros::GetAvoidEnableResponse :definition-)
      "#request
---
#response
bool result
uint8 horizon_avoid_enable_status #0:disable 1:enable 0xF:invalid
uint8 upwards_avoid_enable_status
")



(provide :dji_osdk_ros/GetAvoidEnable "12c68a1a9e8bfbd739c56cc5d4af2738")


