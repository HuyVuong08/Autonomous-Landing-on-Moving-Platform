; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude SetCurrentAircraftLocAsHomePoint-request.msg.html

(cl:defclass <SetCurrentAircraftLocAsHomePoint-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetCurrentAircraftLocAsHomePoint-request (<SetCurrentAircraftLocAsHomePoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCurrentAircraftLocAsHomePoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCurrentAircraftLocAsHomePoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetCurrentAircraftLocAsHomePoint-request> is deprecated: use dji_osdk_ros-srv:SetCurrentAircraftLocAsHomePoint-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCurrentAircraftLocAsHomePoint-request>) ostream)
  "Serializes a message object of type '<SetCurrentAircraftLocAsHomePoint-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCurrentAircraftLocAsHomePoint-request>) istream)
  "Deserializes a message object of type '<SetCurrentAircraftLocAsHomePoint-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCurrentAircraftLocAsHomePoint-request>)))
  "Returns string type for a service object of type '<SetCurrentAircraftLocAsHomePoint-request>"
  "dji_osdk_ros/SetCurrentAircraftLocAsHomePointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCurrentAircraftLocAsHomePoint-request)))
  "Returns string type for a service object of type 'SetCurrentAircraftLocAsHomePoint-request"
  "dji_osdk_ros/SetCurrentAircraftLocAsHomePointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCurrentAircraftLocAsHomePoint-request>)))
  "Returns md5sum for a message object of type '<SetCurrentAircraftLocAsHomePoint-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCurrentAircraftLocAsHomePoint-request)))
  "Returns md5sum for a message object of type 'SetCurrentAircraftLocAsHomePoint-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCurrentAircraftLocAsHomePoint-request>)))
  "Returns full string definition for message of type '<SetCurrentAircraftLocAsHomePoint-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCurrentAircraftLocAsHomePoint-request)))
  "Returns full string definition for message of type 'SetCurrentAircraftLocAsHomePoint-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCurrentAircraftLocAsHomePoint-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCurrentAircraftLocAsHomePoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCurrentAircraftLocAsHomePoint-request
))
;//! \htmlinclude SetCurrentAircraftLocAsHomePoint-response.msg.html

(cl:defclass <SetCurrentAircraftLocAsHomePoint-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetCurrentAircraftLocAsHomePoint-response (<SetCurrentAircraftLocAsHomePoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetCurrentAircraftLocAsHomePoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetCurrentAircraftLocAsHomePoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetCurrentAircraftLocAsHomePoint-response> is deprecated: use dji_osdk_ros-srv:SetCurrentAircraftLocAsHomePoint-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetCurrentAircraftLocAsHomePoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetCurrentAircraftLocAsHomePoint-response>) ostream)
  "Serializes a message object of type '<SetCurrentAircraftLocAsHomePoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetCurrentAircraftLocAsHomePoint-response>) istream)
  "Deserializes a message object of type '<SetCurrentAircraftLocAsHomePoint-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetCurrentAircraftLocAsHomePoint-response>)))
  "Returns string type for a service object of type '<SetCurrentAircraftLocAsHomePoint-response>"
  "dji_osdk_ros/SetCurrentAircraftLocAsHomePointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCurrentAircraftLocAsHomePoint-response)))
  "Returns string type for a service object of type 'SetCurrentAircraftLocAsHomePoint-response"
  "dji_osdk_ros/SetCurrentAircraftLocAsHomePointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetCurrentAircraftLocAsHomePoint-response>)))
  "Returns md5sum for a message object of type '<SetCurrentAircraftLocAsHomePoint-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetCurrentAircraftLocAsHomePoint-response)))
  "Returns md5sum for a message object of type 'SetCurrentAircraftLocAsHomePoint-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetCurrentAircraftLocAsHomePoint-response>)))
  "Returns full string definition for message of type '<SetCurrentAircraftLocAsHomePoint-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetCurrentAircraftLocAsHomePoint-response)))
  "Returns full string definition for message of type 'SetCurrentAircraftLocAsHomePoint-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetCurrentAircraftLocAsHomePoint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetCurrentAircraftLocAsHomePoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetCurrentAircraftLocAsHomePoint-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetCurrentAircraftLocAsHomePoint)))
  'SetCurrentAircraftLocAsHomePoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetCurrentAircraftLocAsHomePoint)))
  'SetCurrentAircraftLocAsHomePoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetCurrentAircraftLocAsHomePoint)))
  "Returns string type for a service object of type '<SetCurrentAircraftLocAsHomePoint>"
  "dji_osdk_ros/SetCurrentAircraftLocAsHomePoint")