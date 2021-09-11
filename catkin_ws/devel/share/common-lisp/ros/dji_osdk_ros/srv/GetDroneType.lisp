; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude GetDroneType-request.msg.html

(cl:defclass <GetDroneType-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetDroneType-request (<GetDroneType-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDroneType-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDroneType-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetDroneType-request> is deprecated: use dji_osdk_ros-srv:GetDroneType-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDroneType-request>) ostream)
  "Serializes a message object of type '<GetDroneType-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDroneType-request>) istream)
  "Deserializes a message object of type '<GetDroneType-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDroneType-request>)))
  "Returns string type for a service object of type '<GetDroneType-request>"
  "dji_osdk_ros/GetDroneTypeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDroneType-request)))
  "Returns string type for a service object of type 'GetDroneType-request"
  "dji_osdk_ros/GetDroneTypeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDroneType-request>)))
  "Returns md5sum for a message object of type '<GetDroneType-request>"
  "87cc5c5bc9c0355af48cf3dac961c235")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDroneType-request)))
  "Returns md5sum for a message object of type 'GetDroneType-request"
  "87cc5c5bc9c0355af48cf3dac961c235")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDroneType-request>)))
  "Returns full string definition for message of type '<GetDroneType-request>"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDroneType-request)))
  "Returns full string definition for message of type 'GetDroneType-request"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDroneType-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDroneType-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDroneType-request
))
;//! \htmlinclude GetDroneType-response.msg.html

(cl:defclass <GetDroneType-response> (roslisp-msg-protocol:ros-message)
  ((drone_type
    :reader drone_type
    :initarg :drone_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetDroneType-response (<GetDroneType-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDroneType-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDroneType-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetDroneType-response> is deprecated: use dji_osdk_ros-srv:GetDroneType-response instead.")))

(cl:ensure-generic-function 'drone_type-val :lambda-list '(m))
(cl:defmethod drone_type-val ((m <GetDroneType-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:drone_type-val is deprecated.  Use dji_osdk_ros-srv:drone_type instead.")
  (drone_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDroneType-response>) ostream)
  "Serializes a message object of type '<GetDroneType-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDroneType-response>) istream)
  "Deserializes a message object of type '<GetDroneType-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drone_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDroneType-response>)))
  "Returns string type for a service object of type '<GetDroneType-response>"
  "dji_osdk_ros/GetDroneTypeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDroneType-response)))
  "Returns string type for a service object of type 'GetDroneType-response"
  "dji_osdk_ros/GetDroneTypeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDroneType-response>)))
  "Returns md5sum for a message object of type '<GetDroneType-response>"
  "87cc5c5bc9c0355af48cf3dac961c235")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDroneType-response)))
  "Returns md5sum for a message object of type 'GetDroneType-response"
  "87cc5c5bc9c0355af48cf3dac961c235")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDroneType-response>)))
  "Returns full string definition for message of type '<GetDroneType-response>"
  (cl:format cl:nil "#response~%uint8 drone_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDroneType-response)))
  "Returns full string definition for message of type 'GetDroneType-response"
  (cl:format cl:nil "#response~%uint8 drone_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDroneType-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDroneType-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDroneType-response
    (cl:cons ':drone_type (drone_type msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDroneType)))
  'GetDroneType-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDroneType)))
  'GetDroneType-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDroneType)))
  "Returns string type for a service object of type '<GetDroneType>"
  "dji_osdk_ros/GetDroneType")