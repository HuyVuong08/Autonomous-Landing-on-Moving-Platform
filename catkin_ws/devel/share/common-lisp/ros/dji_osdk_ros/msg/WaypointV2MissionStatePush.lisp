; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2MissionStatePush.msg.html

(cl:defclass <WaypointV2MissionStatePush> (roslisp-msg-protocol:ros-message)
  ((commonDataVersion
    :reader commonDataVersion
    :initarg :commonDataVersion
    :type cl:fixnum
    :initform 0)
   (commonDataLen
    :reader commonDataLen
    :initarg :commonDataLen
    :type cl:fixnum
    :initform 0)
   (curWaypointIndex
    :reader curWaypointIndex
    :initarg :curWaypointIndex
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointV2MissionStatePush (<WaypointV2MissionStatePush>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2MissionStatePush>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2MissionStatePush)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2MissionStatePush> is deprecated: use dji_osdk_ros-msg:WaypointV2MissionStatePush instead.")))

(cl:ensure-generic-function 'commonDataVersion-val :lambda-list '(m))
(cl:defmethod commonDataVersion-val ((m <WaypointV2MissionStatePush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:commonDataVersion-val is deprecated.  Use dji_osdk_ros-msg:commonDataVersion instead.")
  (commonDataVersion m))

(cl:ensure-generic-function 'commonDataLen-val :lambda-list '(m))
(cl:defmethod commonDataLen-val ((m <WaypointV2MissionStatePush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:commonDataLen-val is deprecated.  Use dji_osdk_ros-msg:commonDataLen instead.")
  (commonDataLen m))

(cl:ensure-generic-function 'curWaypointIndex-val :lambda-list '(m))
(cl:defmethod curWaypointIndex-val ((m <WaypointV2MissionStatePush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:curWaypointIndex-val is deprecated.  Use dji_osdk_ros-msg:curWaypointIndex instead.")
  (curWaypointIndex m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <WaypointV2MissionStatePush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:state-val is deprecated.  Use dji_osdk_ros-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <WaypointV2MissionStatePush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:velocity-val is deprecated.  Use dji_osdk_ros-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2MissionStatePush>) ostream)
  "Serializes a message object of type '<WaypointV2MissionStatePush>"
  (cl:let* ((signed (cl:slot-value msg 'commonDataVersion)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'commonDataLen)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'commonDataLen)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'curWaypointIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'curWaypointIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocity)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'velocity)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2MissionStatePush>) istream)
  "Deserializes a message object of type '<WaypointV2MissionStatePush>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'commonDataVersion) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'commonDataLen)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'commonDataLen)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'curWaypointIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'curWaypointIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'velocity)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'velocity)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2MissionStatePush>)))
  "Returns string type for a message object of type '<WaypointV2MissionStatePush>"
  "dji_osdk_ros/WaypointV2MissionStatePush")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2MissionStatePush)))
  "Returns string type for a message object of type 'WaypointV2MissionStatePush"
  "dji_osdk_ros/WaypointV2MissionStatePush")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2MissionStatePush>)))
  "Returns md5sum for a message object of type '<WaypointV2MissionStatePush>"
  "8f0a910f9304e8d0a921ad51a303b666")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2MissionStatePush)))
  "Returns md5sum for a message object of type 'WaypointV2MissionStatePush"
  "8f0a910f9304e8d0a921ad51a303b666")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2MissionStatePush>)))
  "Returns full string definition for message of type '<WaypointV2MissionStatePush>"
  (cl:format cl:nil "int8   commonDataVersion~%uint16 commonDataLen~%uint16 curWaypointIndex~%uint8  state  #0x0:ground station not start. 0x1:mission prepared. 0x2:enter mission.~%               #0x3:execute flying route mission.~%               #0x4:pause state. 0x5:enter mission after ending pause.~%               #0x6:exit mission.~%uint16 velocity #uint:0.01m/s~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2MissionStatePush)))
  "Returns full string definition for message of type 'WaypointV2MissionStatePush"
  (cl:format cl:nil "int8   commonDataVersion~%uint16 commonDataLen~%uint16 curWaypointIndex~%uint8  state  #0x0:ground station not start. 0x1:mission prepared. 0x2:enter mission.~%               #0x3:execute flying route mission.~%               #0x4:pause state. 0x5:enter mission after ending pause.~%               #0x6:exit mission.~%uint16 velocity #uint:0.01m/s~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2MissionStatePush>))
  (cl:+ 0
     1
     2
     2
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2MissionStatePush>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2MissionStatePush
    (cl:cons ':commonDataVersion (commonDataVersion msg))
    (cl:cons ':commonDataLen (commonDataLen msg))
    (cl:cons ':curWaypointIndex (curWaypointIndex msg))
    (cl:cons ':state (state msg))
    (cl:cons ':velocity (velocity msg))
))
