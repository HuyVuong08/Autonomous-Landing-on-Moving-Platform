; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraStartShootSinglePhoto-request.msg.html

(cl:defclass <CameraStartShootSinglePhoto-request> (roslisp-msg-protocol:ros-message)
  ((payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraStartShootSinglePhoto-request (<CameraStartShootSinglePhoto-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStartShootSinglePhoto-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStartShootSinglePhoto-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraStartShootSinglePhoto-request> is deprecated: use dji_osdk_ros-srv:CameraStartShootSinglePhoto-request instead.")))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraStartShootSinglePhoto-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStartShootSinglePhoto-request>) ostream)
  "Serializes a message object of type '<CameraStartShootSinglePhoto-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStartShootSinglePhoto-request>) istream)
  "Deserializes a message object of type '<CameraStartShootSinglePhoto-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStartShootSinglePhoto-request>)))
  "Returns string type for a service object of type '<CameraStartShootSinglePhoto-request>"
  "dji_osdk_ros/CameraStartShootSinglePhotoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStartShootSinglePhoto-request)))
  "Returns string type for a service object of type 'CameraStartShootSinglePhoto-request"
  "dji_osdk_ros/CameraStartShootSinglePhotoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStartShootSinglePhoto-request>)))
  "Returns md5sum for a message object of type '<CameraStartShootSinglePhoto-request>"
  "71b2b29d454b340190356e9e51a9c2fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStartShootSinglePhoto-request)))
  "Returns md5sum for a message object of type 'CameraStartShootSinglePhoto-request"
  "71b2b29d454b340190356e9e51a9c2fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStartShootSinglePhoto-request>)))
  "Returns full string definition for message of type '<CameraStartShootSinglePhoto-request>"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStartShootSinglePhoto-request)))
  "Returns full string definition for message of type 'CameraStartShootSinglePhoto-request"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStartShootSinglePhoto-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStartShootSinglePhoto-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStartShootSinglePhoto-request
    (cl:cons ':payload_index (payload_index msg))
))
;//! \htmlinclude CameraStartShootSinglePhoto-response.msg.html

(cl:defclass <CameraStartShootSinglePhoto-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraStartShootSinglePhoto-response (<CameraStartShootSinglePhoto-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStartShootSinglePhoto-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStartShootSinglePhoto-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraStartShootSinglePhoto-response> is deprecated: use dji_osdk_ros-srv:CameraStartShootSinglePhoto-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraStartShootSinglePhoto-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStartShootSinglePhoto-response>) ostream)
  "Serializes a message object of type '<CameraStartShootSinglePhoto-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStartShootSinglePhoto-response>) istream)
  "Deserializes a message object of type '<CameraStartShootSinglePhoto-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStartShootSinglePhoto-response>)))
  "Returns string type for a service object of type '<CameraStartShootSinglePhoto-response>"
  "dji_osdk_ros/CameraStartShootSinglePhotoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStartShootSinglePhoto-response)))
  "Returns string type for a service object of type 'CameraStartShootSinglePhoto-response"
  "dji_osdk_ros/CameraStartShootSinglePhotoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStartShootSinglePhoto-response>)))
  "Returns md5sum for a message object of type '<CameraStartShootSinglePhoto-response>"
  "71b2b29d454b340190356e9e51a9c2fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStartShootSinglePhoto-response)))
  "Returns md5sum for a message object of type 'CameraStartShootSinglePhoto-response"
  "71b2b29d454b340190356e9e51a9c2fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStartShootSinglePhoto-response>)))
  "Returns full string definition for message of type '<CameraStartShootSinglePhoto-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStartShootSinglePhoto-response)))
  "Returns full string definition for message of type 'CameraStartShootSinglePhoto-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStartShootSinglePhoto-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStartShootSinglePhoto-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStartShootSinglePhoto-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraStartShootSinglePhoto)))
  'CameraStartShootSinglePhoto-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraStartShootSinglePhoto)))
  'CameraStartShootSinglePhoto-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStartShootSinglePhoto)))
  "Returns string type for a service object of type '<CameraStartShootSinglePhoto>"
  "dji_osdk_ros/CameraStartShootSinglePhoto")