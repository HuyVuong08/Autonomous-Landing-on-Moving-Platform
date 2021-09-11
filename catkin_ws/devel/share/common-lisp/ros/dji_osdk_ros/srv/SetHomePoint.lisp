; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude SetHomePoint-request.msg.html

(cl:defclass <SetHomePoint-request> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetHomePoint-request (<SetHomePoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHomePoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHomePoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetHomePoint-request> is deprecated: use dji_osdk_ros-srv:SetHomePoint-request instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <SetHomePoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:latitude-val is deprecated.  Use dji_osdk_ros-srv:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <SetHomePoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:longitude-val is deprecated.  Use dji_osdk_ros-srv:longitude instead.")
  (longitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHomePoint-request>) ostream)
  "Serializes a message object of type '<SetHomePoint-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHomePoint-request>) istream)
  "Deserializes a message object of type '<SetHomePoint-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHomePoint-request>)))
  "Returns string type for a service object of type '<SetHomePoint-request>"
  "dji_osdk_ros/SetHomePointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHomePoint-request)))
  "Returns string type for a service object of type 'SetHomePoint-request"
  "dji_osdk_ros/SetHomePointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHomePoint-request>)))
  "Returns md5sum for a message object of type '<SetHomePoint-request>"
  "545e64b0ec120b3ef516b84c81d38856")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHomePoint-request)))
  "Returns md5sum for a message object of type 'SetHomePoint-request"
  "545e64b0ec120b3ef516b84c81d38856")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHomePoint-request>)))
  "Returns full string definition for message of type '<SetHomePoint-request>"
  (cl:format cl:nil "#request~%float64 latitude  #/*!< unit: rad */~%float64 longitude #/*!< unit: rad */~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHomePoint-request)))
  "Returns full string definition for message of type 'SetHomePoint-request"
  (cl:format cl:nil "#request~%float64 latitude  #/*!< unit: rad */~%float64 longitude #/*!< unit: rad */~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHomePoint-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHomePoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHomePoint-request
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
))
;//! \htmlinclude SetHomePoint-response.msg.html

(cl:defclass <SetHomePoint-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetHomePoint-response (<SetHomePoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHomePoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHomePoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetHomePoint-response> is deprecated: use dji_osdk_ros-srv:SetHomePoint-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetHomePoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHomePoint-response>) ostream)
  "Serializes a message object of type '<SetHomePoint-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHomePoint-response>) istream)
  "Deserializes a message object of type '<SetHomePoint-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHomePoint-response>)))
  "Returns string type for a service object of type '<SetHomePoint-response>"
  "dji_osdk_ros/SetHomePointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHomePoint-response)))
  "Returns string type for a service object of type 'SetHomePoint-response"
  "dji_osdk_ros/SetHomePointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHomePoint-response>)))
  "Returns md5sum for a message object of type '<SetHomePoint-response>"
  "545e64b0ec120b3ef516b84c81d38856")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHomePoint-response)))
  "Returns md5sum for a message object of type 'SetHomePoint-response"
  "545e64b0ec120b3ef516b84c81d38856")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHomePoint-response>)))
  "Returns full string definition for message of type '<SetHomePoint-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHomePoint-response)))
  "Returns full string definition for message of type 'SetHomePoint-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHomePoint-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHomePoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHomePoint-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetHomePoint)))
  'SetHomePoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetHomePoint)))
  'SetHomePoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHomePoint)))
  "Returns string type for a service object of type '<SetHomePoint>"
  "dji_osdk_ros/SetHomePoint")