; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude ObtainControlAuthority-request.msg.html

(cl:defclass <ObtainControlAuthority-request> (roslisp-msg-protocol:ros-message)
  ((enable_obtain
    :reader enable_obtain
    :initarg :enable_obtain
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ObtainControlAuthority-request (<ObtainControlAuthority-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObtainControlAuthority-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObtainControlAuthority-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<ObtainControlAuthority-request> is deprecated: use dji_osdk_ros-srv:ObtainControlAuthority-request instead.")))

(cl:ensure-generic-function 'enable_obtain-val :lambda-list '(m))
(cl:defmethod enable_obtain-val ((m <ObtainControlAuthority-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:enable_obtain-val is deprecated.  Use dji_osdk_ros-srv:enable_obtain instead.")
  (enable_obtain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObtainControlAuthority-request>) ostream)
  "Serializes a message object of type '<ObtainControlAuthority-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_obtain) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObtainControlAuthority-request>) istream)
  "Deserializes a message object of type '<ObtainControlAuthority-request>"
    (cl:setf (cl:slot-value msg 'enable_obtain) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObtainControlAuthority-request>)))
  "Returns string type for a service object of type '<ObtainControlAuthority-request>"
  "dji_osdk_ros/ObtainControlAuthorityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObtainControlAuthority-request)))
  "Returns string type for a service object of type 'ObtainControlAuthority-request"
  "dji_osdk_ros/ObtainControlAuthorityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObtainControlAuthority-request>)))
  "Returns md5sum for a message object of type '<ObtainControlAuthority-request>"
  "e82063bf828152ad11b7c5ce93e9a2dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObtainControlAuthority-request)))
  "Returns md5sum for a message object of type 'ObtainControlAuthority-request"
  "e82063bf828152ad11b7c5ce93e9a2dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObtainControlAuthority-request>)))
  "Returns full string definition for message of type '<ObtainControlAuthority-request>"
  (cl:format cl:nil "#request~%bool enable_obtain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObtainControlAuthority-request)))
  "Returns full string definition for message of type 'ObtainControlAuthority-request"
  (cl:format cl:nil "#request~%bool enable_obtain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObtainControlAuthority-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObtainControlAuthority-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ObtainControlAuthority-request
    (cl:cons ':enable_obtain (enable_obtain msg))
))
;//! \htmlinclude ObtainControlAuthority-response.msg.html

(cl:defclass <ObtainControlAuthority-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ObtainControlAuthority-response (<ObtainControlAuthority-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObtainControlAuthority-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObtainControlAuthority-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<ObtainControlAuthority-response> is deprecated: use dji_osdk_ros-srv:ObtainControlAuthority-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <ObtainControlAuthority-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObtainControlAuthority-response>) ostream)
  "Serializes a message object of type '<ObtainControlAuthority-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObtainControlAuthority-response>) istream)
  "Deserializes a message object of type '<ObtainControlAuthority-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObtainControlAuthority-response>)))
  "Returns string type for a service object of type '<ObtainControlAuthority-response>"
  "dji_osdk_ros/ObtainControlAuthorityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObtainControlAuthority-response)))
  "Returns string type for a service object of type 'ObtainControlAuthority-response"
  "dji_osdk_ros/ObtainControlAuthorityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObtainControlAuthority-response>)))
  "Returns md5sum for a message object of type '<ObtainControlAuthority-response>"
  "e82063bf828152ad11b7c5ce93e9a2dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObtainControlAuthority-response)))
  "Returns md5sum for a message object of type 'ObtainControlAuthority-response"
  "e82063bf828152ad11b7c5ce93e9a2dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObtainControlAuthority-response>)))
  "Returns full string definition for message of type '<ObtainControlAuthority-response>"
  (cl:format cl:nil "#reponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObtainControlAuthority-response)))
  "Returns full string definition for message of type 'ObtainControlAuthority-response"
  (cl:format cl:nil "#reponse~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObtainControlAuthority-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObtainControlAuthority-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ObtainControlAuthority-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ObtainControlAuthority)))
  'ObtainControlAuthority-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ObtainControlAuthority)))
  'ObtainControlAuthority-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObtainControlAuthority)))
  "Returns string type for a service object of type '<ObtainControlAuthority>"
  "dji_osdk_ros/ObtainControlAuthority")