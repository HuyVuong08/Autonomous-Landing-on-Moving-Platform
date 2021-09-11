;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::MFIO)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'MFIO (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::MFIO")
  (make-package "DJI_OSDK_ROS::MFIO"))
(unless (find-package "DJI_OSDK_ROS::MFIOREQUEST")
  (make-package "DJI_OSDK_ROS::MFIOREQUEST"))
(unless (find-package "DJI_OSDK_ROS::MFIORESPONSE")
  (make-package "DJI_OSDK_ROS::MFIORESPONSE"))

(in-package "ROS")





(intern "*MODE_PWM_OUT*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*MODE_PWM_OUT* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*MODE_PWM_OUT* 0)
(intern "*MODE_GPIO_OUT*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*MODE_GPIO_OUT* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*MODE_GPIO_OUT* 2)
(intern "*MODE_GPIO_IN*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*MODE_GPIO_IN* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*MODE_GPIO_IN* 3)
(intern "*MODE_ADC*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*MODE_ADC* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*MODE_ADC* 4)
(intern "*CHANNEL_0*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*CHANNEL_0* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*CHANNEL_0* 0)
(intern "*CHANNEL_1*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*CHANNEL_1* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*CHANNEL_1* 1)
(intern "*CHANNEL_2*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*CHANNEL_2* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*CHANNEL_2* 2)
(intern "*CHANNEL_3*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*CHANNEL_3* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*CHANNEL_3* 3)
(intern "*CHANNEL_4*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*CHANNEL_4* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*CHANNEL_4* 4)
(intern "*CHANNEL_5*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*CHANNEL_5* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*CHANNEL_5* 5)
(intern "*CHANNEL_6*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*CHANNEL_6* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*CHANNEL_6* 6)
(intern "*CHANNEL_7*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*CHANNEL_7* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*CHANNEL_7* 7)
(intern "*TURN_ON*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*TURN_ON* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*TURN_ON* 0)
(intern "*TURN_OFF*" (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(shadow '*TURN_OFF* (find-package "DJI_OSDK_ROS::MFIOREQUEST"))
(defconstant dji_osdk_ros::MFIORequest::*TURN_OFF* 1)

(defun dji_osdk_ros::MFIORequest-to-symbol (const)
  (cond
        ((= const 0) 'dji_osdk_ros::MFIORequest::*MODE_PWM_OUT*)
        ((= const 2) 'dji_osdk_ros::MFIORequest::*MODE_GPIO_OUT*)
        ((= const 3) 'dji_osdk_ros::MFIORequest::*MODE_GPIO_IN*)
        ((= const 4) 'dji_osdk_ros::MFIORequest::*MODE_ADC*)
        ((= const 0) 'dji_osdk_ros::MFIORequest::*CHANNEL_0*)
        ((= const 1) 'dji_osdk_ros::MFIORequest::*CHANNEL_1*)
        ((= const 2) 'dji_osdk_ros::MFIORequest::*CHANNEL_2*)
        ((= const 3) 'dji_osdk_ros::MFIORequest::*CHANNEL_3*)
        ((= const 4) 'dji_osdk_ros::MFIORequest::*CHANNEL_4*)
        ((= const 5) 'dji_osdk_ros::MFIORequest::*CHANNEL_5*)
        ((= const 6) 'dji_osdk_ros::MFIORequest::*CHANNEL_6*)
        ((= const 7) 'dji_osdk_ros::MFIORequest::*CHANNEL_7*)
        ((= const 0) 'dji_osdk_ros::MFIORequest::*TURN_ON*)
        ((= const 1) 'dji_osdk_ros::MFIORequest::*TURN_OFF*)
        (t nil)))

(defclass dji_osdk_ros::MFIORequest
  :super ros::object
  :slots (_action _mode _block _channel _init_on_time_us _gpio_value _pwm_freq ))

(defmethod dji_osdk_ros::MFIORequest
  (:init
   (&key
    ((:action __action) 0)
    ((:mode __mode) 0)
    ((:block __block) nil)
    ((:channel __channel) 0)
    ((:init_on_time_us __init_on_time_us) 0)
    ((:gpio_value __gpio_value) 0)
    ((:pwm_freq __pwm_freq) 0)
    )
   (send-super :init)
   (setq _action (round __action))
   (setq _mode (round __mode))
   (setq _block __block)
   (setq _channel (round __channel))
   (setq _init_on_time_us (round __init_on_time_us))
   (setq _gpio_value (round __gpio_value))
   (setq _pwm_freq (round __pwm_freq))
   self)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:block
   (&optional (__block :null))
   (if (not (eq __block :null)) (setq _block __block)) _block)
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:init_on_time_us
   (&optional __init_on_time_us)
   (if __init_on_time_us (setq _init_on_time_us __init_on_time_us)) _init_on_time_us)
  (:gpio_value
   (&optional __gpio_value)
   (if __gpio_value (setq _gpio_value __gpio_value)) _gpio_value)
  (:pwm_freq
   (&optional __pwm_freq)
   (if __pwm_freq (setq _pwm_freq __pwm_freq)) _pwm_freq)
  (:serialization-length
   ()
   (+
    ;; uint8 _action
    1
    ;; uint8 _mode
    1
    ;; bool _block
    1
    ;; uint8 _channel
    1
    ;; uint32 _init_on_time_us
    4
    ;; uint8 _gpio_value
    1
    ;; uint16 _pwm_freq
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _action
       (write-byte _action s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; bool _block
       (if _block (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _channel
       (write-byte _channel s)
     ;; uint32 _init_on_time_us
       (write-long _init_on_time_us s)
     ;; uint8 _gpio_value
       (write-byte _gpio_value s)
     ;; uint16 _pwm_freq
       (write-word _pwm_freq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _action
     (setq _action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _block
     (setq _block (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _channel
     (setq _channel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _init_on_time_us
     (setq _init_on_time_us (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _gpio_value
     (setq _gpio_value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _pwm_freq
     (setq _pwm_freq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dji_osdk_ros::MFIOResponse
  :super ros::object
  :slots (_read_value ))

(defmethod dji_osdk_ros::MFIOResponse
  (:init
   (&key
    ((:read_value __read_value) 0)
    )
   (send-super :init)
   (setq _read_value (round __read_value))
   self)
  (:read_value
   (&optional __read_value)
   (if __read_value (setq _read_value __read_value)) _read_value)
  (:serialization-length
   ()
   (+
    ;; uint32 _read_value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _read_value
       (write-long _read_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _read_value
     (setq _read_value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_osdk_ros::MFIO
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::MFIO :md5sum-) "d8aa2bbf4f5e4dc56bf0203ba284e596")
(setf (get dji_osdk_ros::MFIO :datatype-) "dji_osdk_ros/MFIO")
(setf (get dji_osdk_ros::MFIO :request) dji_osdk_ros::MFIORequest)
(setf (get dji_osdk_ros::MFIO :response) dji_osdk_ros::MFIOResponse)

(defmethod dji_osdk_ros::MFIORequest
  (:response () (instance dji_osdk_ros::MFIOResponse :init)))

(setf (get dji_osdk_ros::MFIORequest :md5sum-) "d8aa2bbf4f5e4dc56bf0203ba284e596")
(setf (get dji_osdk_ros::MFIORequest :datatype-) "dji_osdk_ros/MFIORequest")
(setf (get dji_osdk_ros::MFIORequest :definition-)
      "#constant for mode
uint8 MODE_PWM_OUT  = 0
#uint8 MODE_PWM_IN  = 1 #PWM_IN is not functioning correctly
uint8 MODE_GPIO_OUT = 2
uint8 MODE_GPIO_IN  = 3
uint8 MODE_ADC      = 4

uint8 CHANNEL_0 = 0
uint8 CHANNEL_1 = 1
uint8 CHANNEL_2 = 2
uint8 CHANNEL_3 = 3
uint8 CHANNEL_4 = 4
uint8 CHANNEL_5 = 5
uint8 CHANNEL_6 = 6
uint8 CHANNEL_7 = 7

uint8 TURN_ON   = 0     # Control PWM on/off
uint8 TURN_OFF  = 1

#request
uint8 action            # Turn On/Off, 0: ON    1: OFF
uint8 mode              # see constants above for possible modes
bool block              # Block/Non-block Ouput
uint8 channel           # 0-7
uint32 init_on_time_us  # on time for pwm duty cycle in micro-seconds, 0-20000(0%-100%)
uint8 gpio_value        # 0: Low, 1:High just for GPIO_OUT
uint16 pwm_freq         # set pwm frequency in Hz
---
uint32 read_value

")

(setf (get dji_osdk_ros::MFIOResponse :md5sum-) "d8aa2bbf4f5e4dc56bf0203ba284e596")
(setf (get dji_osdk_ros::MFIOResponse :datatype-) "dji_osdk_ros/MFIOResponse")
(setf (get dji_osdk_ros::MFIOResponse :definition-)
      "#constant for mode
uint8 MODE_PWM_OUT  = 0
#uint8 MODE_PWM_IN  = 1 #PWM_IN is not functioning correctly
uint8 MODE_GPIO_OUT = 2
uint8 MODE_GPIO_IN  = 3
uint8 MODE_ADC      = 4

uint8 CHANNEL_0 = 0
uint8 CHANNEL_1 = 1
uint8 CHANNEL_2 = 2
uint8 CHANNEL_3 = 3
uint8 CHANNEL_4 = 4
uint8 CHANNEL_5 = 5
uint8 CHANNEL_6 = 6
uint8 CHANNEL_7 = 7

uint8 TURN_ON   = 0     # Control PWM on/off
uint8 TURN_OFF  = 1

#request
uint8 action            # Turn On/Off, 0: ON    1: OFF
uint8 mode              # see constants above for possible modes
bool block              # Block/Non-block Ouput
uint8 channel           # 0-7
uint32 init_on_time_us  # on time for pwm duty cycle in micro-seconds, 0-20000(0%-100%)
uint8 gpio_value        # 0: Low, 1:High just for GPIO_OUT
uint16 pwm_freq         # set pwm frequency in Hz
---
uint32 read_value

")



(provide :dji_osdk_ros/MFIO "d8aa2bbf4f5e4dc56bf0203ba284e596")


