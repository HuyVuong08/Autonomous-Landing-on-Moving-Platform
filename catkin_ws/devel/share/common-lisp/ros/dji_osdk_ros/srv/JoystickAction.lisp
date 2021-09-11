; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-srv)


;//! \htmlinclude JoystickAction-request.msg.html

(cl:defclass <JoystickAction-request> (roslisp-msg-protocol:ros-message)
  ((joystickCommand
    :reader joystickCommand
    :initarg :joystickCommand
    :type dji_osdk_ros-msg:JoystickParams
    :initform (cl:make-instance 'dji_osdk_ros-msg:JoystickParams)))
)

(cl:defclass JoystickAction-request (<JoystickAction-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoystickAction-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoystickAction-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<JoystickAction-request> is deprecated: use dji_osdk_ros-srv:JoystickAction-request instead.")))

(cl:ensure-generic-function 'joystickCommand-val :lambda-list '(m))
(cl:defmethod joystickCommand-val ((m <JoystickAction-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:joystickCommand-val is deprecated.  Use dji_osdk_ros-srv:joystickCommand instead.")
  (joystickCommand m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoystickAction-request>) ostream)
  "Serializes a message object of type '<JoystickAction-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joystickCommand) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoystickAction-request>) istream)
  "Deserializes a message object of type '<JoystickAction-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joystickCommand) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoystickAction-request>)))
  "Returns string type for a service object of type '<JoystickAction-request>"
  "dji_osdk_ros/JoystickActionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoystickAction-request)))
  "Returns string type for a service object of type 'JoystickAction-request"
  "dji_osdk_ros/JoystickActionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoystickAction-request>)))
  "Returns md5sum for a message object of type '<JoystickAction-request>"
  "9edeea71222489b7e9f0a37b50217781")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoystickAction-request)))
  "Returns md5sum for a message object of type 'JoystickAction-request"
  "9edeea71222489b7e9f0a37b50217781")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoystickAction-request>)))
  "Returns full string definition for message of type '<JoystickAction-request>"
  (cl:format cl:nil "#request~%JoystickParams joystickCommand~%~%================================================================================~%MSG: dji_osdk_ros/JoystickParams~%float32 x   # Control with respect to the x axis of the~%            # DJI::OSDK::Control::HorizontalCoordinate.~%float32 y   # Control with respect to the y axis of the~%            # DJI::OSDK::Control::HorizontalCoordinate.~%float32 z   # Control with respect to the z axis, up is positive.~%float32 yaw #Yaw position/velocity control w.r.t. the ground frame.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoystickAction-request)))
  "Returns full string definition for message of type 'JoystickAction-request"
  (cl:format cl:nil "#request~%JoystickParams joystickCommand~%~%================================================================================~%MSG: dji_osdk_ros/JoystickParams~%float32 x   # Control with respect to the x axis of the~%            # DJI::OSDK::Control::HorizontalCoordinate.~%float32 y   # Control with respect to the y axis of the~%            # DJI::OSDK::Control::HorizontalCoordinate.~%float32 z   # Control with respect to the z axis, up is positive.~%float32 yaw #Yaw position/velocity control w.r.t. the ground frame.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoystickAction-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joystickCommand))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoystickAction-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JoystickAction-request
    (cl:cons ':joystickCommand (joystickCommand msg))
))
;//! \htmlinclude JoystickAction-response.msg.html

(cl:defclass <JoystickAction-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass JoystickAction-response (<JoystickAction-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JoystickAction-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JoystickAction-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-srv:<JoystickAction-response> is deprecated: use dji_osdk_ros-srv:JoystickAction-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <JoystickAction-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-srv:result-val is deprecated.  Use dji_osdk_ros-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JoystickAction-response>) ostream)
  "Serializes a message object of type '<JoystickAction-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JoystickAction-response>) istream)
  "Deserializes a message object of type '<JoystickAction-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JoystickAction-response>)))
  "Returns string type for a service object of type '<JoystickAction-response>"
  "dji_osdk_ros/JoystickActionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoystickAction-response)))
  "Returns string type for a service object of type 'JoystickAction-response"
  "dji_osdk_ros/JoystickActionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JoystickAction-response>)))
  "Returns md5sum for a message object of type '<JoystickAction-response>"
  "9edeea71222489b7e9f0a37b50217781")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JoystickAction-response)))
  "Returns md5sum for a message object of type 'JoystickAction-response"
  "9edeea71222489b7e9f0a37b50217781")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JoystickAction-response>)))
  "Returns full string definition for message of type '<JoystickAction-response>"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JoystickAction-response)))
  "Returns full string definition for message of type 'JoystickAction-response"
  (cl:format cl:nil "#response~%bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JoystickAction-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JoystickAction-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JoystickAction-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JoystickAction)))
  'JoystickAction-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JoystickAction)))
  'JoystickAction-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JoystickAction)))
  "Returns string type for a service object of type '<JoystickAction>"
  "dji_osdk_ros/JoystickAction")