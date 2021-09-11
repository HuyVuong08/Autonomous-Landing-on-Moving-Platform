; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraStopShootPhoto-request.msg.html

(cl:defclass <CameraStopShootPhoto-request> (roslisp-msg-protocol:ros-message)
  ((payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraStopShootPhoto-request (<CameraStopShootPhoto-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStopShootPhoto-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStopShootPhoto-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraStopShootPhoto-request> is deprecated: use dji_osdk_ros-srv:CameraStopShootPhoto-request instead.")))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraStopShootPhoto-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStopShootPhoto-request>) ostream)
  "Serializes a message object of type '<CameraStopShootPhoto-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStopShootPhoto-request>) istream)
  "Deserializes a message object of type '<CameraStopShootPhoto-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStopShootPhoto-request>)))
  "Returns string type for a service object of type '<CameraStopShootPhoto-request>"
  "dji_osdk_ros/CameraStopShootPhotoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStopShootPhoto-request)))
  "Returns string type for a service object of type 'CameraStopShootPhoto-request"
  "dji_osdk_ros/CameraStopShootPhotoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStopShootPhoto-request>)))
  "Returns md5sum for a message object of type '<CameraStopShootPhoto-request>"
  "71b2b29d454b340190356e9e51a9c2fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStopShootPhoto-request)))
  "Returns md5sum for a message object of type 'CameraStopShootPhoto-request"
  "71b2b29d454b340190356e9e51a9c2fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStopShootPhoto-request>)))
  "Returns full string definition for message of type '<CameraStopShootPhoto-request>"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStopShootPhoto-request)))
  "Returns full string definition for message of type 'CameraStopShootPhoto-request"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStopShootPhoto-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStopShootPhoto-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStopShootPhoto-request
    (cl:cons ':payload_index (payload_index msg))
))
;//! \htmlinclude CameraStopShootPhoto-response.msg.html

(cl:defclass <CameraStopShootPhoto-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraStopShootPhoto-response (<CameraStopShootPhoto-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStopShootPhoto-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStopShootPhoto-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraStopShootPhoto-response> is deprecated: use dji_osdk_ros-srv:CameraStopShootPhoto-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraStopShootPhoto-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStopShootPhoto-response>) ostream)
  "Serializes a message object of type '<CameraStopShootPhoto-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStopShootPhoto-response>) istream)
  "Deserializes a message object of type '<CameraStopShootPhoto-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStopShootPhoto-response>)))
  "Returns string type for a service object of type '<CameraStopShootPhoto-response>"
  "dji_osdk_ros/CameraStopShootPhotoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStopShootPhoto-response)))
  "Returns string type for a service object of type 'CameraStopShootPhoto-response"
  "dji_osdk_ros/CameraStopShootPhotoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStopShootPhoto-response>)))
  "Returns md5sum for a message object of type '<CameraStopShootPhoto-response>"
  "71b2b29d454b340190356e9e51a9c2fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStopShootPhoto-response)))
  "Returns md5sum for a message object of type 'CameraStopShootPhoto-response"
  "71b2b29d454b340190356e9e51a9c2fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStopShootPhoto-response>)))
  "Returns full string definition for message of type '<CameraStopShootPhoto-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStopShootPhoto-response)))
  "Returns full string definition for message of type 'CameraStopShootPhoto-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStopShootPhoto-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStopShootPhoto-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStopShootPhoto-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraStopShootPhoto)))
  'CameraStopShootPhoto-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraStopShootPhoto)))
  'CameraStopShootPhoto-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStopShootPhoto)))
  "Returns string type for a service object of type '<CameraStopShootPhoto>"
  "dji_osdk_ros/CameraStopShootPhoto")