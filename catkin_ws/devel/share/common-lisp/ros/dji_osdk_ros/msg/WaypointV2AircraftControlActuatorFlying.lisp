; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2AircraftControlActuatorFlying.msg.html

(cl:defclass <WaypointV2AircraftControlActuatorFlying> (roslisp-msg-protocol:ros-message)
  ((isStartFlying
    :reader isStartFlying
    :initarg :isStartFlying
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointV2AircraftControlActuatorFlying (<WaypointV2AircraftControlActuatorFlying>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2AircraftControlActuatorFlying>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2AircraftControlActuatorFlying)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2AircraftControlActuatorFlying> is deprecated: use dji_osdk_ros-msg:WaypointV2AircraftControlActuatorFlying instead.")))

(cl:ensure-generic-function 'isStartFlying-val :lambda-list '(m))
(cl:defmethod isStartFlying-val ((m <WaypointV2AircraftControlActuatorFlying>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:isStartFlying-val is deprecated.  Use dji_osdk_ros-msg:isStartFlying instead.")
  (isStartFlying m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2AircraftControlActuatorFlying>) ostream)
  "Serializes a message object of type '<WaypointV2AircraftControlActuatorFlying>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isStartFlying)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2AircraftControlActuatorFlying>) istream)
  "Deserializes a message object of type '<WaypointV2AircraftControlActuatorFlying>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isStartFlying)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2AircraftControlActuatorFlying>)))
  "Returns string type for a message object of type '<WaypointV2AircraftControlActuatorFlying>"
  "dji_osdk_ros/WaypointV2AircraftControlActuatorFlying")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2AircraftControlActuatorFlying)))
  "Returns string type for a message object of type 'WaypointV2AircraftControlActuatorFlying"
  "dji_osdk_ros/WaypointV2AircraftControlActuatorFlying")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2AircraftControlActuatorFlying>)))
  "Returns md5sum for a message object of type '<WaypointV2AircraftControlActuatorFlying>"
  "dc8731a524ee2cb9265a3e7483e070f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2AircraftControlActuatorFlying)))
  "Returns md5sum for a message object of type 'WaypointV2AircraftControlActuatorFlying"
  "dc8731a524ee2cb9265a3e7483e070f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2AircraftControlActuatorFlying>)))
  "Returns full string definition for message of type '<WaypointV2AircraftControlActuatorFlying>"
  (cl:format cl:nil "# This class defines if the aircraft starts or stops the flight.s.~%uint8  isStartFlying  # Determines the aircraft start flying or stop flying.~%                        # ``TRUE`` for the aircraft to start flying.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2AircraftControlActuatorFlying)))
  "Returns full string definition for message of type 'WaypointV2AircraftControlActuatorFlying"
  (cl:format cl:nil "# This class defines if the aircraft starts or stops the flight.s.~%uint8  isStartFlying  # Determines the aircraft start flying or stop flying.~%                        # ``TRUE`` for the aircraft to start flying.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2AircraftControlActuatorFlying>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2AircraftControlActuatorFlying>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2AircraftControlActuatorFlying
    (cl:cons ':isStartFlying (isStartFlying msg))
))
