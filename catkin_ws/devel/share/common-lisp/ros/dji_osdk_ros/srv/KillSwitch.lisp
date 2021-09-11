; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude KillSwitch-request.msg.html

(cl:defclass <KillSwitch-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass KillSwitch-request (<KillSwitch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KillSwitch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KillSwitch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<KillSwitch-request> is deprecated: use dji_osdk_ros-srv:KillSwitch-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <KillSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:enable-val is deprecated.  Use dji_osdk_ros-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KillSwitch-request>) ostream)
  "Serializes a message object of type '<KillSwitch-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KillSwitch-request>) istream)
  "Deserializes a message object of type '<KillSwitch-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KillSwitch-request>)))
  "Returns string type for a service object of type '<KillSwitch-request>"
  "dji_osdk_ros/KillSwitchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KillSwitch-request)))
  "Returns string type for a service object of type 'KillSwitch-request"
  "dji_osdk_ros/KillSwitchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KillSwitch-request>)))
  "Returns md5sum for a message object of type '<KillSwitch-request>"
  "29d58f387352c15c4e4f5763022ae875")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KillSwitch-request)))
  "Returns md5sum for a message object of type 'KillSwitch-request"
  "29d58f387352c15c4e4f5763022ae875")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KillSwitch-request>)))
  "Returns full string definition for message of type '<KillSwitch-request>"
  (cl:format cl:nil "#request~%bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KillSwitch-request)))
  "Returns full string definition for message of type 'KillSwitch-request"
  (cl:format cl:nil "#request~%bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KillSwitch-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KillSwitch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'KillSwitch-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude KillSwitch-response.msg.html

(cl:defclass <KillSwitch-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass KillSwitch-response (<KillSwitch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KillSwitch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KillSwitch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<KillSwitch-response> is deprecated: use dji_osdk_ros-srv:KillSwitch-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <KillSwitch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KillSwitch-response>) ostream)
  "Serializes a message object of type '<KillSwitch-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KillSwitch-response>) istream)
  "Deserializes a message object of type '<KillSwitch-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KillSwitch-response>)))
  "Returns string type for a service object of type '<KillSwitch-response>"
  "dji_osdk_ros/KillSwitchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KillSwitch-response)))
  "Returns string type for a service object of type 'KillSwitch-response"
  "dji_osdk_ros/KillSwitchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KillSwitch-response>)))
  "Returns md5sum for a message object of type '<KillSwitch-response>"
  "29d58f387352c15c4e4f5763022ae875")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KillSwitch-response)))
  "Returns md5sum for a message object of type 'KillSwitch-response"
  "29d58f387352c15c4e4f5763022ae875")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KillSwitch-response>)))
  "Returns full string definition for message of type '<KillSwitch-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KillSwitch-response)))
  "Returns full string definition for message of type 'KillSwitch-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KillSwitch-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KillSwitch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'KillSwitch-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'KillSwitch)))
  'KillSwitch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'KillSwitch)))
  'KillSwitch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KillSwitch)))
  "Returns string type for a service object of type '<KillSwitch>"
  "dji_osdk_ros/KillSwitch")