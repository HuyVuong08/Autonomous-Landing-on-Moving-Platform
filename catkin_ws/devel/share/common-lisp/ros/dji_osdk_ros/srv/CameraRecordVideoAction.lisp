; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraRecordVideoAction-request.msg.html

(cl:defclass <CameraRecordVideoAction-request> (roslisp-msg-protocol:ros-message)
  ((start_stop
    :reader start_stop
    :initarg :start_stop
    :type cl:fixnum
    :initform 0)
   (payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraRecordVideoAction-request (<CameraRecordVideoAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraRecordVideoAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraRecordVideoAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraRecordVideoAction-request> is deprecated: use dji_osdk_ros-srv:CameraRecordVideoAction-request instead.")))

(cl:ensure-generic-function 'start_stop-val :lambda-list '(m))
(cl:defmethod start_stop-val ((m <CameraRecordVideoAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:start_stop-val is deprecated.  Use dji_osdk_ros-srv:start_stop instead.")
  (start_stop m))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraRecordVideoAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraRecordVideoAction-request>) ostream)
  "Serializes a message object of type '<CameraRecordVideoAction-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_stop)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraRecordVideoAction-request>) istream)
  "Deserializes a message object of type '<CameraRecordVideoAction-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_stop)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraRecordVideoAction-request>)))
  "Returns string type for a service object of type '<CameraRecordVideoAction-request>"
  "dji_osdk_ros/CameraRecordVideoActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraRecordVideoAction-request)))
  "Returns string type for a service object of type 'CameraRecordVideoAction-request"
  "dji_osdk_ros/CameraRecordVideoActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraRecordVideoAction-request>)))
  "Returns md5sum for a message object of type '<CameraRecordVideoAction-request>"
  "3e73f84c6b55e276ab42b0e25e1ff3c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraRecordVideoAction-request)))
  "Returns md5sum for a message object of type 'CameraRecordVideoAction-request"
  "3e73f84c6b55e276ab42b0e25e1ff3c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraRecordVideoAction-request>)))
  "Returns full string definition for message of type '<CameraRecordVideoAction-request>"
  (cl:format cl:nil "#request~%uint8 start_stop~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraRecordVideoAction-request)))
  "Returns full string definition for message of type 'CameraRecordVideoAction-request"
  (cl:format cl:nil "#request~%uint8 start_stop~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraRecordVideoAction-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraRecordVideoAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraRecordVideoAction-request
    (cl:cons ':start_stop (start_stop msg))
    (cl:cons ':payload_index (payload_index msg))
))
;//! \htmlinclude CameraRecordVideoAction-response.msg.html

(cl:defclass <CameraRecordVideoAction-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraRecordVideoAction-response (<CameraRecordVideoAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraRecordVideoAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraRecordVideoAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraRecordVideoAction-response> is deprecated: use dji_osdk_ros-srv:CameraRecordVideoAction-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraRecordVideoAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraRecordVideoAction-response>) ostream)
  "Serializes a message object of type '<CameraRecordVideoAction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraRecordVideoAction-response>) istream)
  "Deserializes a message object of type '<CameraRecordVideoAction-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraRecordVideoAction-response>)))
  "Returns string type for a service object of type '<CameraRecordVideoAction-response>"
  "dji_osdk_ros/CameraRecordVideoActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraRecordVideoAction-response)))
  "Returns string type for a service object of type 'CameraRecordVideoAction-response"
  "dji_osdk_ros/CameraRecordVideoActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraRecordVideoAction-response>)))
  "Returns md5sum for a message object of type '<CameraRecordVideoAction-response>"
  "3e73f84c6b55e276ab42b0e25e1ff3c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraRecordVideoAction-response)))
  "Returns md5sum for a message object of type 'CameraRecordVideoAction-response"
  "3e73f84c6b55e276ab42b0e25e1ff3c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraRecordVideoAction-response>)))
  "Returns full string definition for message of type '<CameraRecordVideoAction-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraRecordVideoAction-response)))
  "Returns full string definition for message of type 'CameraRecordVideoAction-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraRecordVideoAction-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraRecordVideoAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraRecordVideoAction-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraRecordVideoAction)))
  'CameraRecordVideoAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraRecordVideoAction)))
  'CameraRecordVideoAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraRecordVideoAction)))
  "Returns string type for a service object of type '<CameraRecordVideoAction>"
  "dji_osdk_ros/CameraRecordVideoAction")