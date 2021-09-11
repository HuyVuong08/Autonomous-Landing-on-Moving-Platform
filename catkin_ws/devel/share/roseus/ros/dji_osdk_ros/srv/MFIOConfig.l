;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::MFIOConfig)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'MFIOConfig (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::MFIOCONFIG")
  (make-package "DJI_OSDK_ROS::MFIOCONFIG"))
(unless (find-package "DJI_OSDK_ROS::MFIOCONFIGREQUEST")
  (make-package "DJI_OSDK_ROS::MFIOCONFIGREQUEST"))
(unless (find-package "DJI_OSDK_ROS::MFIOCONFIGRESPONSE")
  (make-package "DJI_OSDK_ROS::MFIOCONFIGRESPONSE"))

(in-package "ROS")





(intern "*MODE_PWM_OUT*" (find-package "DJI_OSDK_ROS::MFIOCONFIGREQUEST"))
(shadow '*MODE_PWM_OUT* (find-package "DJI_OSDK_ROS::MFIOCONFIGREQUEST"))
(defconstant dji_osdk_ros::MFIOConfigRequest::*MODE_PWM_OUT* 0)
(intern "*MODE_GPIO_OUT*" (find-package "DJI_OSDK_ROS::MFIOCONFIGREQUEST"))
(shadow '*MODE_GPIO_OUT* (find-package "DJI_OSDK_ROS::MFIOCONFIGREQUEST"))
(defconstant dji_osdk_ros::MFIOConfigRequest::*MODE_GPIO_OUT* 2)
(intern "*MODE_GPIO_IN*" (find-package "DJI_OSDK_ROS::MFIOCONFIGREQUEST"))
(shadow '*MODE_GPIO_IN* (find-package "DJI_OSDK_ROS::MFIOCONFIGREQUEST"))
(defconstant dji_osdk_ros::MFIOConfigRequest::*MODE_GPIO_IN* 3)
(intern "*MODE_ADC*" (find-package "DJI_OSDK_ROS::MFIOCONFIGREQUEST"))
(shadow '*MODE_ADC* (find-package "DJI_OSDK_ROS::MFIOCONFIGREQUEST"))
(defconstant dji_osdk_ros::MFIOConfigRequest::*MODE_ADC* 4)

(defun dji_osdk_ros::MFIOConfigRequest-to-symbol (const)
  (cond
        ((= const 0) 'dji_osdk_ros::MFIOConfigRequest::*MODE_PWM_OUT*)
        ((= const 2) 'dji_osdk_ros::MFIOConfigRequest::*MODE_GPIO_OUT*)
        ((= const 3) 'dji_osdk_ros::MFIOConfigRequest::*MODE_GPIO_IN*)
        ((= const 4) 'dji_osdk_ros::MFIOConfigRequest::*MODE_ADC*)
        (t nil)))

(defclass dji_osdk_ros::MFIOConfigRequest
  :super ros::object
  :slots (_mode _channel _init_on_time_us _pwm_freq ))

(defmethod dji_osdk_ros::MFIOConfigRequest
  (:init
   (&key
    ((:mode __mode) 0)
    ((:channel __channel) 0)
    ((:init_on_time_us __init_on_time_us) 0)
    ((:pwm_freq __pwm_freq) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _channel (round __channel))
   (setq _init_on_time_us (round __init_on_time_us))
   (setq _pwm_freq (round __pwm_freq))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:init_on_time_us
   (&optional __init_on_time_us)
   (if __init_on_time_us (setq _init_on_time_us __init_on_time_us)) _init_on_time_us)
  (:pwm_freq
   (&optional __pwm_freq)
   (if __pwm_freq (setq _pwm_freq __pwm_freq)) _pwm_freq)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _channel
    1
    ;; uint32 _init_on_time_us
    4
    ;; uint16 _pwm_freq
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _channel
       (write-byte _channel s)
     ;; uint32 _init_on_time_us
       (write-long _init_on_time_us s)
     ;; uint16 _pwm_freq
       (write-word _pwm_freq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _init_on_time_us
     (setq _init_on_time_us (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _pwm_freq
     (setq _pwm_freq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dji_osdk_ros::MFIOConfigResponse
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::MFIOConfigResponse
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

(defclass dji_osdk_ros::MFIOConfig
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::MFIOConfig :md5sum-) "ad06bda475c7f13453680ee626114de0")
(setf (get dji_osdk_ros::MFIOConfig :datatype-) "dji_osdk_ros/MFIOConfig")
(setf (get dji_osdk_ros::MFIOConfig :request) dji_osdk_ros::MFIOConfigRequest)
(setf (get dji_osdk_ros::MFIOConfig :response) dji_osdk_ros::MFIOConfigResponse)

(defmethod dji_osdk_ros::MFIOConfigRequest
  (:response () (instance dji_osdk_ros::MFIOConfigResponse :init)))

(setf (get dji_osdk_ros::MFIOConfigRequest :md5sum-) "ad06bda475c7f13453680ee626114de0")
(setf (get dji_osdk_ros::MFIOConfigRequest :datatype-) "dji_osdk_ros/MFIOConfigRequest")
(setf (get dji_osdk_ros::MFIOConfigRequest :definition-)
      "#constant for mode
uint8 MODE_PWM_OUT  = 0
#uint8 MODE_PWM_IN  = 1 #PWM_IN is not functioning correctly
uint8 MODE_GPIO_OUT = 2
uint8 MODE_GPIO_IN  = 3
uint8 MODE_ADC      = 4

#request
uint8 mode              # see constants above for possible modes
uint8 channel           # 0-7
uint32 init_on_time_us  # on time for pwm duty cycle in micro-seconds
uint16 pwm_freq         # set pwm frequency in Hz
---

")

(setf (get dji_osdk_ros::MFIOConfigResponse :md5sum-) "ad06bda475c7f13453680ee626114de0")
(setf (get dji_osdk_ros::MFIOConfigResponse :datatype-) "dji_osdk_ros/MFIOConfigResponse")
(setf (get dji_osdk_ros::MFIOConfigResponse :definition-)
      "#constant for mode
uint8 MODE_PWM_OUT  = 0
#uint8 MODE_PWM_IN  = 1 #PWM_IN is not functioning correctly
uint8 MODE_GPIO_OUT = 2
uint8 MODE_GPIO_IN  = 3
uint8 MODE_ADC      = 4

#request
uint8 mode              # see constants above for possible modes
uint8 channel           # 0-7
uint32 init_on_time_us  # on time for pwm duty cycle in micro-seconds
uint16 pwm_freq         # set pwm frequency in Hz
---

")



(provide :dji_osdk_ros/MFIOConfig "ad06bda475c7f13453680ee626114de0")


