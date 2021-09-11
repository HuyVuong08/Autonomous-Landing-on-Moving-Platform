; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraISO-request.msg.html

(cl:defclass <CameraISO-request> (roslisp-msg-protocol:ros-message)
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
   (iso_data
    :reader iso_data
    :initarg :iso_data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraISO-request (<CameraISO-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraISO-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraISO-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraISO-request> is deprecated: use dji_osdk_ros-srv:CameraISO-request instead.")))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraISO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))

(cl:ensure-generic-function 'exposure_mode-val :lambda-list '(m))
(cl:defmethod exposure_mode-val ((m <CameraISO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:exposure_mode-val is deprecated.  Use dji_osdk_ros-srv:exposure_mode instead.")
  (exposure_mode m))

(cl:ensure-generic-function 'iso_data-val :lambda-list '(m))
(cl:defmethod iso_data-val ((m <CameraISO-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:iso_data-val is deprecated.  Use dji_osdk_ros-srv:iso_data instead.")
  (iso_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraISO-request>) ostream)
  "Serializes a message object of type '<CameraISO-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iso_data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraISO-request>) istream)
  "Deserializes a message object of type '<CameraISO-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'iso_data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraISO-request>)))
  "Returns string type for a service object of type '<CameraISO-request>"
  "dji_osdk_ros/CameraISORequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraISO-request)))
  "Returns string type for a service object of type 'CameraISO-request"
  "dji_osdk_ros/CameraISORequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraISO-request>)))
  "Returns md5sum for a message object of type '<CameraISO-request>"
  "621942490b0fe93137ed06987337a648")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraISO-request)))
  "Returns md5sum for a message object of type 'CameraISO-request"
  "621942490b0fe93137ed06987337a648")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraISO-request>)))
  "Returns full string definition for message of type '<CameraISO-request>"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 exposure_mode #see enum class ExposureMode in common_type.h~%uint8 iso_data #see enum class ISO in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraISO-request)))
  "Returns full string definition for message of type 'CameraISO-request"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 exposure_mode #see enum class ExposureMode in common_type.h~%uint8 iso_data #see enum class ISO in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraISO-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraISO-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraISO-request
    (cl:cons ':payload_index (payload_index msg))
    (cl:cons ':exposure_mode (exposure_mode msg))
    (cl:cons ':iso_data (iso_data msg))
))
;//! \htmlinclude CameraISO-response.msg.html

(cl:defclass <CameraISO-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraISO-response (<CameraISO-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraISO-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraISO-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraISO-response> is deprecated: use dji_osdk_ros-srv:CameraISO-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraISO-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraISO-response>) ostream)
  "Serializes a message object of type '<CameraISO-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraISO-response>) istream)
  "Deserializes a message object of type '<CameraISO-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraISO-response>)))
  "Returns string type for a service object of type '<CameraISO-response>"
  "dji_osdk_ros/CameraISOResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraISO-response)))
  "Returns string type for a service object of type 'CameraISO-response"
  "dji_osdk_ros/CameraISOResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraISO-response>)))
  "Returns md5sum for a message object of type '<CameraISO-response>"
  "621942490b0fe93137ed06987337a648")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraISO-response)))
  "Returns md5sum for a message object of type 'CameraISO-response"
  "621942490b0fe93137ed06987337a648")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraISO-response>)))
  "Returns full string definition for message of type '<CameraISO-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraISO-response)))
  "Returns full string definition for message of type 'CameraISO-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraISO-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraISO-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraISO-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraISO)))
  'CameraISO-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraISO)))
  'CameraISO-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraISO)))
  "Returns string type for a service object of type '<CameraISO>"
  "dji_osdk_ros/CameraISO")