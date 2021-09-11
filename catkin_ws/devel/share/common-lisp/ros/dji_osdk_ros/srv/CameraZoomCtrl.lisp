; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude CameraZoomCtrl-request.msg.html

(cl:defclass <CameraZoomCtrl-request> (roslisp-msg-protocol:ros-message)
  ((start_stop
    :reader start_stop
    :initarg :start_stop
    :type cl:fixnum
    :initform 0)
   (payload_index
    :reader payload_index
    :initarg :payload_index
    :type cl:fixnum
    :initform 0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraZoomCtrl-request (<CameraZoomCtrl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraZoomCtrl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraZoomCtrl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraZoomCtrl-request> is deprecated: use dji_osdk_ros-srv:CameraZoomCtrl-request instead.")))

(cl:ensure-generic-function 'start_stop-val :lambda-list '(m))
(cl:defmethod start_stop-val ((m <CameraZoomCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:start_stop-val is deprecated.  Use dji_osdk_ros-srv:start_stop instead.")
  (start_stop m))

(cl:ensure-generic-function 'payload_index-val :lambda-list '(m))
(cl:defmethod payload_index-val ((m <CameraZoomCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:payload_index-val is deprecated.  Use dji_osdk_ros-srv:payload_index instead.")
  (payload_index m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <CameraZoomCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:direction-val is deprecated.  Use dji_osdk_ros-srv:direction instead.")
  (direction m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <CameraZoomCtrl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:speed-val is deprecated.  Use dji_osdk_ros-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraZoomCtrl-request>) ostream)
  "Serializes a message object of type '<CameraZoomCtrl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_stop)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraZoomCtrl-request>) istream)
  "Deserializes a message object of type '<CameraZoomCtrl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_stop)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'payload_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraZoomCtrl-request>)))
  "Returns string type for a service object of type '<CameraZoomCtrl-request>"
  "dji_osdk_ros/CameraZoomCtrlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraZoomCtrl-request)))
  "Returns string type for a service object of type 'CameraZoomCtrl-request"
  "dji_osdk_ros/CameraZoomCtrlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraZoomCtrl-request>)))
  "Returns md5sum for a message object of type '<CameraZoomCtrl-request>"
  "15c6fe8ef5cfbafd183e87752b1029b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraZoomCtrl-request)))
  "Returns md5sum for a message object of type 'CameraZoomCtrl-request"
  "15c6fe8ef5cfbafd183e87752b1029b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraZoomCtrl-request>)))
  "Returns full string definition for message of type '<CameraZoomCtrl-request>"
  (cl:format cl:nil "#request~%uint8 start_stop~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 direction #see enum class ZoomDirection in common_type.h~%uint8 speed #see enum class ZoomSpeed in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraZoomCtrl-request)))
  "Returns full string definition for message of type 'CameraZoomCtrl-request"
  (cl:format cl:nil "#request~%uint8 start_stop~%uint8 payload_index #see enum class PayloadIndex in common_type.h~%uint8 direction #see enum class ZoomDirection in common_type.h~%uint8 speed #see enum class ZoomSpeed in common_type.h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraZoomCtrl-request>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraZoomCtrl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraZoomCtrl-request
    (cl:cons ':start_stop (start_stop msg))
    (cl:cons ':payload_index (payload_index msg))
    (cl:cons ':direction (direction msg))
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude CameraZoomCtrl-response.msg.html

(cl:defclass <CameraZoomCtrl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraZoomCtrl-response (<CameraZoomCtrl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraZoomCtrl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraZoomCtrl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<CameraZoomCtrl-response> is deprecated: use dji_osdk_ros-srv:CameraZoomCtrl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraZoomCtrl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraZoomCtrl-response>) ostream)
  "Serializes a message object of type '<CameraZoomCtrl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraZoomCtrl-response>) istream)
  "Deserializes a message object of type '<CameraZoomCtrl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraZoomCtrl-response>)))
  "Returns string type for a service object of type '<CameraZoomCtrl-response>"
  "dji_osdk_ros/CameraZoomCtrlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraZoomCtrl-response)))
  "Returns string type for a service object of type 'CameraZoomCtrl-response"
  "dji_osdk_ros/CameraZoomCtrlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraZoomCtrl-response>)))
  "Returns md5sum for a message object of type '<CameraZoomCtrl-response>"
  "15c6fe8ef5cfbafd183e87752b1029b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraZoomCtrl-response)))
  "Returns md5sum for a message object of type 'CameraZoomCtrl-response"
  "15c6fe8ef5cfbafd183e87752b1029b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraZoomCtrl-response>)))
  "Returns full string definition for message of type '<CameraZoomCtrl-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraZoomCtrl-response)))
  "Returns full string definition for message of type 'CameraZoomCtrl-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraZoomCtrl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraZoomCtrl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraZoomCtrl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraZoomCtrl)))
  'CameraZoomCtrl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraZoomCtrl)))
  'CameraZoomCtrl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraZoomCtrl)))
  "Returns string type for a service object of type '<CameraZoomCtrl>"
  "dji_osdk_ros/CameraZoomCtrl")