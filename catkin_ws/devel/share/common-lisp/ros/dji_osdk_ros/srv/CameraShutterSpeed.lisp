; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraShutterSpeed-request.msg.html

(cl:defclass <CameraShutterSpeed-request> (roslisp-msg-protocol:ros-message)
  ((payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0)
   (exposure_mode
    :reader exposure_mode
    :initarg :exposure_mode
    :type cl:fixnum
    :initform 0)
   (shutter_speed
    :reader shutter_speed
    :initarg :shutter_speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraShutterSpeed-request (<CameraShutterSpeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraShutterSpeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraShutterSpeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraShutterSpeed-request> is deprecated: use dji_osdk_ros-srv:CameraShutterSpeed-request instead.")))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraShutterSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))

(cl:ensure-generic-function 'exposure_mode-val :lambda-list '(m))
(cl:defmethod exposure_mode-val ((m <CameraShutterSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:exposure_mode-val is deprecated.  Use dji_osdk_ros-srv:exposure_mode instead.")
  (exposure_mode m))

(cl:ensure-generic-function 'shutter_speed-val :lambda-list '(m))
(cl:defmethod shutter_speed-val ((m <CameraShutterSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:shutter_speed-val is deprecated.  Use dji_osdk_ros-srv:shutter_speed instead.")
  (shutter_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraShutterSpeed-request>) ostream)
  "Serializes a message object of type '<CameraShutterSpeed-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shutter_speed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraShutterSpeed-request>) istream)
  "Deserializes a message object of type '<CameraShutterSpeed-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shutter_speed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraShutterSpeed-request>)))
  "Returns string type for a service object of type '<CameraShutterSpeed-request>"
  "dji_osdk_ros/CameraShutterSpeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraShutterSpeed-request)))
  "Returns string type for a service object of type 'CameraShutterSpeed-request"
  "dji_osdk_ros/CameraShutterSpeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraShutterSpeed-request>)))
  "Returns md5sum for a message object of type '<CameraShutterSpeed-request>"
  "cab76933e4cde3ed0525dd3c2f4ed953")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraShutterSpeed-request)))
  "Returns md5sum for a message object of type 'CameraShutterSpeed-request"
  "cab76933e4cde3ed0525dd3c2f4ed953")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraShutterSpeed-request>)))
  "Returns full string definition for message of type '<CameraShutterSpeed-request>"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 exposure_mode #see enum class ExposureMode in common_type.h~%uint8 shutter_speed #see enum class ShutterSpeed in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraShutterSpeed-request)))
  "Returns full string definition for message of type 'CameraShutterSpeed-request"
  (cl:format cl:nil "#request~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 exposure_mode #see enum class ExposureMode in common_type.h~%uint8 shutter_speed #see enum class ShutterSpeed in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraShutterSpeed-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraShutterSpeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraShutterSpeed-request
    (cl:cons ':payload_index (payload_index msg))
    (cl:cons ':exposure_mode (exposure_mode msg))
    (cl:cons ':shutter_speed (shutter_speed msg))
))
;//! \htmlinclude CameraShutterSpeed-response.msg.html

(cl:defclass <CameraShutterSpeed-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraShutterSpeed-response (<CameraShutterSpeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraShutterSpeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraShutterSpeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraShutterSpeed-response> is deprecated: use dji_osdk_ros-srv:CameraShutterSpeed-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraShutterSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraShutterSpeed-response>) ostream)
  "Serializes a message object of type '<CameraShutterSpeed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraShutterSpeed-response>) istream)
  "Deserializes a message object of type '<CameraShutterSpeed-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraShutterSpeed-response>)))
  "Returns string type for a service object of type '<CameraShutterSpeed-response>"
  "dji_osdk_ros/CameraShutterSpeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraShutterSpeed-response)))
  "Returns string type for a service object of type 'CameraShutterSpeed-response"
  "dji_osdk_ros/CameraShutterSpeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraShutterSpeed-response>)))
  "Returns md5sum for a message object of type '<CameraShutterSpeed-response>"
  "cab76933e4cde3ed0525dd3c2f4ed953")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraShutterSpeed-response)))
  "Returns md5sum for a message object of type 'CameraShutterSpeed-response"
  "cab76933e4cde3ed0525dd3c2f4ed953")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraShutterSpeed-response>)))
  "Returns full string definition for message of type '<CameraShutterSpeed-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraShutterSpeed-response)))
  "Returns full string definition for message of type 'CameraShutterSpeed-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraShutterSpeed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraShutterSpeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraShutterSpeed-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraShutterSpeed)))
  'CameraShutterSpeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraShutterSpeed)))
  'CameraShutterSpeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraShutterSpeed)))
  "Returns string type for a service object of type '<CameraShutterSpeed>"
  "dji_osdk_ros/CameraShutterSpeed")