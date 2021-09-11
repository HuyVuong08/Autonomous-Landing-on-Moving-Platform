; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraStartShootAEBPhoto-request.msg.html

(cl:defclass <CameraStartShootAEBPhoto-request> (roslisp-msg-protocol:ros-message)
  ((payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0)
   (photo_aeb_count
    :reader photo_aeb_count
    :initarg :photo_aeb_count
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraStartShootAEBPhoto-request (<CameraStartShootAEBPhoto-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStartShootAEBPhoto-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStartShootAEBPhoto-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraStartShootAEBPhoto-request> is deprecated: use dji_osdk_ros-srv:CameraStartShootAEBPhoto-request instead.")))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraStartShootAEBPhoto-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))

(cl:ensure-generic-function 'photo_aeb_count-val :lambda-list '(m))
(cl:defmethod photo_aeb_count-val ((m <CameraStartShootAEBPhoto-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:photo_aeb_count-val is deprecated.  Use dji_osdk_ros-srv:photo_aeb_count instead.")
  (photo_aeb_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStartShootAEBPhoto-request>) ostream)
  "Serializes a message object of type '<CameraStartShootAEBPhoto-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'photo_aeb_count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStartShootAEBPhoto-request>) istream)
  "Deserializes a message object of type '<CameraStartShootAEBPhoto-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'photo_aeb_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStartShootAEBPhoto-request>)))
  "Returns string type for a service object of type '<CameraStartShootAEBPhoto-request>"
  "dji_osdk_ros/CameraStartShootAEBPhotoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStartShootAEBPhoto-request)))
  "Returns string type for a service object of type 'CameraStartShootAEBPhoto-request"
  "dji_osdk_ros/CameraStartShootAEBPhotoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStartShootAEBPhoto-request>)))
  "Returns md5sum for a message object of type '<CameraStartShootAEBPhoto-request>"
  "c30d8282262b81c056e4ae369862d80d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStartShootAEBPhoto-request)))
  "Returns md5sum for a message object of type 'CameraStartShootAEBPhoto-request"
  "c30d8282262b81c056e4ae369862d80d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStartShootAEBPhoto-request>)))
  "Returns full string definition for message of type '<CameraStartShootAEBPhoto-request>"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 photo_aeb_count #see enum class PhotoAEBCount in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStartShootAEBPhoto-request)))
  "Returns full string definition for message of type 'CameraStartShootAEBPhoto-request"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 photo_aeb_count #see enum class PhotoAEBCount in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStartShootAEBPhoto-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStartShootAEBPhoto-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStartShootAEBPhoto-request
    (cl:cons ':payload_index (payload_index msg))
    (cl:cons ':photo_aeb_count (photo_aeb_count msg))
))
;//! \htmlinclude CameraStartShootAEBPhoto-response.msg.html

(cl:defclass <CameraStartShootAEBPhoto-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraStartShootAEBPhoto-response (<CameraStartShootAEBPhoto-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStartShootAEBPhoto-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStartShootAEBPhoto-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraStartShootAEBPhoto-response> is deprecated: use dji_osdk_ros-srv:CameraStartShootAEBPhoto-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraStartShootAEBPhoto-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStartShootAEBPhoto-response>) ostream)
  "Serializes a message object of type '<CameraStartShootAEBPhoto-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStartShootAEBPhoto-response>) istream)
  "Deserializes a message object of type '<CameraStartShootAEBPhoto-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStartShootAEBPhoto-response>)))
  "Returns string type for a service object of type '<CameraStartShootAEBPhoto-response>"
  "dji_osdk_ros/CameraStartShootAEBPhotoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStartShootAEBPhoto-response)))
  "Returns string type for a service object of type 'CameraStartShootAEBPhoto-response"
  "dji_osdk_ros/CameraStartShootAEBPhotoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStartShootAEBPhoto-response>)))
  "Returns md5sum for a message object of type '<CameraStartShootAEBPhoto-response>"
  "c30d8282262b81c056e4ae369862d80d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStartShootAEBPhoto-response)))
  "Returns md5sum for a message object of type 'CameraStartShootAEBPhoto-response"
  "c30d8282262b81c056e4ae369862d80d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStartShootAEBPhoto-response>)))
  "Returns full string definition for message of type '<CameraStartShootAEBPhoto-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStartShootAEBPhoto-response)))
  "Returns full string definition for message of type 'CameraStartShootAEBPhoto-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStartShootAEBPhoto-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStartShootAEBPhoto-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStartShootAEBPhoto-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraStartShootAEBPhoto)))
  'CameraStartShootAEBPhoto-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraStartShootAEBPhoto)))
  'CameraStartShootAEBPhoto-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStartShootAEBPhoto)))
  "Returns string type for a service object of type '<CameraStartShootAEBPhoto>"
  "dji_osdk_ros/CameraStartShootAEBPhoto")