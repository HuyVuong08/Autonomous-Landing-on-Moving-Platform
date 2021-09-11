; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2CameraActuatorFocusParam.msg.html

(cl:defclass <WaypointV2CameraActuatorFocusParam> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (regionType
    :reader regionType
    :initarg :regionType
    :type cl:fixnum
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0))
)

(cl:defclass WaypointV2CameraActuatorFocusParam (<WaypointV2CameraActuatorFocusParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2CameraActuatorFocusParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2CameraActuatorFocusParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2CameraActuatorFocusParam> is deprecated: use dji_osdk_ros-msg:WaypointV2CameraActuatorFocusParam instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <WaypointV2CameraActuatorFocusParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:x-val is deprecated.  Use dji_osdk_ros-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <WaypointV2CameraActuatorFocusParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:y-val is deprecated.  Use dji_osdk_ros-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'regionType-val :lambda-list '(m))
(cl:defmethod regionType-val ((m <WaypointV2CameraActuatorFocusParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:regionType-val is deprecated.  Use dji_osdk_ros-msg:regionType instead.")
  (regionType m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <WaypointV2CameraActuatorFocusParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:width-val is deprecated.  Use dji_osdk_ros-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <WaypointV2CameraActuatorFocusParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:height-val is deprecated.  Use dji_osdk_ros-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointV2CameraActuatorFocusParam>)))
    "Constants for message type '<WaypointV2CameraActuatorFocusParam>"
  '((:RETRYTIMES . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointV2CameraActuatorFocusParam)))
    "Constants for message type 'WaypointV2CameraActuatorFocusParam"
  '((:RETRYTIMES . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2CameraActuatorFocusParam>) ostream)
  "Serializes a message object of type '<WaypointV2CameraActuatorFocusParam>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'regionType)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2CameraActuatorFocusParam>) istream)
  "Deserializes a message object of type '<WaypointV2CameraActuatorFocusParam>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'regionType)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2CameraActuatorFocusParam>)))
  "Returns string type for a message object of type '<WaypointV2CameraActuatorFocusParam>"
  "dji_osdk_ros/WaypointV2CameraActuatorFocusParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2CameraActuatorFocusParam)))
  "Returns string type for a message object of type 'WaypointV2CameraActuatorFocusParam"
  "dji_osdk_ros/WaypointV2CameraActuatorFocusParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2CameraActuatorFocusParam>)))
  "Returns md5sum for a message object of type '<WaypointV2CameraActuatorFocusParam>"
  "95b7a584dbbb8caef1fc7ac96e17cb2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2CameraActuatorFocusParam)))
  "Returns md5sum for a message object of type 'WaypointV2CameraActuatorFocusParam"
  "95b7a584dbbb8caef1fc7ac96e17cb2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2CameraActuatorFocusParam>)))
  "Returns full string definition for message of type '<WaypointV2CameraActuatorFocusParam>"
  (cl:format cl:nil "# This class defines a camera focus operation for ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%# The lens focus target point. When the focus mode is auto, the target point~%# is the focal point. When the focus mode is manual, the target point is the zoom~%# out area if the focus assistant is enabled for the manual mode.~%#  The range for x and y is from 0.0 to 1.0. The point [0.0, 0.0] represents the top-left angle of the screen.~%  ~%  float32 x # x axis focus point value.range: [0,1]~%  float32 y # y axis focus point value.range: [0,1]~%  uint8 regionType #focus type:0:point focus,1:rectangle focus~%  float32 width #Normalized focus area width(0,1)~%  float32 height # Normalized focus area height(0,1)~%  uint8 retryTimes = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2CameraActuatorFocusParam)))
  "Returns full string definition for message of type 'WaypointV2CameraActuatorFocusParam"
  (cl:format cl:nil "# This class defines a camera focus operation for ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%# The lens focus target point. When the focus mode is auto, the target point~%# is the focal point. When the focus mode is manual, the target point is the zoom~%# out area if the focus assistant is enabled for the manual mode.~%#  The range for x and y is from 0.0 to 1.0. The point [0.0, 0.0] represents the top-left angle of the screen.~%  ~%  float32 x # x axis focus point value.range: [0,1]~%  float32 y # y axis focus point value.range: [0,1]~%  uint8 regionType #focus type:0:point focus,1:rectangle focus~%  float32 width #Normalized focus area width(0,1)~%  float32 height # Normalized focus area height(0,1)~%  uint8 retryTimes = 1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2CameraActuatorFocusParam>))
  (cl:+ 0
     4
     4
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2CameraActuatorFocusParam>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2CameraActuatorFocusParam
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':regionType (regionType msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
