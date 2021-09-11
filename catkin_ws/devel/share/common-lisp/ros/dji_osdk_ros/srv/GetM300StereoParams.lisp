; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude GetM300StereoParams-request.msg.html

(cl:defclass <GetM300StereoParams-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetM300StereoParams-request (<GetM300StereoParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetM300StereoParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetM300StereoParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetM300StereoParams-request> is deprecated: use dji_osdk_ros-srv:GetM300StereoParams-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetM300StereoParams-request>) ostream)
  "Serializes a message object of type '<GetM300StereoParams-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetM300StereoParams-request>) istream)
  "Deserializes a message object of type '<GetM300StereoParams-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetM300StereoParams-request>)))
  "Returns string type for a service object of type '<GetM300StereoParams-request>"
  "dji_osdk_ros/GetM300StereoParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetM300StereoParams-request)))
  "Returns string type for a service object of type 'GetM300StereoParams-request"
  "dji_osdk_ros/GetM300StereoParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetM300StereoParams-request>)))
  "Returns md5sum for a message object of type '<GetM300StereoParams-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetM300StereoParams-request)))
  "Returns md5sum for a message object of type 'GetM300StereoParams-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetM300StereoParams-request>)))
  "Returns full string definition for message of type '<GetM300StereoParams-request>"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetM300StereoParams-request)))
  "Returns full string definition for message of type 'GetM300StereoParams-request"
  (cl:format cl:nil "#request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetM300StereoParams-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetM300StereoParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetM300StereoParams-request
))
;//! \htmlinclude GetM300StereoParams-response.msg.html

(cl:defclass <GetM300StereoParams-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetM300StereoParams-response (<GetM300StereoParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetM300StereoParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetM300StereoParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<GetM300StereoParams-response> is deprecated: use dji_osdk_ros-srv:GetM300StereoParams-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetM300StereoParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetM300StereoParams-response>) ostream)
  "Serializes a message object of type '<GetM300StereoParams-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetM300StereoParams-response>) istream)
  "Deserializes a message object of type '<GetM300StereoParams-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetM300StereoParams-response>)))
  "Returns string type for a service object of type '<GetM300StereoParams-response>"
  "dji_osdk_ros/GetM300StereoParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetM300StereoParams-response)))
  "Returns string type for a service object of type 'GetM300StereoParams-response"
  "dji_osdk_ros/GetM300StereoParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetM300StereoParams-response>)))
  "Returns md5sum for a message object of type '<GetM300StereoParams-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetM300StereoParams-response)))
  "Returns md5sum for a message object of type 'GetM300StereoParams-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetM300StereoParams-response>)))
  "Returns full string definition for message of type '<GetM300StereoParams-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetM300StereoParams-response)))
  "Returns full string definition for message of type 'GetM300StereoParams-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetM300StereoParams-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetM300StereoParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetM300StereoParams-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetM300StereoParams)))
  'GetM300StereoParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetM300StereoParams)))
  'GetM300StereoParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetM300StereoParams)))
  "Returns string type for a service object of type '<GetM300StereoParams>"
  "dji_osdk_ros/GetM300StereoParams")