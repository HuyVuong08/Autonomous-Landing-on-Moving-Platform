; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude SetAvoidEnable-request.msg.html

(cl:defclass <SetAvoidEnable-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetAvoidEnable-request (<SetAvoidEnable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAvoidEnable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAvoidEnable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetAvoidEnable-request> is deprecated: use dji_osdk_ros-srv:SetAvoidEnable-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <SetAvoidEnable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:enable-val is deprecated.  Use dji_osdk_ros-srv:enable instead.")
  (enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAvoidEnable-request>) ostream)
  "Serializes a message object of type '<SetAvoidEnable-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAvoidEnable-request>) istream)
  "Deserializes a message object of type '<SetAvoidEnable-request>"
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAvoidEnable-request>)))
  "Returns string type for a service object of type '<SetAvoidEnable-request>"
  "dji_osdk_ros/SetAvoidEnableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAvoidEnable-request)))
  "Returns string type for a service object of type 'SetAvoidEnable-request"
  "dji_osdk_ros/SetAvoidEnableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAvoidEnable-request>)))
  "Returns md5sum for a message object of type '<SetAvoidEnable-request>"
  "29d58f387352c15c4e4f5763022ae875")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAvoidEnable-request)))
  "Returns md5sum for a message object of type 'SetAvoidEnable-request"
  "29d58f387352c15c4e4f5763022ae875")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAvoidEnable-request>)))
  "Returns full string definition for message of type '<SetAvoidEnable-request>"
  (cl:format cl:nil "#request~%bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAvoidEnable-request)))
  "Returns full string definition for message of type 'SetAvoidEnable-request"
  (cl:format cl:nil "#request~%bool enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAvoidEnable-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAvoidEnable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAvoidEnable-request
    (cl:cons ':enable (enable msg))
))
;//! \htmlinclude SetAvoidEnable-response.msg.html

(cl:defclass <SetAvoidEnable-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetAvoidEnable-response (<SetAvoidEnable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetAvoidEnable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetAvoidEnable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetAvoidEnable-response> is deprecated: use dji_osdk_ros-srv:SetAvoidEnable-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetAvoidEnable-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetAvoidEnable-response>) ostream)
  "Serializes a message object of type '<SetAvoidEnable-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetAvoidEnable-response>) istream)
  "Deserializes a message object of type '<SetAvoidEnable-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetAvoidEnable-response>)))
  "Returns string type for a service object of type '<SetAvoidEnable-response>"
  "dji_osdk_ros/SetAvoidEnableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAvoidEnable-response)))
  "Returns string type for a service object of type 'SetAvoidEnable-response"
  "dji_osdk_ros/SetAvoidEnableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetAvoidEnable-response>)))
  "Returns md5sum for a message object of type '<SetAvoidEnable-response>"
  "29d58f387352c15c4e4f5763022ae875")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetAvoidEnable-response)))
  "Returns md5sum for a message object of type 'SetAvoidEnable-response"
  "29d58f387352c15c4e4f5763022ae875")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetAvoidEnable-response>)))
  "Returns full string definition for message of type '<SetAvoidEnable-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetAvoidEnable-response)))
  "Returns full string definition for message of type 'SetAvoidEnable-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetAvoidEnable-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetAvoidEnable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetAvoidEnable-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetAvoidEnable)))
  'SetAvoidEnable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetAvoidEnable)))
  'SetAvoidEnable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetAvoidEnable)))
  "Returns string type for a service object of type '<SetAvoidEnable>"
  "dji_osdk_ros/SetAvoidEnable")