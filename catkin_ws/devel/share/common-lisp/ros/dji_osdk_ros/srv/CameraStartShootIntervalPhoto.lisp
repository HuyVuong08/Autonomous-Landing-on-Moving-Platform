; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraStartShootIntervalPhoto-request.msg.html

(cl:defclass <CameraStartShootIntervalPhoto-request> (roslisp-msg-protocol:ros-message)
  ((payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0)
   (photo_num_conticap
    :reader photo_num_conticap
    :initarg :photo_num_conticap
    :type cl:fixnum
    :initform 0)
   (time_interval
    :reader time_interval
    :initarg :time_interval
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraStartShootIntervalPhoto-request (<CameraStartShootIntervalPhoto-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStartShootIntervalPhoto-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStartShootIntervalPhoto-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraStartShootIntervalPhoto-request> is deprecated: use dji_osdk_ros-srv:CameraStartShootIntervalPhoto-request instead.")))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraStartShootIntervalPhoto-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))

(cl:ensure-generic-function 'photo_num_conticap-val :lambda-list '(m))
(cl:defmethod photo_num_conticap-val ((m <CameraStartShootIntervalPhoto-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:photo_num_conticap-val is deprecated.  Use dji_osdk_ros-srv:photo_num_conticap instead.")
  (photo_num_conticap m))

(cl:ensure-generic-function 'time_interval-val :lambda-list '(m))
(cl:defmethod time_interval-val ((m <CameraStartShootIntervalPhoto-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:time_interval-val is deprecated.  Use dji_osdk_ros-srv:time_interval instead.")
  (time_interval m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStartShootIntervalPhoto-request>) ostream)
  "Serializes a message object of type '<CameraStartShootIntervalPhoto-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'photo_num_conticap)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'time_interval)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStartShootIntervalPhoto-request>) istream)
  "Deserializes a message object of type '<CameraStartShootIntervalPhoto-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'photo_num_conticap)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_interval) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStartShootIntervalPhoto-request>)))
  "Returns string type for a service object of type '<CameraStartShootIntervalPhoto-request>"
  "dji_osdk_ros/CameraStartShootIntervalPhotoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStartShootIntervalPhoto-request)))
  "Returns string type for a service object of type 'CameraStartShootIntervalPhoto-request"
  "dji_osdk_ros/CameraStartShootIntervalPhotoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStartShootIntervalPhoto-request>)))
  "Returns md5sum for a message object of type '<CameraStartShootIntervalPhoto-request>"
  "bb20f8f95cde73a4d8b41d0f5a0bdcdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStartShootIntervalPhoto-request)))
  "Returns md5sum for a message object of type 'CameraStartShootIntervalPhoto-request"
  "bb20f8f95cde73a4d8b41d0f5a0bdcdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStartShootIntervalPhoto-request>)))
  "Returns full string definition for message of type '<CameraStartShootIntervalPhoto-request>"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 photo_num_conticap # 0:reserve 1~~254:number 255:keep capturing till stop~%int16 time_interval #/ time interval (second)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStartShootIntervalPhoto-request)))
  "Returns full string definition for message of type 'CameraStartShootIntervalPhoto-request"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 photo_num_conticap # 0:reserve 1~~254:number 255:keep capturing till stop~%int16 time_interval #/ time interval (second)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStartShootIntervalPhoto-request>))
  (cl:+ 0
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStartShootIntervalPhoto-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStartShootIntervalPhoto-request
    (cl:cons ':payload_index (payload_index msg))
    (cl:cons ':photo_num_conticap (photo_num_conticap msg))
    (cl:cons ':time_interval (time_interval msg))
))
;//! \htmlinclude CameraStartShootIntervalPhoto-response.msg.html

(cl:defclass <CameraStartShootIntervalPhoto-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraStartShootIntervalPhoto-response (<CameraStartShootIntervalPhoto-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStartShootIntervalPhoto-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStartShootIntervalPhoto-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraStartShootIntervalPhoto-response> is deprecated: use dji_osdk_ros-srv:CameraStartShootIntervalPhoto-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraStartShootIntervalPhoto-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStartShootIntervalPhoto-response>) ostream)
  "Serializes a message object of type '<CameraStartShootIntervalPhoto-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStartShootIntervalPhoto-response>) istream)
  "Deserializes a message object of type '<CameraStartShootIntervalPhoto-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStartShootIntervalPhoto-response>)))
  "Returns string type for a service object of type '<CameraStartShootIntervalPhoto-response>"
  "dji_osdk_ros/CameraStartShootIntervalPhotoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStartShootIntervalPhoto-response)))
  "Returns string type for a service object of type 'CameraStartShootIntervalPhoto-response"
  "dji_osdk_ros/CameraStartShootIntervalPhotoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStartShootIntervalPhoto-response>)))
  "Returns md5sum for a message object of type '<CameraStartShootIntervalPhoto-response>"
  "bb20f8f95cde73a4d8b41d0f5a0bdcdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStartShootIntervalPhoto-response)))
  "Returns md5sum for a message object of type 'CameraStartShootIntervalPhoto-response"
  "bb20f8f95cde73a4d8b41d0f5a0bdcdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStartShootIntervalPhoto-response>)))
  "Returns full string definition for message of type '<CameraStartShootIntervalPhoto-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStartShootIntervalPhoto-response)))
  "Returns full string definition for message of type 'CameraStartShootIntervalPhoto-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStartShootIntervalPhoto-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStartShootIntervalPhoto-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStartShootIntervalPhoto-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraStartShootIntervalPhoto)))
  'CameraStartShootIntervalPhoto-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraStartShootIntervalPhoto)))
  'CameraStartShootIntervalPhoto-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStartShootIntervalPhoto)))
  "Returns string type for a service object of type '<CameraStartShootIntervalPhoto>"
  "dji_osdk_ros/CameraStartShootIntervalPhoto")