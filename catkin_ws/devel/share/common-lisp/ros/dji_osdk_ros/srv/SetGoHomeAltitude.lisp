; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude SetGoHomeAltitude-request.msg.html

(cl:defclass <SetGoHomeAltitude-request> (roslisp-msg-protocol:ros-message)
  ((altitude
    :reader altitude
    :initarg :altitude
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetGoHomeAltitude-request (<SetGoHomeAltitude-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoHomeAltitude-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoHomeAltitude-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetGoHomeAltitude-request> is deprecated: use dji_osdk_ros-srv:SetGoHomeAltitude-request instead.")))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <SetGoHomeAltitude-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:altitude-val is deprecated.  Use dji_osdk_ros-srv:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoHomeAltitude-request>) ostream)
  "Serializes a message object of type '<SetGoHomeAltitude-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'altitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'altitude)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoHomeAltitude-request>) istream)
  "Deserializes a message object of type '<SetGoHomeAltitude-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'altitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'altitude)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoHomeAltitude-request>)))
  "Returns string type for a service object of type '<SetGoHomeAltitude-request>"
  "dji_osdk_ros/SetGoHomeAltitudeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoHomeAltitude-request)))
  "Returns string type for a service object of type 'SetGoHomeAltitude-request"
  "dji_osdk_ros/SetGoHomeAltitudeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoHomeAltitude-request>)))
  "Returns md5sum for a message object of type '<SetGoHomeAltitude-request>"
  "7721aec53d0b312409b16d98d1d8d77a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoHomeAltitude-request)))
  "Returns md5sum for a message object of type 'SetGoHomeAltitude-request"
  "7721aec53d0b312409b16d98d1d8d77a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoHomeAltitude-request>)))
  "Returns full string definition for message of type '<SetGoHomeAltitude-request>"
  (cl:format cl:nil "uint16 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoHomeAltitude-request)))
  "Returns full string definition for message of type 'SetGoHomeAltitude-request"
  (cl:format cl:nil "uint16 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoHomeAltitude-request>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoHomeAltitude-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoHomeAltitude-request
    (cl:cons ':altitude (altitude msg))
))
;//! \htmlinclude SetGoHomeAltitude-response.msg.html

(cl:defclass <SetGoHomeAltitude-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetGoHomeAltitude-response (<SetGoHomeAltitude-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetGoHomeAltitude-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetGoHomeAltitude-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetGoHomeAltitude-response> is deprecated: use dji_osdk_ros-srv:SetGoHomeAltitude-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetGoHomeAltitude-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetGoHomeAltitude-response>) ostream)
  "Serializes a message object of type '<SetGoHomeAltitude-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetGoHomeAltitude-response>) istream)
  "Deserializes a message object of type '<SetGoHomeAltitude-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetGoHomeAltitude-response>)))
  "Returns string type for a service object of type '<SetGoHomeAltitude-response>"
  "dji_osdk_ros/SetGoHomeAltitudeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoHomeAltitude-response)))
  "Returns string type for a service object of type 'SetGoHomeAltitude-response"
  "dji_osdk_ros/SetGoHomeAltitudeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetGoHomeAltitude-response>)))
  "Returns md5sum for a message object of type '<SetGoHomeAltitude-response>"
  "7721aec53d0b312409b16d98d1d8d77a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetGoHomeAltitude-response)))
  "Returns md5sum for a message object of type 'SetGoHomeAltitude-response"
  "7721aec53d0b312409b16d98d1d8d77a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetGoHomeAltitude-response>)))
  "Returns full string definition for message of type '<SetGoHomeAltitude-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetGoHomeAltitude-response)))
  "Returns full string definition for message of type 'SetGoHomeAltitude-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetGoHomeAltitude-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetGoHomeAltitude-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetGoHomeAltitude-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetGoHomeAltitude)))
  'SetGoHomeAltitude-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetGoHomeAltitude)))
  'SetGoHomeAltitude-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetGoHomeAltitude)))
  "Returns string type for a service object of type '<SetGoHomeAltitude>"
  "dji_osdk_ros/SetGoHomeAltitude")