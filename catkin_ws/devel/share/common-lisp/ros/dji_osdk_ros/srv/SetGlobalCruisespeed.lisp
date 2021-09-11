; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude SetGlobalCruisespeed-request.msg.html

(cl:defclass <SetGlobalCruisespeed-request> (roslisp-msg-protocol:ros-message)
  ((global_cruisespeed
    :reader global_cruisespeed
    :initarg :global_cruisespeed
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetGlobalCruisespeed-request (<SetGlobalCruisespeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGlobalCruisespeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGlobalCruisespeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetGlobalCruisespeed-request> is deprecated: use dji_osdk_ros-srv:SetGlobalCruisespeed-request instead.")))

(cl:ensure-generic-function 'global_cruisespeed-val :lambda-list '(m))
(cl:defmethod global_cruisespeed-val ((m <SetGlobalCruisespeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:global_cruisespeed-val is deprecated.  Use dji_osdk_ros-srv:global_cruisespeed instead.")
  (global_cruisespeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGlobalCruisespeed-request>) ostream)
  "Serializes a message object of type '<SetGlobalCruisespeed-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'global_cruisespeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGlobalCruisespeed-request>) istream)
  "Deserializes a message object of type '<SetGlobalCruisespeed-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'global_cruisespeed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGlobalCruisespeed-request>)))
  "Returns string type for a service object of type '<SetGlobalCruisespeed-request>"
  "dji_osdk_ros/SetGlobalCruisespeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGlobalCruisespeed-request)))
  "Returns string type for a service object of type 'SetGlobalCruisespeed-request"
  "dji_osdk_ros/SetGlobalCruisespeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGlobalCruisespeed-request>)))
  "Returns md5sum for a message object of type '<SetGlobalCruisespeed-request>"
  "e19b70d4008bdcfcf34ff2b1bd83474e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGlobalCruisespeed-request)))
  "Returns md5sum for a message object of type 'SetGlobalCruisespeed-request"
  "e19b70d4008bdcfcf34ff2b1bd83474e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGlobalCruisespeed-request>)))
  "Returns full string definition for message of type '<SetGlobalCruisespeed-request>"
  (cl:format cl:nil "#request~%# Global cruise speed of mission~%# unit: m/s~%# range:[0,WayPointV2InitSettings::maxFlightSpeed]~%float32 global_cruisespeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGlobalCruisespeed-request)))
  "Returns full string definition for message of type 'SetGlobalCruisespeed-request"
  (cl:format cl:nil "#request~%# Global cruise speed of mission~%# unit: m/s~%# range:[0,WayPointV2InitSettings::maxFlightSpeed]~%float32 global_cruisespeed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGlobalCruisespeed-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGlobalCruisespeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGlobalCruisespeed-request
    (cl:cons ':global_cruisespeed (global_cruisespeed msg))
))
;//! \htmlinclude SetGlobalCruisespeed-response.msg.html

(cl:defclass <SetGlobalCruisespeed-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetGlobalCruisespeed-response (<SetGlobalCruisespeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGlobalCruisespeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGlobalCruisespeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetGlobalCruisespeed-response> is deprecated: use dji_osdk_ros-srv:SetGlobalCruisespeed-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetGlobalCruisespeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGlobalCruisespeed-response>) ostream)
  "Serializes a message object of type '<SetGlobalCruisespeed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGlobalCruisespeed-response>) istream)
  "Deserializes a message object of type '<SetGlobalCruisespeed-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGlobalCruisespeed-response>)))
  "Returns string type for a service object of type '<SetGlobalCruisespeed-response>"
  "dji_osdk_ros/SetGlobalCruisespeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGlobalCruisespeed-response)))
  "Returns string type for a service object of type 'SetGlobalCruisespeed-response"
  "dji_osdk_ros/SetGlobalCruisespeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGlobalCruisespeed-response>)))
  "Returns md5sum for a message object of type '<SetGlobalCruisespeed-response>"
  "e19b70d4008bdcfcf34ff2b1bd83474e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGlobalCruisespeed-response)))
  "Returns md5sum for a message object of type 'SetGlobalCruisespeed-response"
  "e19b70d4008bdcfcf34ff2b1bd83474e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGlobalCruisespeed-response>)))
  "Returns full string definition for message of type '<SetGlobalCruisespeed-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGlobalCruisespeed-response)))
  "Returns full string definition for message of type 'SetGlobalCruisespeed-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGlobalCruisespeed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGlobalCruisespeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGlobalCruisespeed-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGlobalCruisespeed)))
  'SetGlobalCruisespeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGlobalCruisespeed)))
  'SetGlobalCruisespeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGlobalCruisespeed)))
  "Returns string type for a service object of type '<SetGlobalCruisespeed>"
  "dji_osdk_ros/SetGlobalCruisespeed")