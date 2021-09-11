; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraStartShootBurstPhoto-request.msg.html

(cl:defclass <CameraStartShootBurstPhoto-request> (roslisp-msg-protocol:ros-message)
  ((payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0)
   (photo_burst_count
    :reader photo_burst_count
    :initarg :photo_burst_count
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraStartShootBurstPhoto-request (<CameraStartShootBurstPhoto-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStartShootBurstPhoto-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStartShootBurstPhoto-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraStartShootBurstPhoto-request> is deprecated: use dji_osdk_ros-srv:CameraStartShootBurstPhoto-request instead.")))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraStartShootBurstPhoto-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))

(cl:ensure-generic-function 'photo_burst_count-val :lambda-list '(m))
(cl:defmethod photo_burst_count-val ((m <CameraStartShootBurstPhoto-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:photo_burst_count-val is deprecated.  Use dji_osdk_ros-srv:photo_burst_count instead.")
  (photo_burst_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStartShootBurstPhoto-request>) ostream)
  "Serializes a message object of type '<CameraStartShootBurstPhoto-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'photo_burst_count)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStartShootBurstPhoto-request>) istream)
  "Deserializes a message object of type '<CameraStartShootBurstPhoto-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'photo_burst_count)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStartShootBurstPhoto-request>)))
  "Returns string type for a service object of type '<CameraStartShootBurstPhoto-request>"
  "dji_osdk_ros/CameraStartShootBurstPhotoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStartShootBurstPhoto-request)))
  "Returns string type for a service object of type 'CameraStartShootBurstPhoto-request"
  "dji_osdk_ros/CameraStartShootBurstPhotoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStartShootBurstPhoto-request>)))
  "Returns md5sum for a message object of type '<CameraStartShootBurstPhoto-request>"
  "f01c5147bd72cb4f71d9ae46f34d348e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStartShootBurstPhoto-request)))
  "Returns md5sum for a message object of type 'CameraStartShootBurstPhoto-request"
  "f01c5147bd72cb4f71d9ae46f34d348e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStartShootBurstPhoto-request>)))
  "Returns full string definition for message of type '<CameraStartShootBurstPhoto-request>"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 photo_burst_count #see enum class PhotoBurstCount in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStartShootBurstPhoto-request)))
  "Returns full string definition for message of type 'CameraStartShootBurstPhoto-request"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 photo_burst_count #see enum class PhotoBurstCount in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStartShootBurstPhoto-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStartShootBurstPhoto-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStartShootBurstPhoto-request
    (cl:cons ':payload_index (payload_index msg))
    (cl:cons ':photo_burst_count (photo_burst_count msg))
))
;//! \htmlinclude CameraStartShootBurstPhoto-response.msg.html

(cl:defclass <CameraStartShootBurstPhoto-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraStartShootBurstPhoto-response (<CameraStartShootBurstPhoto-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStartShootBurstPhoto-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStartShootBurstPhoto-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraStartShootBurstPhoto-response> is deprecated: use dji_osdk_ros-srv:CameraStartShootBurstPhoto-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraStartShootBurstPhoto-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStartShootBurstPhoto-response>) ostream)
  "Serializes a message object of type '<CameraStartShootBurstPhoto-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStartShootBurstPhoto-response>) istream)
  "Deserializes a message object of type '<CameraStartShootBurstPhoto-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStartShootBurstPhoto-response>)))
  "Returns string type for a service object of type '<CameraStartShootBurstPhoto-response>"
  "dji_osdk_ros/CameraStartShootBurstPhotoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStartShootBurstPhoto-response)))
  "Returns string type for a service object of type 'CameraStartShootBurstPhoto-response"
  "dji_osdk_ros/CameraStartShootBurstPhotoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStartShootBurstPhoto-response>)))
  "Returns md5sum for a message object of type '<CameraStartShootBurstPhoto-response>"
  "f01c5147bd72cb4f71d9ae46f34d348e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStartShootBurstPhoto-response)))
  "Returns md5sum for a message object of type 'CameraStartShootBurstPhoto-response"
  "f01c5147bd72cb4f71d9ae46f34d348e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStartShootBurstPhoto-response>)))
  "Returns full string definition for message of type '<CameraStartShootBurstPhoto-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStartShootBurstPhoto-response)))
  "Returns full string definition for message of type 'CameraStartShootBurstPhoto-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStartShootBurstPhoto-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStartShootBurstPhoto-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStartShootBurstPhoto-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraStartShootBurstPhoto)))
  'CameraStartShootBurstPhoto-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraStartShootBurstPhoto)))
  'CameraStartShootBurstPhoto-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStartShootBurstPhoto)))
  "Returns string type for a service object of type '<CameraStartShootBurstPhoto>"
  "dji_osdk_ros/CameraStartShootBurstPhoto")