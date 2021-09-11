; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude UploadWaypointV2Action-request.msg.html

(cl:defclass <UploadWaypointV2Action-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UploadWaypointV2Action-request (<UploadWaypointV2Action-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UploadWaypointV2Action-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UploadWaypointV2Action-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<UploadWaypointV2Action-request> is deprecated: use dji_osdk_ros-srv:UploadWaypointV2Action-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UploadWaypointV2Action-request>) ostream)
  "Serializes a message object of type '<UploadWaypointV2Action-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UploadWaypointV2Action-request>) istream)
  "Deserializes a message object of type '<UploadWaypointV2Action-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UploadWaypointV2Action-request>)))
  "Returns string type for a service object of type '<UploadWaypointV2Action-request>"
  "dji_osdk_ros/UploadWaypointV2ActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UploadWaypointV2Action-request)))
  "Returns string type for a service object of type 'UploadWaypointV2Action-request"
  "dji_osdk_ros/UploadWaypointV2ActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UploadWaypointV2Action-request>)))
  "Returns md5sum for a message object of type '<UploadWaypointV2Action-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UploadWaypointV2Action-request)))
  "Returns md5sum for a message object of type 'UploadWaypointV2Action-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UploadWaypointV2Action-request>)))
  "Returns full string definition for message of type '<UploadWaypointV2Action-request>"
  (cl:format cl:nil "#request~%# WaypointV2Action[] actions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UploadWaypointV2Action-request)))
  "Returns full string definition for message of type 'UploadWaypointV2Action-request"
  (cl:format cl:nil "#request~%# WaypointV2Action[] actions~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UploadWaypointV2Action-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UploadWaypointV2Action-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UploadWaypointV2Action-request
))
;//! \htmlinclude UploadWaypointV2Action-response.msg.html

(cl:defclass <UploadWaypointV2Action-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass UploadWaypointV2Action-response (<UploadWaypointV2Action-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UploadWaypointV2Action-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UploadWaypointV2Action-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<UploadWaypointV2Action-response> is deprecated: use dji_osdk_ros-srv:UploadWaypointV2Action-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <UploadWaypointV2Action-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UploadWaypointV2Action-response>) ostream)
  "Serializes a message object of type '<UploadWaypointV2Action-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UploadWaypointV2Action-response>) istream)
  "Deserializes a message object of type '<UploadWaypointV2Action-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UploadWaypointV2Action-response>)))
  "Returns string type for a service object of type '<UploadWaypointV2Action-response>"
  "dji_osdk_ros/UploadWaypointV2ActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UploadWaypointV2Action-response)))
  "Returns string type for a service object of type 'UploadWaypointV2Action-response"
  "dji_osdk_ros/UploadWaypointV2ActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UploadWaypointV2Action-response>)))
  "Returns md5sum for a message object of type '<UploadWaypointV2Action-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UploadWaypointV2Action-response)))
  "Returns md5sum for a message object of type 'UploadWaypointV2Action-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UploadWaypointV2Action-response>)))
  "Returns full string definition for message of type '<UploadWaypointV2Action-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UploadWaypointV2Action-response)))
  "Returns full string definition for message of type 'UploadWaypointV2Action-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UploadWaypointV2Action-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UploadWaypointV2Action-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UploadWaypointV2Action-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UploadWaypointV2Action)))
  'UploadWaypointV2Action-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UploadWaypointV2Action)))
  'UploadWaypointV2Action-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UploadWaypointV2Action)))
  "Returns string type for a service object of type '<UploadWaypointV2Action>"
  "dji_osdk_ros/UploadWaypointV2Action")