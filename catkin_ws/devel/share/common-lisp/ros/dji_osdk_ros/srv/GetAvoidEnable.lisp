; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude GetAvoidEnable-request.msg.html

(cl:defclass <GetAvoidEnable-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetAvoidEnable-request (<GetAvoidEnable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAvoidEnable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAvoidEnable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetAvoidEnable-request> is deprecated: use dji_osdk_ros-srv:GetAvoidEnable-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAvoidEnable-request>) ostream)
  "Serializes a message object of type '<GetAvoidEnable-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAvoidEnable-request>) istream)
  "Deserializes a message object of type '<GetAvoidEnable-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAvoidEnable-request>)))
  "Returns string type for a service object of type '<GetAvoidEnable-request>"
  "dji_osdk_ros/GetAvoidEnableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAvoidEnable-request)))
  "Returns string type for a service object of type 'GetAvoidEnable-request"
  "dji_osdk_ros/GetAvoidEnableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAvoidEnable-request>)))
  "Returns md5sum for a message object of type '<GetAvoidEnable-request>"
  "12c68a1a9e8bfbd739c56cc5d4af2738")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAvoidEnable-request)))
  "Returns md5sum for a message object of type 'GetAvoidEnable-request"
  "12c68a1a9e8bfbd739c56cc5d4af2738")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAvoidEnable-request>)))
  "Returns full string definition for message of type '<GetAvoidEnable-request>"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAvoidEnable-request)))
  "Returns full string definition for message of type 'GetAvoidEnable-request"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAvoidEnable-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAvoidEnable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAvoidEnable-request
))
;//! \htmlinclude GetAvoidEnable-response.msg.html

(cl:defclass <GetAvoidEnable-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (horizon_avoid_enable_status
    :reader horizon_avoid_enable_status
    :initarg :horizon_avoid_enable_status
    :type cl:fixnum
    :initform 0)
   (upwards_avoid_enable_status
    :reader upwards_avoid_enable_status
    :initarg :upwards_avoid_enable_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetAvoidEnable-response (<GetAvoidEnable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetAvoidEnable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetAvoidEnable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetAvoidEnable-response> is deprecated: use dji_osdk_ros-srv:GetAvoidEnable-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetAvoidEnable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'horizon_avoid_enable_status-val :lambda-list '(m))
(cl:defmethod horizon_avoid_enable_status-val ((m <GetAvoidEnable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:horizon_avoid_enable_status-val is deprecated.  Use dji_osdk_ros-srv:horizon_avoid_enable_status instead.")
  (horizon_avoid_enable_status m))

(cl:ensure-generic-function 'upwards_avoid_enable_status-val :lambda-list '(m))
(cl:defmethod upwards_avoid_enable_status-val ((m <GetAvoidEnable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:upwards_avoid_enable_status-val is deprecated.  Use dji_osdk_ros-srv:upwards_avoid_enable_status instead.")
  (upwards_avoid_enable_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetAvoidEnable-response>) ostream)
  "Serializes a message object of type '<GetAvoidEnable-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horizon_avoid_enable_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'upwards_avoid_enable_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetAvoidEnable-response>) istream)
  "Deserializes a message object of type '<GetAvoidEnable-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horizon_avoid_enable_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'upwards_avoid_enable_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetAvoidEnable-response>)))
  "Returns string type for a service object of type '<GetAvoidEnable-response>"
  "dji_osdk_ros/GetAvoidEnableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAvoidEnable-response)))
  "Returns string type for a service object of type 'GetAvoidEnable-response"
  "dji_osdk_ros/GetAvoidEnableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetAvoidEnable-response>)))
  "Returns md5sum for a message object of type '<GetAvoidEnable-response>"
  "12c68a1a9e8bfbd739c56cc5d4af2738")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetAvoidEnable-response)))
  "Returns md5sum for a message object of type 'GetAvoidEnable-response"
  "12c68a1a9e8bfbd739c56cc5d4af2738")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetAvoidEnable-response>)))
  "Returns full string definition for message of type '<GetAvoidEnable-response>"
  (cl:format cl:nil "#response~%bool result~%uint8 horizon_avoid_enable_status #0:disable 1:enable 0xF:invalid~%uint8 upwards_avoid_enable_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetAvoidEnable-response)))
  "Returns full string definition for message of type 'GetAvoidEnable-response"
  (cl:format cl:nil "#response~%bool result~%uint8 horizon_avoid_enable_status #0:disable 1:enable 0xF:invalid~%uint8 upwards_avoid_enable_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetAvoidEnable-response>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetAvoidEnable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetAvoidEnable-response
    (cl:cons ':result (result msg))
    (cl:cons ':horizon_avoid_enable_status (horizon_avoid_enable_status msg))
    (cl:cons ':upwards_avoid_enable_status (upwards_avoid_enable_status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetAvoidEnable)))
  'GetAvoidEnable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetAvoidEnable)))
  'GetAvoidEnable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetAvoidEnable)))
  "Returns string type for a service object of type '<GetAvoidEnable>"
  "dji_osdk_ros/GetAvoidEnable")