;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::MFIOSetValue)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'MFIOSetValue (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::MFIOSETVALUE")
  (make-package "DJI_OSDK_ROS::MFIOSETVALUE"))
(unless (find-package "DJI_OSDK_ROS::MFIOSETVALUEREQUEST")
  (make-package "DJI_OSDK_ROS::MFIOSETVALUEREQUEST"))
(unless (find-package "DJI_OSDK_ROS::MFIOSETVALUERESPONSE")
  (make-package "DJI_OSDK_ROS::MFIOSETVALUERESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::MFIOSetValueRequest
  :super ros::object
  :slots (_channel _init_on_time_us ))

(defmethod dji_osdk_ros::MFIOSetValueRequest
  (:init
   (&key
    ((:channel __channel) 0)
    ((:init_on_time_us __init_on_time_us) 0)
    )
   (send-super :init)
   (setq _channel (round __channel))
   (setq _init_on_time_us (round __init_on_time_us))
   self)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:init_on_time_us
   (&optional __init_on_time_us)
   (if __init_on_time_us (setq _init_on_time_us __init_on_time_us)) _init_on_time_us)
  (:serialization-length
   ()
   (+
    ;; uint8 _channel
    1
    ;; uint32 _init_on_time_us
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _channel
       (write-byte _channel s)
     ;; uint32 _init_on_time_us
       (write-long _init_on_time_us s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _init_on_time_us
     (setq _init_on_time_us (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_osdk_ros::MFIOSetValueResponse
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::MFIOSetValueResponse
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

(defclass dji_osdk_ros::MFIOSetValue
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::MFIOSetValue :md5sum-) "7a1c84fd096204723ecbb1a57b618e28")
(setf (get dji_osdk_ros::MFIOSetValue :datatype-) "dji_osdk_ros/MFIOSetValue")
(setf (get dji_osdk_ros::MFIOSetValue :request) dji_osdk_ros::MFIOSetValueRequest)
(setf (get dji_osdk_ros::MFIOSetValue :response) dji_osdk_ros::MFIOSetValueResponse)

(defmethod dji_osdk_ros::MFIOSetValueRequest
  (:response () (instance dji_osdk_ros::MFIOSetValueResponse :init)))

(setf (get dji_osdk_ros::MFIOSetValueRequest :md5sum-) "7a1c84fd096204723ecbb1a57b618e28")
(setf (get dji_osdk_ros::MFIOSetValueRequest :datatype-) "dji_osdk_ros/MFIOSetValueRequest")
(setf (get dji_osdk_ros::MFIOSetValueRequest :definition-)
      "uint8 channel   # 0-7
uint32 init_on_time_us    # on time for pwm duty cycle in micro-seconds
---

")

(setf (get dji_osdk_ros::MFIOSetValueResponse :md5sum-) "7a1c84fd096204723ecbb1a57b618e28")
(setf (get dji_osdk_ros::MFIOSetValueResponse :datatype-) "dji_osdk_ros/MFIOSetValueResponse")
(setf (get dji_osdk_ros::MFIOSetValueResponse :definition-)
      "uint8 channel   # 0-7
uint32 init_on_time_us    # on time for pwm duty cycle in micro-seconds
---

")



(provide :dji_osdk_ros/MFIOSetValue "7a1c84fd096204723ecbb1a57b618e28")


