; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraSetZoomPara-request.msg.html

(cl:defclass <CameraSetZoomPara-request> (roslisp-msg-protocol:ros-message)
  ((payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0)
   (factor
    :reader factor
    :initarg :factor
    :type cl:float
    :initform 0.0))
)

(cl:defclass CameraSetZoomPara-request (<CameraSetZoomPara-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraSetZoomPara-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraSetZoomPara-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraSetZoomPara-request> is deprecated: use dji_osdk_ros-srv:CameraSetZoomPara-request instead.")))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraSetZoomPara-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))

(cl:ensure-generic-function 'factor-val :lambda-list '(m))
(cl:defmethod factor-val ((m <CameraSetZoomPara-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:factor-val is deprecated.  Use dji_osdk_ros-srv:factor instead.")
  (factor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraSetZoomPara-request>) ostream)
  "Serializes a message object of type '<CameraSetZoomPara-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraSetZoomPara-request>) istream)
  "Deserializes a message object of type '<CameraSetZoomPara-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'factor) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraSetZoomPara-request>)))
  "Returns string type for a service object of type '<CameraSetZoomPara-request>"
  "dji_osdk_ros/CameraSetZoomParaRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraSetZoomPara-request)))
  "Returns string type for a service object of type 'CameraSetZoomPara-request"
  "dji_osdk_ros/CameraSetZoomParaRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraSetZoomPara-request>)))
  "Returns md5sum for a message object of type '<CameraSetZoomPara-request>"
  "6c6cdab10079fad15384840dbc9835bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraSetZoomPara-request)))
  "Returns md5sum for a message object of type 'CameraSetZoomPara-request"
  "6c6cdab10079fad15384840dbc9835bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraSetZoomPara-request>)))
  "Returns full string definition for message of type '<CameraSetZoomPara-request>"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%float32 factor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraSetZoomPara-request)))
  "Returns full string definition for message of type 'CameraSetZoomPara-request"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%float32 factor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraSetZoomPara-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraSetZoomPara-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraSetZoomPara-request
    (cl:cons ':payload_index (payload_index msg))
    (cl:cons ':factor (factor msg))
))
;//! \htmlinclude CameraSetZoomPara-response.msg.html

(cl:defclass <CameraSetZoomPara-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraSetZoomPara-response (<CameraSetZoomPara-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraSetZoomPara-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraSetZoomPara-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraSetZoomPara-response> is deprecated: use dji_osdk_ros-srv:CameraSetZoomPara-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraSetZoomPara-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraSetZoomPara-response>) ostream)
  "Serializes a message object of type '<CameraSetZoomPara-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraSetZoomPara-response>) istream)
  "Deserializes a message object of type '<CameraSetZoomPara-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraSetZoomPara-response>)))
  "Returns string type for a service object of type '<CameraSetZoomPara-response>"
  "dji_osdk_ros/CameraSetZoomParaResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraSetZoomPara-response)))
  "Returns string type for a service object of type 'CameraSetZoomPara-response"
  "dji_osdk_ros/CameraSetZoomParaResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraSetZoomPara-response>)))
  "Returns md5sum for a message object of type '<CameraSetZoomPara-response>"
  "6c6cdab10079fad15384840dbc9835bd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraSetZoomPara-response)))
  "Returns md5sum for a message object of type 'CameraSetZoomPara-response"
  "6c6cdab10079fad15384840dbc9835bd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraSetZoomPara-response>)))
  "Returns full string definition for message of type '<CameraSetZoomPara-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraSetZoomPara-response)))
  "Returns full string definition for message of type 'CameraSetZoomPara-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraSetZoomPara-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraSetZoomPara-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraSetZoomPara-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraSetZoomPara)))
  'CameraSetZoomPara-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraSetZoomPara)))
  'CameraSetZoomPara-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraSetZoomPara)))
  "Returns string type for a service object of type '<CameraSetZoomPara>"
  "dji_osdk_ros/CameraSetZoomPara")