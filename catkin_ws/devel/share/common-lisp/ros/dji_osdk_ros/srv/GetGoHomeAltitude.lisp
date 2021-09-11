; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude GetGoHomeAltitude-request.msg.html

(cl:defclass <GetGoHomeAltitude-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetGoHomeAltitude-request (<GetGoHomeAltitude-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGoHomeAltitude-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGoHomeAltitude-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetGoHomeAltitude-request> is deprecated: use dji_osdk_ros-srv:GetGoHomeAltitude-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGoHomeAltitude-request>) ostream)
  "Serializes a message object of type '<GetGoHomeAltitude-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGoHomeAltitude-request>) istream)
  "Deserializes a message object of type '<GetGoHomeAltitude-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGoHomeAltitude-request>)))
  "Returns string type for a service object of type '<GetGoHomeAltitude-request>"
  "dji_osdk_ros/GetGoHomeAltitudeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoHomeAltitude-request)))
  "Returns string type for a service object of type 'GetGoHomeAltitude-request"
  "dji_osdk_ros/GetGoHomeAltitudeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGoHomeAltitude-request>)))
  "Returns md5sum for a message object of type '<GetGoHomeAltitude-request>"
  "481d1603c31c25eb38ff6abb0129e8bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGoHomeAltitude-request)))
  "Returns md5sum for a message object of type 'GetGoHomeAltitude-request"
  "481d1603c31c25eb38ff6abb0129e8bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGoHomeAltitude-request>)))
  "Returns full string definition for message of type '<GetGoHomeAltitude-request>"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGoHomeAltitude-request)))
  "Returns full string definition for message of type 'GetGoHomeAltitude-request"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGoHomeAltitude-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGoHomeAltitude-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGoHomeAltitude-request
))
;//! \htmlinclude GetGoHomeAltitude-response.msg.html

(cl:defclass <GetGoHomeAltitude-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetGoHomeAltitude-response (<GetGoHomeAltitude-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetGoHomeAltitude-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetGoHomeAltitude-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetGoHomeAltitude-response> is deprecated: use dji_osdk_ros-srv:GetGoHomeAltitude-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetGoHomeAltitude-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <GetGoHomeAltitude-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:altitude-val is deprecated.  Use dji_osdk_ros-srv:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetGoHomeAltitude-response>) ostream)
  "Serializes a message object of type '<GetGoHomeAltitude-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'altitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'altitude)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetGoHomeAltitude-response>) istream)
  "Deserializes a message object of type '<GetGoHomeAltitude-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'altitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'altitude)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetGoHomeAltitude-response>)))
  "Returns string type for a service object of type '<GetGoHomeAltitude-response>"
  "dji_osdk_ros/GetGoHomeAltitudeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoHomeAltitude-response)))
  "Returns string type for a service object of type 'GetGoHomeAltitude-response"
  "dji_osdk_ros/GetGoHomeAltitudeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetGoHomeAltitude-response>)))
  "Returns md5sum for a message object of type '<GetGoHomeAltitude-response>"
  "481d1603c31c25eb38ff6abb0129e8bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetGoHomeAltitude-response)))
  "Returns md5sum for a message object of type 'GetGoHomeAltitude-response"
  "481d1603c31c25eb38ff6abb0129e8bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetGoHomeAltitude-response>)))
  "Returns full string definition for message of type '<GetGoHomeAltitude-response>"
  (cl:format cl:nil "#response~%bool result~%uint16 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetGoHomeAltitude-response)))
  "Returns full string definition for message of type 'GetGoHomeAltitude-response"
  (cl:format cl:nil "#response~%bool result~%uint16 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetGoHomeAltitude-response>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetGoHomeAltitude-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetGoHomeAltitude-response
    (cl:cons ':result (result msg))
    (cl:cons ':altitude (altitude msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetGoHomeAltitude)))
  'GetGoHomeAltitude-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetGoHomeAltitude)))
  'GetGoHomeAltitude-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetGoHomeAltitude)))
  "Returns string type for a service object of type '<GetGoHomeAltitude>"
  "dji_osdk_ros/GetGoHomeAltitude")