; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude SubscribeWaypointV2State-request.msg.html

(cl:defclass <SubscribeWaypointV2State-request> (roslisp-msg-protocol:ros-message)
  ((enable_sub
    :reader enable_sub
    :initarg :enable_sub
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SubscribeWaypointV2State-request (<SubscribeWaypointV2State-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubscribeWaypointV2State-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubscribeWaypointV2State-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SubscribeWaypointV2State-request> is deprecated: use dji_osdk_ros-srv:SubscribeWaypointV2State-request instead.")))

(cl:ensure-generic-function 'enable_sub-val :lambda-list '(m))
(cl:defmethod enable_sub-val ((m <SubscribeWaypointV2State-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:enable_sub-val is deprecated.  Use dji_osdk_ros-srv:enable_sub instead.")
  (enable_sub m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubscribeWaypointV2State-request>) ostream)
  "Serializes a message object of type '<SubscribeWaypointV2State-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_sub) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubscribeWaypointV2State-request>) istream)
  "Deserializes a message object of type '<SubscribeWaypointV2State-request>"
    (cl:setf (cl:slot-value msg 'enable_sub) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubscribeWaypointV2State-request>)))
  "Returns string type for a service object of type '<SubscribeWaypointV2State-request>"
  "dji_osdk_ros/SubscribeWaypointV2StateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubscribeWaypointV2State-request)))
  "Returns string type for a service object of type 'SubscribeWaypointV2State-request"
  "dji_osdk_ros/SubscribeWaypointV2StateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubscribeWaypointV2State-request>)))
  "Returns md5sum for a message object of type '<SubscribeWaypointV2State-request>"
  "ea66dd5532fa92b8b44324072cac57bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubscribeWaypointV2State-request)))
  "Returns md5sum for a message object of type 'SubscribeWaypointV2State-request"
  "ea66dd5532fa92b8b44324072cac57bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubscribeWaypointV2State-request>)))
  "Returns full string definition for message of type '<SubscribeWaypointV2State-request>"
  (cl:format cl:nil "#request~%bool enable_sub~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubscribeWaypointV2State-request)))
  "Returns full string definition for message of type 'SubscribeWaypointV2State-request"
  (cl:format cl:nil "#request~%bool enable_sub~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubscribeWaypointV2State-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubscribeWaypointV2State-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SubscribeWaypointV2State-request
    (cl:cons ':enable_sub (enable_sub msg))
))
;//! \htmlinclude SubscribeWaypointV2State-response.msg.html

(cl:defclass <SubscribeWaypointV2State-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SubscribeWaypointV2State-response (<SubscribeWaypointV2State-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubscribeWaypointV2State-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubscribeWaypointV2State-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SubscribeWaypointV2State-response> is deprecated: use dji_osdk_ros-srv:SubscribeWaypointV2State-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SubscribeWaypointV2State-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubscribeWaypointV2State-response>) ostream)
  "Serializes a message object of type '<SubscribeWaypointV2State-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubscribeWaypointV2State-response>) istream)
  "Deserializes a message object of type '<SubscribeWaypointV2State-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubscribeWaypointV2State-response>)))
  "Returns string type for a service object of type '<SubscribeWaypointV2State-response>"
  "dji_osdk_ros/SubscribeWaypointV2StateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubscribeWaypointV2State-response)))
  "Returns string type for a service object of type 'SubscribeWaypointV2State-response"
  "dji_osdk_ros/SubscribeWaypointV2StateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubscribeWaypointV2State-response>)))
  "Returns md5sum for a message object of type '<SubscribeWaypointV2State-response>"
  "ea66dd5532fa92b8b44324072cac57bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubscribeWaypointV2State-response)))
  "Returns md5sum for a message object of type 'SubscribeWaypointV2State-response"
  "ea66dd5532fa92b8b44324072cac57bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubscribeWaypointV2State-response>)))
  "Returns full string definition for message of type '<SubscribeWaypointV2State-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubscribeWaypointV2State-response)))
  "Returns full string definition for message of type 'SubscribeWaypointV2State-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubscribeWaypointV2State-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubscribeWaypointV2State-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SubscribeWaypointV2State-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SubscribeWaypointV2State)))
  'SubscribeWaypointV2State-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SubscribeWaypointV2State)))
  'SubscribeWaypointV2State-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubscribeWaypointV2State)))
  "Returns string type for a service object of type '<SubscribeWaypointV2State>"
  "dji_osdk_ros/SubscribeWaypointV2State")