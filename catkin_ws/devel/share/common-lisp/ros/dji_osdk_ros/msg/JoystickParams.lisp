; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude JoystickParams.msg.html

(cl:defclass <JoystickParams> (roslisp-msg-protocol:ros-message)
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
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass JoystickParams (<JoystickParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoystickParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoystickParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<JoystickParams> is deprecated: use dji_osdk_ros-msg:JoystickParams instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <JoystickParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:x-val is deprecated.  Use dji_osdk_ros-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <JoystickParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:y-val is deprecated.  Use dji_osdk_ros-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <JoystickParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:z-val is deprecated.  Use dji_osdk_ros-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <JoystickParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:yaw-val is deprecated.  Use dji_osdk_ros-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoystickParams>) ostream)
  "Serializes a message object of type '<JoystickParams>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoystickParams>) istream)
  "Deserializes a message object of type '<JoystickParams>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoystickParams>)))
  "Returns string type for a message object of type '<JoystickParams>"
  "dji_osdk_ros/JoystickParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoystickParams)))
  "Returns string type for a message object of type 'JoystickParams"
  "dji_osdk_ros/JoystickParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoystickParams>)))
  "Returns md5sum for a message object of type '<JoystickParams>"
  "b81376c2774ff4f956e5110e01c9db26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoystickParams)))
  "Returns md5sum for a message object of type 'JoystickParams"
  "b81376c2774ff4f956e5110e01c9db26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoystickParams>)))
  "Returns full string definition for message of type '<JoystickParams>"
  (cl:format cl:nil "float32 x   # Control with respect to the x axis of the~%            # DJI::OSDK::Control::HorizontalCoordinate.~%float32 y   # Control with respect to the y axis of the~%            # DJI::OSDK::Control::HorizontalCoordinate.~%float32 z   # Control with respect to the z axis, up is positive.~%float32 yaw #Yaw position/velocity control w.r.t. the ground frame.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoystickParams)))
  "Returns full string definition for message of type 'JoystickParams"
  (cl:format cl:nil "float32 x   # Control with respect to the x axis of the~%            # DJI::OSDK::Control::HorizontalCoordinate.~%float32 y   # Control with respect to the y axis of the~%            # DJI::OSDK::Control::HorizontalCoordinate.~%float32 z   # Control with respect to the z axis, up is positive.~%float32 yaw #Yaw position/velocity control w.r.t. the ground frame.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoystickParams>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoystickParams>))
  "Converts a ROS message object to a list"
  (cl:list 'JoystickParams
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':yaw (yaw msg))
))
