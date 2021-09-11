; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude MFIO-request.msg.html

(cl:defclass <MFIO-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (block
    :reader block
    :initarg :block
    :type cl:boolean
    :initform cl:nil)
   (channel
    :reader channel
    :initarg :channel
    :type cl:fixnum
    :initform 0)
   (init_on_time_us
    :reader init_on_time_us
    :initarg :init_on_time_us
    :type cl:integer
    :initform 0)
   (gpio_value
    :reader gpio_value
    :initarg :gpio_value
    :type cl:fixnum
    :initform 0)
   (pwm_freq
    :reader pwm_freq
    :initarg :pwm_freq
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MFIO-request (<MFIO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MFIO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MFIO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<MFIO-request> is deprecated: use dji_osdk_ros-srv:MFIO-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <MFIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:action-val is deprecated.  Use dji_osdk_ros-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <MFIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:mode-val is deprecated.  Use dji_osdk_ros-srv:mode instead.")
  (mode m))

(cl:ensure-generic-function 'block-val :lambda-list '(m))
(cl:defmethod block-val ((m <MFIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:block-val is deprecated.  Use dji_osdk_ros-srv:block instead.")
  (block m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <MFIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:channel-val is deprecated.  Use dji_osdk_ros-srv:channel instead.")
  (channel m))

(cl:ensure-generic-function 'init_on_time_us-val :lambda-list '(m))
(cl:defmethod init_on_time_us-val ((m <MFIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:init_on_time_us-val is deprecated.  Use dji_osdk_ros-srv:init_on_time_us instead.")
  (init_on_time_us m))

(cl:ensure-generic-function 'gpio_value-val :lambda-list '(m))
(cl:defmethod gpio_value-val ((m <MFIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:gpio_value-val is deprecated.  Use dji_osdk_ros-srv:gpio_value instead.")
  (gpio_value m))

(cl:ensure-generic-function 'pwm_freq-val :lambda-list '(m))
(cl:defmethod pwm_freq-val ((m <MFIO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:pwm_freq-val is deprecated.  Use dji_osdk_ros-srv:pwm_freq instead.")
  (pwm_freq m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MFIO-request>)))
    "Constants for message type '<MFIO-request>"
  '((:MODE_PWM_OUT . 0)
    (:MODE_GPIO_OUT . 2)
    (:MODE_GPIO_IN . 3)
    (:MODE_ADC . 4)
    (:CHANNEL_0 . 0)
    (:CHANNEL_1 . 1)
    (:CHANNEL_2 . 2)
    (:CHANNEL_3 . 3)
    (:CHANNEL_4 . 4)
    (:CHANNEL_5 . 5)
    (:CHANNEL_6 . 6)
    (:CHANNEL_7 . 7)
    (:TURN_ON . 0)
    (:TURN_OFF . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MFIO-request)))
    "Constants for message type 'MFIO-request"
  '((:MODE_PWM_OUT . 0)
    (:MODE_GPIO_OUT . 2)
    (:MODE_GPIO_IN . 3)
    (:MODE_ADC . 4)
    (:CHANNEL_0 . 0)
    (:CHANNEL_1 . 1)
    (:CHANNEL_2 . 2)
    (:CHANNEL_3 . 3)
    (:CHANNEL_4 . 4)
    (:CHANNEL_5 . 5)
    (:CHANNEL_6 . 6)
    (:CHANNEL_7 . 7)
    (:TURN_ON . 0)
    (:TURN_OFF . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MFIO-request>) ostream)
  "Serializes a message object of type '<MFIO-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'block) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'init_on_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'init_on_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'init_on_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'init_on_time_us)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpio_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_freq)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MFIO-request>) istream)
  "Deserializes a message object of type '<MFIO-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'block) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'channel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'init_on_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'init_on_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'init_on_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'init_on_time_us)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gpio_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pwm_freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'pwm_freq)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MFIO-request>)))
  "Returns string type for a service object of type '<MFIO-request>"
  "dji_osdk_ros/MFIORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MFIO-request)))
  "Returns string type for a service object of type 'MFIO-request"
  "dji_osdk_ros/MFIORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MFIO-request>)))
  "Returns md5sum for a message object of type '<MFIO-request>"
  "d8aa2bbf4f5e4dc56bf0203ba284e596")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MFIO-request)))
  "Returns md5sum for a message object of type 'MFIO-request"
  "d8aa2bbf4f5e4dc56bf0203ba284e596")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MFIO-request>)))
  "Returns full string definition for message of type '<MFIO-request>"
  (cl:format cl:nil "#constant for mode~%uint8 MODE_PWM_OUT  = 0~%#uint8 MODE_PWM_IN  = 1 #PWM_IN is not functioning correctly~%uint8 MODE_GPIO_OUT = 2~%uint8 MODE_GPIO_IN  = 3~%uint8 MODE_ADC      = 4~%~%uint8 CHANNEL_0 = 0~%uint8 CHANNEL_1 = 1~%uint8 CHANNEL_2 = 2~%uint8 CHANNEL_3 = 3~%uint8 CHANNEL_4 = 4~%uint8 CHANNEL_5 = 5~%uint8 CHANNEL_6 = 6~%uint8 CHANNEL_7 = 7~%~%uint8 TURN_ON   = 0     # Control PWM on/off~%uint8 TURN_OFF  = 1~%~%#request~%uint8 action            # Turn On/Off, 0: ON    1: OFF~%uint8 mode              # see constants above for possible modes~%bool block              # Block/Non-block Ouput~%uint8 channel           # 0-7~%uint32 init_on_time_us  # on time for pwm duty cycle in micro-seconds, 0-20000(0%-100%)~%uint8 gpio_value        # 0: Low, 1:High just for GPIO_OUT~%uint16 pwm_freq         # set pwm frequency in Hz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MFIO-request)))
  "Returns full string definition for message of type 'MFIO-request"
  (cl:format cl:nil "#constant for mode~%uint8 MODE_PWM_OUT  = 0~%#uint8 MODE_PWM_IN  = 1 #PWM_IN is not functioning correctly~%uint8 MODE_GPIO_OUT = 2~%uint8 MODE_GPIO_IN  = 3~%uint8 MODE_ADC      = 4~%~%uint8 CHANNEL_0 = 0~%uint8 CHANNEL_1 = 1~%uint8 CHANNEL_2 = 2~%uint8 CHANNEL_3 = 3~%uint8 CHANNEL_4 = 4~%uint8 CHANNEL_5 = 5~%uint8 CHANNEL_6 = 6~%uint8 CHANNEL_7 = 7~%~%uint8 TURN_ON   = 0     # Control PWM on/off~%uint8 TURN_OFF  = 1~%~%#request~%uint8 action            # Turn On/Off, 0: ON    1: OFF~%uint8 mode              # see constants above for possible modes~%bool block              # Block/Non-block Ouput~%uint8 channel           # 0-7~%uint32 init_on_time_us  # on time for pwm duty cycle in micro-seconds, 0-20000(0%-100%)~%uint8 gpio_value        # 0: Low, 1:High just for GPIO_OUT~%uint16 pwm_freq         # set pwm frequency in Hz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MFIO-request>))
  (cl:+ 0
     1
     1
     1
     1
     4
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MFIO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MFIO-request
    (cl:cons ':action (action msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':block (block msg))
    (cl:cons ':channel (channel msg))
    (cl:cons ':init_on_time_us (init_on_time_us msg))
    (cl:cons ':gpio_value (gpio_value msg))
    (cl:cons ':pwm_freq (pwm_freq msg))
))
;//! \htmlinclude MFIO-response.msg.html

(cl:defclass <MFIO-response> (roslisp-msg-protocol:ros-message)
  ((read_value
    :reader read_value
    :initarg :read_value
    :type cl:integer
    :initform 0))
)

(cl:defclass MFIO-response (<MFIO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MFIO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MFIO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<MFIO-response> is deprecated: use dji_osdk_ros-srv:MFIO-response instead.")))

(cl:ensure-generic-function 'read_value-val :lambda-list '(m))
(cl:defmethod read_value-val ((m <MFIO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:read_value-val is deprecated.  Use dji_osdk_ros-srv:read_value instead.")
  (read_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MFIO-response>) ostream)
  "Serializes a message object of type '<MFIO-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'read_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'read_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'read_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'read_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MFIO-response>) istream)
  "Deserializes a message object of type '<MFIO-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'read_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'read_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'read_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'read_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MFIO-response>)))
  "Returns string type for a service object of type '<MFIO-response>"
  "dji_osdk_ros/MFIOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MFIO-response)))
  "Returns string type for a service object of type 'MFIO-response"
  "dji_osdk_ros/MFIOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MFIO-response>)))
  "Returns md5sum for a message object of type '<MFIO-response>"
  "d8aa2bbf4f5e4dc56bf0203ba284e596")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MFIO-response)))
  "Returns md5sum for a message object of type 'MFIO-response"
  "d8aa2bbf4f5e4dc56bf0203ba284e596")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MFIO-response>)))
  "Returns full string definition for message of type '<MFIO-response>"
  (cl:format cl:nil "uint32 read_value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MFIO-response)))
  "Returns full string definition for message of type 'MFIO-response"
  (cl:format cl:nil "uint32 read_value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MFIO-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MFIO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MFIO-response
    (cl:cons ':read_value (read_value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MFIO)))
  'MFIO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MFIO)))
  'MFIO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MFIO)))
  "Returns string type for a service object of type '<MFIO>"
  "dji_osdk_ros/MFIO")