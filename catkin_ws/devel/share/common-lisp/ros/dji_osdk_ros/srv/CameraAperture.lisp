; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraAperture-request.msg.html

(cl:defclass <CameraAperture-request> (roslisp-msg-protocol:ros-message)
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
   (aperture
    :reader aperture
    :initarg :aperture
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraAperture-request (<CameraAperture-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraAperture-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraAperture-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraAperture-request> is deprecated: use dji_osdk_ros-srv:CameraAperture-request instead.")))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraAperture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))

(cl:ensure-generic-function 'exposure_mode-val :lambda-list '(m))
(cl:defmethod exposure_mode-val ((m <CameraAperture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:exposure_mode-val is deprecated.  Use dji_osdk_ros-srv:exposure_mode instead.")
  (exposure_mode m))

(cl:ensure-generic-function 'aperture-val :lambda-list '(m))
(cl:defmethod aperture-val ((m <CameraAperture-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:aperture-val is deprecated.  Use dji_osdk_ros-srv:aperture instead.")
  (aperture m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraAperture-request>) ostream)
  "Serializes a message object of type '<CameraAperture-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aperture)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'aperture)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraAperture-request>) istream)
  "Deserializes a message object of type '<CameraAperture-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'aperture)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'aperture)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraAperture-request>)))
  "Returns string type for a service object of type '<CameraAperture-request>"
  "dji_osdk_ros/CameraApertureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraAperture-request)))
  "Returns string type for a service object of type 'CameraAperture-request"
  "dji_osdk_ros/CameraApertureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraAperture-request>)))
  "Returns md5sum for a message object of type '<CameraAperture-request>"
  "e44af7504f55d5049bcbe4380a70428e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraAperture-request)))
  "Returns md5sum for a message object of type 'CameraAperture-request"
  "e44af7504f55d5049bcbe4380a70428e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraAperture-request>)))
  "Returns full string definition for message of type '<CameraAperture-request>"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 exposure_mode #see enum class ExposureMode in common_type.h~%uint16 aperture      #see enum class Aperture in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraAperture-request)))
  "Returns full string definition for message of type 'CameraAperture-request"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 exposure_mode #see enum class ExposureMode in common_type.h~%uint16 aperture      #see enum class Aperture in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraAperture-request>))
  (cl:+ 0
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraAperture-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraAperture-request
    (cl:cons ':payload_index (payload_index msg))
    (cl:cons ':exposure_mode (exposure_mode msg))
    (cl:cons ':aperture (aperture msg))
))
;//! \htmlinclude CameraAperture-response.msg.html

(cl:defclass <CameraAperture-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraAperture-response (<CameraAperture-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraAperture-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraAperture-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraAperture-response> is deprecated: use dji_osdk_ros-srv:CameraAperture-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraAperture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraAperture-response>) ostream)
  "Serializes a message object of type '<CameraAperture-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraAperture-response>) istream)
  "Deserializes a message object of type '<CameraAperture-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraAperture-response>)))
  "Returns string type for a service object of type '<CameraAperture-response>"
  "dji_osdk_ros/CameraApertureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraAperture-response)))
  "Returns string type for a service object of type 'CameraAperture-response"
  "dji_osdk_ros/CameraApertureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraAperture-response>)))
  "Returns md5sum for a message object of type '<CameraAperture-response>"
  "e44af7504f55d5049bcbe4380a70428e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraAperture-response)))
  "Returns md5sum for a message object of type 'CameraAperture-response"
  "e44af7504f55d5049bcbe4380a70428e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraAperture-response>)))
  "Returns full string definition for message of type '<CameraAperture-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraAperture-response)))
  "Returns full string definition for message of type 'CameraAperture-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraAperture-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraAperture-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraAperture-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraAperture)))
  'CameraAperture-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraAperture)))
  'CameraAperture-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraAperture)))
  "Returns string type for a service object of type '<CameraAperture>"
  "dji_osdk_ros/CameraAperture")