; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraFocusPoint-request.msg.html

(cl:defclass <CameraFocusPoint-request> (roslisp-msg-protocol:ros-message)
  ((payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass CameraFocusPoint-request (<CameraFocusPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraFocusPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraFocusPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraFocusPoint-request> is deprecated: use dji_osdk_ros-srv:CameraFocusPoint-request instead.")))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraFocusPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <CameraFocusPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:x-val is deprecated.  Use dji_osdk_ros-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <CameraFocusPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:y-val is deprecated.  Use dji_osdk_ros-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraFocusPoint-request>) ostream)
  "Serializes a message object of type '<CameraFocusPoint-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraFocusPoint-request>) istream)
  "Deserializes a message object of type '<CameraFocusPoint-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraFocusPoint-request>)))
  "Returns string type for a service object of type '<CameraFocusPoint-request>"
  "dji_osdk_ros/CameraFocusPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraFocusPoint-request)))
  "Returns string type for a service object of type 'CameraFocusPoint-request"
  "dji_osdk_ros/CameraFocusPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraFocusPoint-request>)))
  "Returns md5sum for a message object of type '<CameraFocusPoint-request>"
  "fb46a63ba2252cb3f94729a7bc8a8c55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraFocusPoint-request)))
  "Returns md5sum for a message object of type 'CameraFocusPoint-request"
  "fb46a63ba2252cb3f94729a7bc8a8c55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraFocusPoint-request>)))
  "Returns full string definition for message of type '<CameraFocusPoint-request>"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%float32 x #range from 0~~1, top left corner is origin point~%float32 y #range from 0~~1, top left corner is origin point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraFocusPoint-request)))
  "Returns full string definition for message of type 'CameraFocusPoint-request"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%float32 x #range from 0~~1, top left corner is origin point~%float32 y #range from 0~~1, top left corner is origin point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraFocusPoint-request>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraFocusPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraFocusPoint-request
    (cl:cons ':payload_index (payload_index msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude CameraFocusPoint-response.msg.html

(cl:defclass <CameraFocusPoint-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraFocusPoint-response (<CameraFocusPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraFocusPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraFocusPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraFocusPoint-response> is deprecated: use dji_osdk_ros-srv:CameraFocusPoint-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraFocusPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraFocusPoint-response>) ostream)
  "Serializes a message object of type '<CameraFocusPoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraFocusPoint-response>) istream)
  "Deserializes a message object of type '<CameraFocusPoint-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraFocusPoint-response>)))
  "Returns string type for a service object of type '<CameraFocusPoint-response>"
  "dji_osdk_ros/CameraFocusPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraFocusPoint-response)))
  "Returns string type for a service object of type 'CameraFocusPoint-response"
  "dji_osdk_ros/CameraFocusPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraFocusPoint-response>)))
  "Returns md5sum for a message object of type '<CameraFocusPoint-response>"
  "fb46a63ba2252cb3f94729a7bc8a8c55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraFocusPoint-response)))
  "Returns md5sum for a message object of type 'CameraFocusPoint-response"
  "fb46a63ba2252cb3f94729a7bc8a8c55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraFocusPoint-response>)))
  "Returns full string definition for message of type '<CameraFocusPoint-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraFocusPoint-response)))
  "Returns full string definition for message of type 'CameraFocusPoint-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraFocusPoint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraFocusPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraFocusPoint-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraFocusPoint)))
  'CameraFocusPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraFocusPoint)))
  'CameraFocusPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraFocusPoint)))
  "Returns string type for a service object of type '<CameraFocusPoint>"
  "dji_osdk_ros/CameraFocusPoint")