; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2AircraftControlActuatorRotateHeading.msg.html

(cl:defclass <WaypointV2AircraftControlActuatorRotateHeading> (roslisp-msg-protocol:ros-message)
  ((isRelative
    :reader isRelative
    :initarg :isRelative
    :type cl:fixnum
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass WaypointV2AircraftControlActuatorRotateHeading (<WaypointV2AircraftControlActuatorRotateHeading>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2AircraftControlActuatorRotateHeading>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2AircraftControlActuatorRotateHeading)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2AircraftControlActuatorRotateHeading> is deprecated: use dji_osdk_ros-msg:WaypointV2AircraftControlActuatorRotateHeading instead.")))

(cl:ensure-generic-function 'isRelative-val :lambda-list '(m))
(cl:defmethod isRelative-val ((m <WaypointV2AircraftControlActuatorRotateHeading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:isRelative-val is deprecated.  Use dji_osdk_ros-msg:isRelative instead.")
  (isRelative m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <WaypointV2AircraftControlActuatorRotateHeading>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:yaw-val is deprecated.  Use dji_osdk_ros-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2AircraftControlActuatorRotateHeading>) ostream)
  "Serializes a message object of type '<WaypointV2AircraftControlActuatorRotateHeading>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isRelative)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2AircraftControlActuatorRotateHeading>) istream)
  "Deserializes a message object of type '<WaypointV2AircraftControlActuatorRotateHeading>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isRelative)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2AircraftControlActuatorRotateHeading>)))
  "Returns string type for a message object of type '<WaypointV2AircraftControlActuatorRotateHeading>"
  "dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2AircraftControlActuatorRotateHeading)))
  "Returns string type for a message object of type 'WaypointV2AircraftControlActuatorRotateHeading"
  "dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2AircraftControlActuatorRotateHeading>)))
  "Returns md5sum for a message object of type '<WaypointV2AircraftControlActuatorRotateHeading>"
  "da5a91dc67eed375ef69186b861ceea1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2AircraftControlActuatorRotateHeading)))
  "Returns md5sum for a message object of type 'WaypointV2AircraftControlActuatorRotateHeading"
  "da5a91dc67eed375ef69186b861ceea1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2AircraftControlActuatorRotateHeading>)))
  "Returns full string definition for message of type '<WaypointV2AircraftControlActuatorRotateHeading>"
  (cl:format cl:nil "# This class defines how the aircraft rotates on the yaw axis.~%  uint8 isRelative # Determines the aircraft rotate heading relative.~%                     # if ``TRUE``, when the aircraft is rotating, relative to the current angle.~%  float32 yaw # Determines the direction how aircraft changes its heading.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2AircraftControlActuatorRotateHeading)))
  "Returns full string definition for message of type 'WaypointV2AircraftControlActuatorRotateHeading"
  (cl:format cl:nil "# This class defines how the aircraft rotates on the yaw axis.~%  uint8 isRelative # Determines the aircraft rotate heading relative.~%                     # if ``TRUE``, when the aircraft is rotating, relative to the current angle.~%  float32 yaw # Determines the direction how aircraft changes its heading.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2AircraftControlActuatorRotateHeading>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2AircraftControlActuatorRotateHeading>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2AircraftControlActuatorRotateHeading
    (cl:cons ':isRelative (isRelative msg))
    (cl:cons ':yaw (yaw msg))
))
