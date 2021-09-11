; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude GetGlobalCruisespeed-request.msg.html

(cl:defclass <GetGlobalCruisespeed-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetGlobalCruisespeed-request (<GetGlobalCruisespeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGlobalCruisespeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGlobalCruisespeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetGlobalCruisespeed-request> is deprecated: use dji_osdk_ros-srv:GetGlobalCruisespeed-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGlobalCruisespeed-request>) ostream)
  "Serializes a message object of type '<GetGlobalCruisespeed-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGlobalCruisespeed-request>) istream)
  "Deserializes a message object of type '<GetGlobalCruisespeed-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGlobalCruisespeed-request>)))
  "Returns string type for a service object of type '<GetGlobalCruisespeed-request>"
  "dji_osdk_ros/GetGlobalCruisespeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGlobalCruisespeed-request)))
  "Returns string type for a service object of type 'GetGlobalCruisespeed-request"
  "dji_osdk_ros/GetGlobalCruisespeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGlobalCruisespeed-request>)))
  "Returns md5sum for a message object of type '<GetGlobalCruisespeed-request>"
  "df3d2cfe28195de85b4c9680fe9f9068")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGlobalCruisespeed-request)))
  "Returns md5sum for a message object of type 'GetGlobalCruisespeed-request"
  "df3d2cfe28195de85b4c9680fe9f9068")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGlobalCruisespeed-request>)))
  "Returns full string definition for message of type '<GetGlobalCruisespeed-request>"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGlobalCruisespeed-request)))
  "Returns full string definition for message of type 'GetGlobalCruisespeed-request"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGlobalCruisespeed-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGlobalCruisespeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGlobalCruisespeed-request
))
;//! \htmlinclude GetGlobalCruisespeed-response.msg.html

(cl:defclass <GetGlobalCruisespeed-response> (roslisp-msg-protocol:ros-message)
  ((global_cruisespeed
    :reader global_cruisespeed
    :initarg :global_cruisespeed
    :type cl:float
    :initform 0.0)
   (result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetGlobalCruisespeed-response (<GetGlobalCruisespeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGlobalCruisespeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGlobalCruisespeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetGlobalCruisespeed-response> is deprecated: use dji_osdk_ros-srv:GetGlobalCruisespeed-response instead.")))

(cl:ensure-generic-function 'global_cruisespeed-val :lambda-list '(m))
(cl:defmethod global_cruisespeed-val ((m <GetGlobalCruisespeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:global_cruisespeed-val is deprecated.  Use dji_osdk_ros-srv:global_cruisespeed instead.")
  (global_cruisespeed m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetGlobalCruisespeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGlobalCruisespeed-response>) ostream)
  "Serializes a message object of type '<GetGlobalCruisespeed-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'global_cruisespeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGlobalCruisespeed-response>) istream)
  "Deserializes a message object of type '<GetGlobalCruisespeed-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'global_cruisespeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGlobalCruisespeed-response>)))
  "Returns string type for a service object of type '<GetGlobalCruisespeed-response>"
  "dji_osdk_ros/GetGlobalCruisespeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGlobalCruisespeed-response)))
  "Returns string type for a service object of type 'GetGlobalCruisespeed-response"
  "dji_osdk_ros/GetGlobalCruisespeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGlobalCruisespeed-response>)))
  "Returns md5sum for a message object of type '<GetGlobalCruisespeed-response>"
  "df3d2cfe28195de85b4c9680fe9f9068")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGlobalCruisespeed-response)))
  "Returns md5sum for a message object of type 'GetGlobalCruisespeed-response"
  "df3d2cfe28195de85b4c9680fe9f9068")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGlobalCruisespeed-response>)))
  "Returns full string definition for message of type '<GetGlobalCruisespeed-response>"
  (cl:format cl:nil "#response~%# Global cruise speed of mission~%# unit: m/s~%# range:[0,WayPointV2InitSettings::maxFlightSpeed]~%float32 global_cruisespeed~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGlobalCruisespeed-response)))
  "Returns full string definition for message of type 'GetGlobalCruisespeed-response"
  (cl:format cl:nil "#response~%# Global cruise speed of mission~%# unit: m/s~%# range:[0,WayPointV2InitSettings::maxFlightSpeed]~%float32 global_cruisespeed~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGlobalCruisespeed-response>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGlobalCruisespeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGlobalCruisespeed-response
    (cl:cons ':global_cruisespeed (global_cruisespeed msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGlobalCruisespeed)))
  'GetGlobalCruisespeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGlobalCruisespeed)))
  'GetGlobalCruisespeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGlobalCruisespeed)))
  "Returns string type for a service object of type '<GetGlobalCruisespeed>"
  "dji_osdk_ros/GetGlobalCruisespeed")