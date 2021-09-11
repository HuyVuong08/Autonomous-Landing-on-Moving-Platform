; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude StartWaypointV2Mission-request.msg.html

(cl:defclass <StartWaypointV2Mission-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StartWaypointV2Mission-request (<StartWaypointV2Mission-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartWaypointV2Mission-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartWaypointV2Mission-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<StartWaypointV2Mission-request> is deprecated: use dji_osdk_ros-srv:StartWaypointV2Mission-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartWaypointV2Mission-request>) ostream)
  "Serializes a message object of type '<StartWaypointV2Mission-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartWaypointV2Mission-request>) istream)
  "Deserializes a message object of type '<StartWaypointV2Mission-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartWaypointV2Mission-request>)))
  "Returns string type for a service object of type '<StartWaypointV2Mission-request>"
  "dji_osdk_ros/StartWaypointV2MissionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartWaypointV2Mission-request)))
  "Returns string type for a service object of type 'StartWaypointV2Mission-request"
  "dji_osdk_ros/StartWaypointV2MissionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartWaypointV2Mission-request>)))
  "Returns md5sum for a message object of type '<StartWaypointV2Mission-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartWaypointV2Mission-request)))
  "Returns md5sum for a message object of type 'StartWaypointV2Mission-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartWaypointV2Mission-request>)))
  "Returns full string definition for message of type '<StartWaypointV2Mission-request>"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartWaypointV2Mission-request)))
  "Returns full string definition for message of type 'StartWaypointV2Mission-request"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartWaypointV2Mission-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartWaypointV2Mission-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartWaypointV2Mission-request
))
;//! \htmlinclude StartWaypointV2Mission-response.msg.html

(cl:defclass <StartWaypointV2Mission-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StartWaypointV2Mission-response (<StartWaypointV2Mission-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartWaypointV2Mission-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartWaypointV2Mission-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<StartWaypointV2Mission-response> is deprecated: use dji_osdk_ros-srv:StartWaypointV2Mission-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StartWaypointV2Mission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartWaypointV2Mission-response>) ostream)
  "Serializes a message object of type '<StartWaypointV2Mission-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartWaypointV2Mission-response>) istream)
  "Deserializes a message object of type '<StartWaypointV2Mission-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartWaypointV2Mission-response>)))
  "Returns string type for a service object of type '<StartWaypointV2Mission-response>"
  "dji_osdk_ros/StartWaypointV2MissionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartWaypointV2Mission-response)))
  "Returns string type for a service object of type 'StartWaypointV2Mission-response"
  "dji_osdk_ros/StartWaypointV2MissionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartWaypointV2Mission-response>)))
  "Returns md5sum for a message object of type '<StartWaypointV2Mission-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartWaypointV2Mission-response)))
  "Returns md5sum for a message object of type 'StartWaypointV2Mission-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartWaypointV2Mission-response>)))
  "Returns full string definition for message of type '<StartWaypointV2Mission-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartWaypointV2Mission-response)))
  "Returns full string definition for message of type 'StartWaypointV2Mission-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartWaypointV2Mission-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartWaypointV2Mission-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartWaypointV2Mission-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartWaypointV2Mission)))
  'StartWaypointV2Mission-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartWaypointV2Mission)))
  'StartWaypointV2Mission-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartWaypointV2Mission)))
  "Returns string type for a service object of type '<StartWaypointV2Mission>"
  "dji_osdk_ros/StartWaypointV2Mission")