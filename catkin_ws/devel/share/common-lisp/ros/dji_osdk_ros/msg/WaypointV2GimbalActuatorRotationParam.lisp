; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2GimbalActuatorRotationParam.msg.html

(cl:defclass <WaypointV2GimbalActuatorRotationParam> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0)
   (z
    :reader z
    :initarg :z
    :type cl:fixnum
    :initform 0)
   (ctrl_mode
    :reader ctrl_mode
    :initarg :ctrl_mode
    :type cl:fixnum
    :initform 0)
   (rollCmdIgnore
    :reader rollCmdIgnore
    :initarg :rollCmdIgnore
    :type cl:fixnum
    :initform 0)
   (pitchCmdIgnore
    :reader pitchCmdIgnore
    :initarg :pitchCmdIgnore
    :type cl:fixnum
    :initform 0)
   (yawCmdIgnore
    :reader yawCmdIgnore
    :initarg :yawCmdIgnore
    :type cl:fixnum
    :initform 0)
   (absYawModeRef
    :reader absYawModeRef
    :initarg :absYawModeRef
    :type cl:fixnum
    :initform 0)
   (duationTime
    :reader duationTime
    :initarg :duationTime
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointV2GimbalActuatorRotationParam (<WaypointV2GimbalActuatorRotationParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2GimbalActuatorRotationParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2GimbalActuatorRotationParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2GimbalActuatorRotationParam> is deprecated: use dji_osdk_ros-msg:WaypointV2GimbalActuatorRotationParam instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <WaypointV2GimbalActuatorRotationParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:x-val is deprecated.  Use dji_osdk_ros-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <WaypointV2GimbalActuatorRotationParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:y-val is deprecated.  Use dji_osdk_ros-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <WaypointV2GimbalActuatorRotationParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:z-val is deprecated.  Use dji_osdk_ros-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'ctrl_mode-val :lambda-list '(m))
(cl:defmethod ctrl_mode-val ((m <WaypointV2GimbalActuatorRotationParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:ctrl_mode-val is deprecated.  Use dji_osdk_ros-msg:ctrl_mode instead.")
  (ctrl_mode m))

(cl:ensure-generic-function 'rollCmdIgnore-val :lambda-list '(m))
(cl:defmethod rollCmdIgnore-val ((m <WaypointV2GimbalActuatorRotationParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:rollCmdIgnore-val is deprecated.  Use dji_osdk_ros-msg:rollCmdIgnore instead.")
  (rollCmdIgnore m))

(cl:ensure-generic-function 'pitchCmdIgnore-val :lambda-list '(m))
(cl:defmethod pitchCmdIgnore-val ((m <WaypointV2GimbalActuatorRotationParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:pitchCmdIgnore-val is deprecated.  Use dji_osdk_ros-msg:pitchCmdIgnore instead.")
  (pitchCmdIgnore m))

(cl:ensure-generic-function 'yawCmdIgnore-val :lambda-list '(m))
(cl:defmethod yawCmdIgnore-val ((m <WaypointV2GimbalActuatorRotationParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:yawCmdIgnore-val is deprecated.  Use dji_osdk_ros-msg:yawCmdIgnore instead.")
  (yawCmdIgnore m))

(cl:ensure-generic-function 'absYawModeRef-val :lambda-list '(m))
(cl:defmethod absYawModeRef-val ((m <WaypointV2GimbalActuatorRotationParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:absYawModeRef-val is deprecated.  Use dji_osdk_ros-msg:absYawModeRef instead.")
  (absYawModeRef m))

(cl:ensure-generic-function 'duationTime-val :lambda-list '(m))
(cl:defmethod duationTime-val ((m <WaypointV2GimbalActuatorRotationParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:duationTime-val is deprecated.  Use dji_osdk_ros-msg:duationTime instead.")
  (duationTime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2GimbalActuatorRotationParam>) ostream)
  "Serializes a message object of type '<WaypointV2GimbalActuatorRotationParam>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctrl_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rollCmdIgnore)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pitchCmdIgnore)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yawCmdIgnore)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'absYawModeRef)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duationTime)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2GimbalActuatorRotationParam>) istream)
  "Deserializes a message object of type '<WaypointV2GimbalActuatorRotationParam>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ctrl_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rollCmdIgnore)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pitchCmdIgnore)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yawCmdIgnore)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'absYawModeRef)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duationTime)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2GimbalActuatorRotationParam>)))
  "Returns string type for a message object of type '<WaypointV2GimbalActuatorRotationParam>"
  "dji_osdk_ros/WaypointV2GimbalActuatorRotationParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2GimbalActuatorRotationParam)))
  "Returns string type for a message object of type 'WaypointV2GimbalActuatorRotationParam"
  "dji_osdk_ros/WaypointV2GimbalActuatorRotationParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2GimbalActuatorRotationParam>)))
  "Returns md5sum for a message object of type '<WaypointV2GimbalActuatorRotationParam>"
  "d6369db5b1897817b8aad8457ecdbd81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2GimbalActuatorRotationParam)))
  "Returns md5sum for a message object of type 'WaypointV2GimbalActuatorRotationParam"
  "d6369db5b1897817b8aad8457ecdbd81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2GimbalActuatorRotationParam>)))
  "Returns full string definition for message of type '<WaypointV2GimbalActuatorRotationParam>"
  (cl:format cl:nil "  int16 x             # gimbal roll angle,  unit: 0.1 deg,range:[-3600, 3600]*/~%  int16 y             # gimbal pitch angle, unit: 0.1 deg,range:[-3600, 3600]*/~%  int16 z             # gimbal yaw angle,   unit: 0.1 deg,range:[-3600, 3600]*/~%  uint8 ctrl_mode     # 0: absolute position control, 1:relative position control*/~%  uint8 rollCmdIgnore # 0: roll command normal,  1: roll command ignore*/~%  uint8 pitchCmdIgnore# 0: pitch command normal,  1: pitch command ignore*/~%  uint8 yawCmdIgnore  # 0: yaw command normal,  1: yaw command ignore*/~%  uint8 absYawModeRef # 0: absoluate rotate yaw relative to aircraft,~%                      #  1: absoluate rotate yaw relative to North*/~%  uint8 duationTime    # 0: rotate time,unit:0.1s, range[1,255]*/~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2GimbalActuatorRotationParam)))
  "Returns full string definition for message of type 'WaypointV2GimbalActuatorRotationParam"
  (cl:format cl:nil "  int16 x             # gimbal roll angle,  unit: 0.1 deg,range:[-3600, 3600]*/~%  int16 y             # gimbal pitch angle, unit: 0.1 deg,range:[-3600, 3600]*/~%  int16 z             # gimbal yaw angle,   unit: 0.1 deg,range:[-3600, 3600]*/~%  uint8 ctrl_mode     # 0: absolute position control, 1:relative position control*/~%  uint8 rollCmdIgnore # 0: roll command normal,  1: roll command ignore*/~%  uint8 pitchCmdIgnore# 0: pitch command normal,  1: pitch command ignore*/~%  uint8 yawCmdIgnore  # 0: yaw command normal,  1: yaw command ignore*/~%  uint8 absYawModeRef # 0: absoluate rotate yaw relative to aircraft,~%                      #  1: absoluate rotate yaw relative to North*/~%  uint8 duationTime    # 0: rotate time,unit:0.1s, range[1,255]*/~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2GimbalActuatorRotationParam>))
  (cl:+ 0
     2
     2
     2
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2GimbalActuatorRotationParam>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2GimbalActuatorRotationParam
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':ctrl_mode (ctrl_mode msg))
    (cl:cons ':rollCmdIgnore (rollCmdIgnore msg))
    (cl:cons ':pitchCmdIgnore (pitchCmdIgnore msg))
    (cl:cons ':yawCmdIgnore (yawCmdIgnore msg))
    (cl:cons ':absYawModeRef (absYawModeRef msg))
    (cl:cons ':duationTime (duationTime msg))
))
