; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraEV-request.msg.html

(cl:defclass <CameraEV-request> (roslisp-msg-protocol:ros-message)
  ((payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0)
   (exposure_mode
    :reader exposure_mode
    :initarg :exposure_mode
    :type cl:fixnum
    :initform 0)
   (exposure_compensation
    :reader exposure_compensation
    :initarg :exposure_compensation
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraEV-request (<CameraEV-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraEV-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraEV-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraEV-request> is deprecated: use dji_osdk_ros-srv:CameraEV-request instead.")))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraEV-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))

(cl:ensure-generic-function 'exposure_mode-val :lambda-list '(m))
(cl:defmethod exposure_mode-val ((m <CameraEV-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:exposure_mode-val is deprecated.  Use dji_osdk_ros-srv:exposure_mode instead.")
  (exposure_mode m))

(cl:ensure-generic-function 'exposure_compensation-val :lambda-list '(m))
(cl:defmethod exposure_compensation-val ((m <CameraEV-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:exposure_compensation-val is deprecated.  Use dji_osdk_ros-srv:exposure_compensation instead.")
  (exposure_compensation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraEV-request>) ostream)
  "Serializes a message object of type '<CameraEV-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure_compensation)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraEV-request>) istream)
  "Deserializes a message object of type '<CameraEV-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure_compensation)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraEV-request>)))
  "Returns string type for a service object of type '<CameraEV-request>"
  "dji_osdk_ros/CameraEVRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraEV-request)))
  "Returns string type for a service object of type 'CameraEV-request"
  "dji_osdk_ros/CameraEVRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraEV-request>)))
  "Returns md5sum for a message object of type '<CameraEV-request>"
  "8afce101181274778612bcace32344e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraEV-request)))
  "Returns md5sum for a message object of type 'CameraEV-request"
  "8afce101181274778612bcace32344e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraEV-request>)))
  "Returns full string definition for message of type '<CameraEV-request>"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 exposure_mode #see enum class ExposureMode in common_type.h~%uint8 exposure_compensation #see enum class ExposureCompensation in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraEV-request)))
  "Returns full string definition for message of type 'CameraEV-request"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 exposure_mode #see enum class ExposureMode in common_type.h~%uint8 exposure_compensation #see enum class ExposureCompensation in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraEV-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraEV-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraEV-request
    (cl:cons ':payload_index (payload_index msg))
    (cl:cons ':exposure_mode (exposure_mode msg))
    (cl:cons ':exposure_compensation (exposure_compensation msg))
))
;//! \htmlinclude CameraEV-response.msg.html

(cl:defclass <CameraEV-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraEV-response (<CameraEV-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraEV-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraEV-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraEV-response> is deprecated: use dji_osdk_ros-srv:CameraEV-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraEV-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraEV-response>) ostream)
  "Serializes a message object of type '<CameraEV-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraEV-response>) istream)
  "Deserializes a message object of type '<CameraEV-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraEV-response>)))
  "Returns string type for a service object of type '<CameraEV-response>"
  "dji_osdk_ros/CameraEVResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraEV-response)))
  "Returns string type for a service object of type 'CameraEV-response"
  "dji_osdk_ros/CameraEVResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraEV-response>)))
  "Returns md5sum for a message object of type '<CameraEV-response>"
  "8afce101181274778612bcace32344e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraEV-response)))
  "Returns md5sum for a message object of type 'CameraEV-response"
  "8afce101181274778612bcace32344e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraEV-response>)))
  "Returns full string definition for message of type '<CameraEV-response>"
  (cl:format cl:nil "#reponse~%bool result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraEV-response)))
  "Returns full string definition for message of type 'CameraEV-response"
  (cl:format cl:nil "#reponse~%bool result~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraEV-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraEV-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraEV-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraEV)))
  'CameraEV-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraEV)))
  'CameraEV-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraEV)))
  "Returns string type for a service object of type '<CameraEV>"
  "dji_osdk_ros/CameraEV")