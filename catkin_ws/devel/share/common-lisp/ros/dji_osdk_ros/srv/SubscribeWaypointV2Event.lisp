; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude SubscribeWaypointV2Event-request.msg.html

(cl:defclass <SubscribeWaypointV2Event-request> (roslisp-msg-protocol:ros-message)
  ((enable_sub
    :reader enable_sub
    :initarg :enable_sub
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SubscribeWaypointV2Event-request (<SubscribeWaypointV2Event-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubscribeWaypointV2Event-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubscribeWaypointV2Event-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SubscribeWaypointV2Event-request> is deprecated: use dji_osdk_ros-srv:SubscribeWaypointV2Event-request instead.")))

(cl:ensure-generic-function 'enable_sub-val :lambda-list '(m))
(cl:defmethod enable_sub-val ((m <SubscribeWaypointV2Event-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:enable_sub-val is deprecated.  Use dji_osdk_ros-srv:enable_sub instead.")
  (enable_sub m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubscribeWaypointV2Event-request>) ostream)
  "Serializes a message object of type '<SubscribeWaypointV2Event-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_sub) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubscribeWaypointV2Event-request>) istream)
  "Deserializes a message object of type '<SubscribeWaypointV2Event-request>"
    (cl:setf (cl:slot-value msg 'enable_sub) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubscribeWaypointV2Event-request>)))
  "Returns string type for a service object of type '<SubscribeWaypointV2Event-request>"
  "dji_osdk_ros/SubscribeWaypointV2EventRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubscribeWaypointV2Event-request)))
  "Returns string type for a service object of type 'SubscribeWaypointV2Event-request"
  "dji_osdk_ros/SubscribeWaypointV2EventRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubscribeWaypointV2Event-request>)))
  "Returns md5sum for a message object of type '<SubscribeWaypointV2Event-request>"
  "ea66dd5532fa92b8b44324072cac57bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubscribeWaypointV2Event-request)))
  "Returns md5sum for a message object of type 'SubscribeWaypointV2Event-request"
  "ea66dd5532fa92b8b44324072cac57bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubscribeWaypointV2Event-request>)))
  "Returns full string definition for message of type '<SubscribeWaypointV2Event-request>"
  (cl:format cl:nil "#request~%bool enable_sub~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubscribeWaypointV2Event-request)))
  "Returns full string definition for message of type 'SubscribeWaypointV2Event-request"
  (cl:format cl:nil "#request~%bool enable_sub~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubscribeWaypointV2Event-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubscribeWaypointV2Event-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SubscribeWaypointV2Event-request
    (cl:cons ':enable_sub (enable_sub msg))
))
;//! \htmlinclude SubscribeWaypointV2Event-response.msg.html

(cl:defclass <SubscribeWaypointV2Event-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SubscribeWaypointV2Event-response (<SubscribeWaypointV2Event-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubscribeWaypointV2Event-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubscribeWaypointV2Event-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SubscribeWaypointV2Event-response> is deprecated: use dji_osdk_ros-srv:SubscribeWaypointV2Event-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SubscribeWaypointV2Event-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubscribeWaypointV2Event-response>) ostream)
  "Serializes a message object of type '<SubscribeWaypointV2Event-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubscribeWaypointV2Event-response>) istream)
  "Deserializes a message object of type '<SubscribeWaypointV2Event-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubscribeWaypointV2Event-response>)))
  "Returns string type for a service object of type '<SubscribeWaypointV2Event-response>"
  "dji_osdk_ros/SubscribeWaypointV2EventResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubscribeWaypointV2Event-response)))
  "Returns string type for a service object of type 'SubscribeWaypointV2Event-response"
  "dji_osdk_ros/SubscribeWaypointV2EventResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubscribeWaypointV2Event-response>)))
  "Returns md5sum for a message object of type '<SubscribeWaypointV2Event-response>"
  "ea66dd5532fa92b8b44324072cac57bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubscribeWaypointV2Event-response)))
  "Returns md5sum for a message object of type 'SubscribeWaypointV2Event-response"
  "ea66dd5532fa92b8b44324072cac57bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubscribeWaypointV2Event-response>)))
  "Returns full string definition for message of type '<SubscribeWaypointV2Event-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubscribeWaypointV2Event-response)))
  "Returns full string definition for message of type 'SubscribeWaypointV2Event-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubscribeWaypointV2Event-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubscribeWaypointV2Event-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SubscribeWaypointV2Event-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SubscribeWaypointV2Event)))
  'SubscribeWaypointV2Event-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SubscribeWaypointV2Event)))
  'SubscribeWaypointV2Event-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubscribeWaypointV2Event)))
  "Returns string type for a service object of type '<SubscribeWaypointV2Event>"
  "dji_osdk_ros/SubscribeWaypointV2Event")