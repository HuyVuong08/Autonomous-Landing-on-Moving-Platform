; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraTapZoomPoint-request.msg.html

(cl:defclass <CameraTapZoomPoint-request> (roslisp-msg-protocol:ros-message)
  ((payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0)
   (multiplier
    :reader multiplier
    :initarg :multiplier
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

(cl:defclass CameraTapZoomPoint-request (<CameraTapZoomPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraTapZoomPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraTapZoomPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraTapZoomPoint-request> is deprecated: use dji_osdk_ros-srv:CameraTapZoomPoint-request instead.")))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraTapZoomPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))

(cl:ensure-generic-function 'multiplier-val :lambda-list '(m))
(cl:defmethod multiplier-val ((m <CameraTapZoomPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:multiplier-val is deprecated.  Use dji_osdk_ros-srv:multiplier instead.")
  (multiplier m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <CameraTapZoomPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:x-val is deprecated.  Use dji_osdk_ros-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <CameraTapZoomPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:y-val is deprecated.  Use dji_osdk_ros-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraTapZoomPoint-request>) ostream)
  "Serializes a message object of type '<CameraTapZoomPoint-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'multiplier)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraTapZoomPoint-request>) istream)
  "Deserializes a message object of type '<CameraTapZoomPoint-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'multiplier)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraTapZoomPoint-request>)))
  "Returns string type for a service object of type '<CameraTapZoomPoint-request>"
  "dji_osdk_ros/CameraTapZoomPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraTapZoomPoint-request)))
  "Returns string type for a service object of type 'CameraTapZoomPoint-request"
  "dji_osdk_ros/CameraTapZoomPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraTapZoomPoint-request>)))
  "Returns md5sum for a message object of type '<CameraTapZoomPoint-request>"
  "33200383ac53d55f08577c7641a6b09c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraTapZoomPoint-request)))
  "Returns md5sum for a message object of type 'CameraTapZoomPoint-request"
  "33200383ac53d55f08577c7641a6b09c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraTapZoomPoint-request>)))
  "Returns full string definition for message of type '<CameraTapZoomPoint-request>"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 multiplier #Data struct of tap zoom multiplier used by user. Limit: 1~~5~%float32 x  # range from 0~~1, top left corner is origin point~%float32 y  # range from 0~~1, top left corner is origin point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraTapZoomPoint-request)))
  "Returns full string definition for message of type 'CameraTapZoomPoint-request"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 multiplier #Data struct of tap zoom multiplier used by user. Limit: 1~~5~%float32 x  # range from 0~~1, top left corner is origin point~%float32 y  # range from 0~~1, top left corner is origin point~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraTapZoomPoint-request>))
  (cl:+ 0
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraTapZoomPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraTapZoomPoint-request
    (cl:cons ':payload_index (payload_index msg))
    (cl:cons ':multiplier (multiplier msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude CameraTapZoomPoint-response.msg.html

(cl:defclass <CameraTapZoomPoint-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraTapZoomPoint-response (<CameraTapZoomPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraTapZoomPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraTapZoomPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraTapZoomPoint-response> is deprecated: use dji_osdk_ros-srv:CameraTapZoomPoint-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraTapZoomPoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraTapZoomPoint-response>) ostream)
  "Serializes a message object of type '<CameraTapZoomPoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraTapZoomPoint-response>) istream)
  "Deserializes a message object of type '<CameraTapZoomPoint-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraTapZoomPoint-response>)))
  "Returns string type for a service object of type '<CameraTapZoomPoint-response>"
  "dji_osdk_ros/CameraTapZoomPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraTapZoomPoint-response)))
  "Returns string type for a service object of type 'CameraTapZoomPoint-response"
  "dji_osdk_ros/CameraTapZoomPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraTapZoomPoint-response>)))
  "Returns md5sum for a message object of type '<CameraTapZoomPoint-response>"
  "33200383ac53d55f08577c7641a6b09c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraTapZoomPoint-response)))
  "Returns md5sum for a message object of type 'CameraTapZoomPoint-response"
  "33200383ac53d55f08577c7641a6b09c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraTapZoomPoint-response>)))
  "Returns full string definition for message of type '<CameraTapZoomPoint-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraTapZoomPoint-response)))
  "Returns full string definition for message of type 'CameraTapZoomPoint-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraTapZoomPoint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraTapZoomPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraTapZoomPoint-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraTapZoomPoint)))
  'CameraTapZoomPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraTapZoomPoint)))
  'CameraTapZoomPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraTapZoomPoint)))
  "Returns string type for a service object of type '<CameraTapZoomPoint>"
  "dji_osdk_ros/CameraTapZoomPoint")