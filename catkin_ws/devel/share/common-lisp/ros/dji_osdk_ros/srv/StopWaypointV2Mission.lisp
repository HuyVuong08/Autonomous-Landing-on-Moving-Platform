; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude StopWaypointV2Mission-request.msg.html

(cl:defclass <StopWaypointV2Mission-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopWaypointV2Mission-request (<StopWaypointV2Mission-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopWaypointV2Mission-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopWaypointV2Mission-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<StopWaypointV2Mission-request> is deprecated: use dji_osdk_ros-srv:StopWaypointV2Mission-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopWaypointV2Mission-request>) ostream)
  "Serializes a message object of type '<StopWaypointV2Mission-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopWaypointV2Mission-request>) istream)
  "Deserializes a message object of type '<StopWaypointV2Mission-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopWaypointV2Mission-request>)))
  "Returns string type for a service object of type '<StopWaypointV2Mission-request>"
  "dji_osdk_ros/StopWaypointV2MissionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopWaypointV2Mission-request)))
  "Returns string type for a service object of type 'StopWaypointV2Mission-request"
  "dji_osdk_ros/StopWaypointV2MissionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopWaypointV2Mission-request>)))
  "Returns md5sum for a message object of type '<StopWaypointV2Mission-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopWaypointV2Mission-request)))
  "Returns md5sum for a message object of type 'StopWaypointV2Mission-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopWaypointV2Mission-request>)))
  "Returns full string definition for message of type '<StopWaypointV2Mission-request>"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopWaypointV2Mission-request)))
  "Returns full string definition for message of type 'StopWaypointV2Mission-request"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopWaypointV2Mission-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopWaypointV2Mission-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopWaypointV2Mission-request
))
;//! \htmlinclude StopWaypointV2Mission-response.msg.html

(cl:defclass <StopWaypointV2Mission-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopWaypointV2Mission-response (<StopWaypointV2Mission-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopWaypointV2Mission-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopWaypointV2Mission-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<StopWaypointV2Mission-response> is deprecated: use dji_osdk_ros-srv:StopWaypointV2Mission-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <StopWaypointV2Mission-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopWaypointV2Mission-response>) ostream)
  "Serializes a message object of type '<StopWaypointV2Mission-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopWaypointV2Mission-response>) istream)
  "Deserializes a message object of type '<StopWaypointV2Mission-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopWaypointV2Mission-response>)))
  "Returns string type for a service object of type '<StopWaypointV2Mission-response>"
  "dji_osdk_ros/StopWaypointV2MissionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopWaypointV2Mission-response)))
  "Returns string type for a service object of type 'StopWaypointV2Mission-response"
  "dji_osdk_ros/StopWaypointV2MissionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopWaypointV2Mission-response>)))
  "Returns md5sum for a message object of type '<StopWaypointV2Mission-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopWaypointV2Mission-response)))
  "Returns md5sum for a message object of type 'StopWaypointV2Mission-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopWaypointV2Mission-response>)))
  "Returns full string definition for message of type '<StopWaypointV2Mission-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopWaypointV2Mission-response)))
  "Returns full string definition for message of type 'StopWaypointV2Mission-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopWaypointV2Mission-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopWaypointV2Mission-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopWaypointV2Mission-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopWaypointV2Mission)))
  'StopWaypointV2Mission-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopWaypointV2Mission)))
  'StopWaypointV2Mission-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopWaypointV2Mission)))
  "Returns string type for a service object of type '<StopWaypointV2Mission>"
  "dji_osdk_ros/StopWaypointV2Mission")