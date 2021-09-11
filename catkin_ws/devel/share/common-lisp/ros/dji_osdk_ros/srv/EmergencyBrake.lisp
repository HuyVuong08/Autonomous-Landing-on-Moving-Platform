; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude EmergencyBrake-request.msg.html

(cl:defclass <EmergencyBrake-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmergencyBrake-request (<EmergencyBrake-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmergencyBrake-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmergencyBrake-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<EmergencyBrake-request> is deprecated: use dji_osdk_ros-srv:EmergencyBrake-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmergencyBrake-request>) ostream)
  "Serializes a message object of type '<EmergencyBrake-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmergencyBrake-request>) istream)
  "Deserializes a message object of type '<EmergencyBrake-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmergencyBrake-request>)))
  "Returns string type for a service object of type '<EmergencyBrake-request>"
  "dji_osdk_ros/EmergencyBrakeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyBrake-request)))
  "Returns string type for a service object of type 'EmergencyBrake-request"
  "dji_osdk_ros/EmergencyBrakeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmergencyBrake-request>)))
  "Returns md5sum for a message object of type '<EmergencyBrake-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmergencyBrake-request)))
  "Returns md5sum for a message object of type 'EmergencyBrake-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmergencyBrake-request>)))
  "Returns full string definition for message of type '<EmergencyBrake-request>"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmergencyBrake-request)))
  "Returns full string definition for message of type 'EmergencyBrake-request"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmergencyBrake-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmergencyBrake-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmergencyBrake-request
))
;//! \htmlinclude EmergencyBrake-response.msg.html

(cl:defclass <EmergencyBrake-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EmergencyBrake-response (<EmergencyBrake-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmergencyBrake-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmergencyBrake-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<EmergencyBrake-response> is deprecated: use dji_osdk_ros-srv:EmergencyBrake-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <EmergencyBrake-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmergencyBrake-response>) ostream)
  "Serializes a message object of type '<EmergencyBrake-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmergencyBrake-response>) istream)
  "Deserializes a message object of type '<EmergencyBrake-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmergencyBrake-response>)))
  "Returns string type for a service object of type '<EmergencyBrake-response>"
  "dji_osdk_ros/EmergencyBrakeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyBrake-response)))
  "Returns string type for a service object of type 'EmergencyBrake-response"
  "dji_osdk_ros/EmergencyBrakeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmergencyBrake-response>)))
  "Returns md5sum for a message object of type '<EmergencyBrake-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmergencyBrake-response)))
  "Returns md5sum for a message object of type 'EmergencyBrake-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmergencyBrake-response>)))
  "Returns full string definition for message of type '<EmergencyBrake-response>"
  (cl:format cl:nil "#reponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmergencyBrake-response)))
  "Returns full string definition for message of type 'EmergencyBrake-response"
  (cl:format cl:nil "#reponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmergencyBrake-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmergencyBrake-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmergencyBrake-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmergencyBrake)))
  'EmergencyBrake-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmergencyBrake)))
  'EmergencyBrake-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmergencyBrake)))
  "Returns string type for a service object of type '<EmergencyBrake>"
  "dji_osdk_ros/EmergencyBrake")