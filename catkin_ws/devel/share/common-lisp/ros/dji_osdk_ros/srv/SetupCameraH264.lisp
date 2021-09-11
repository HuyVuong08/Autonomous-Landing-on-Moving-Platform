; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude SetupCameraH264-request.msg.html

(cl:defclass <SetupCameraH264-request> (roslisp-msg-protocol:ros-message)
  ((request_view
    :reader request_view
    :initarg :request_view
    :type cl:fixnum
    :initform 0)
   (start
    :reader start
    :initarg :start
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetupCameraH264-request (<SetupCameraH264-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetupCameraH264-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetupCameraH264-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetupCameraH264-request> is deprecated: use dji_osdk_ros-srv:SetupCameraH264-request instead.")))

(cl:ensure-generic-function 'request_view-val :lambda-list '(m))
(cl:defmethod request_view-val ((m <SetupCameraH264-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:request_view-val is deprecated.  Use dji_osdk_ros-srv:request_view instead.")
  (request_view m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <SetupCameraH264-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:start-val is deprecated.  Use dji_osdk_ros-srv:start instead.")
  (start m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetupCameraH264-request>)))
    "Constants for message type '<SetupCameraH264-request>"
  '((:FPV_CAMERA . 7)
    (:MAIN_CAMERA . 0)
    (:VICE_CAMERA . 1)
    (:TOP_CAMERA . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetupCameraH264-request)))
    "Constants for message type 'SetupCameraH264-request"
  '((:FPV_CAMERA . 7)
    (:MAIN_CAMERA . 0)
    (:VICE_CAMERA . 1)
    (:TOP_CAMERA . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetupCameraH264-request>) ostream)
  "Serializes a message object of type '<SetupCameraH264-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_view)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetupCameraH264-request>) istream)
  "Deserializes a message object of type '<SetupCameraH264-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'request_view)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetupCameraH264-request>)))
  "Returns string type for a service object of type '<SetupCameraH264-request>"
  "dji_osdk_ros/SetupCameraH264Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetupCameraH264-request)))
  "Returns string type for a service object of type 'SetupCameraH264-request"
  "dji_osdk_ros/SetupCameraH264Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetupCameraH264-request>)))
  "Returns md5sum for a message object of type '<SetupCameraH264-request>"
  "08053824d6e6943daabf1c4c8936b823")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetupCameraH264-request)))
  "Returns md5sum for a message object of type 'SetupCameraH264-request"
  "08053824d6e6943daabf1c4c8936b823")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetupCameraH264-request>)))
  "Returns full string definition for message of type '<SetupCameraH264-request>"
  (cl:format cl:nil "#constant for vga image frequency~%uint8 FPV_CAMERA  = 7~%uint8 MAIN_CAMERA = 0~%uint8 VICE_CAMERA = 1~%uint8 TOP_CAMERA  = 2~%~%# use above constants to config freq.~%uint8 request_view~%~%# 1 for start camera stream, 0 for stop~%uint8 start~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetupCameraH264-request)))
  "Returns full string definition for message of type 'SetupCameraH264-request"
  (cl:format cl:nil "#constant for vga image frequency~%uint8 FPV_CAMERA  = 7~%uint8 MAIN_CAMERA = 0~%uint8 VICE_CAMERA = 1~%uint8 TOP_CAMERA  = 2~%~%# use above constants to config freq.~%uint8 request_view~%~%# 1 for start camera stream, 0 for stop~%uint8 start~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetupCameraH264-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetupCameraH264-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetupCameraH264-request
    (cl:cons ':request_view (request_view msg))
    (cl:cons ':start (start msg))
))
;//! \htmlinclude SetupCameraH264-response.msg.html

(cl:defclass <SetupCameraH264-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetupCameraH264-response (<SetupCameraH264-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetupCameraH264-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetupCameraH264-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<SetupCameraH264-response> is deprecated: use dji_osdk_ros-srv:SetupCameraH264-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SetupCameraH264-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetupCameraH264-response>) ostream)
  "Serializes a message object of type '<SetupCameraH264-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetupCameraH264-response>) istream)
  "Deserializes a message object of type '<SetupCameraH264-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetupCameraH264-response>)))
  "Returns string type for a service object of type '<SetupCameraH264-response>"
  "dji_osdk_ros/SetupCameraH264Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetupCameraH264-response)))
  "Returns string type for a service object of type 'SetupCameraH264-response"
  "dji_osdk_ros/SetupCameraH264Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetupCameraH264-response>)))
  "Returns md5sum for a message object of type '<SetupCameraH264-response>"
  "08053824d6e6943daabf1c4c8936b823")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetupCameraH264-response)))
  "Returns md5sum for a message object of type 'SetupCameraH264-response"
  "08053824d6e6943daabf1c4c8936b823")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetupCameraH264-response>)))
  "Returns full string definition for message of type '<SetupCameraH264-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetupCameraH264-response)))
  "Returns full string definition for message of type 'SetupCameraH264-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetupCameraH264-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetupCameraH264-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetupCameraH264-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetupCameraH264)))
  'SetupCameraH264-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetupCameraH264)))
  'SetupCameraH264-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetupCameraH264)))
  "Returns string type for a service object of type '<SetupCameraH264>"
  "dji_osdk_ros/SetupCameraH264")