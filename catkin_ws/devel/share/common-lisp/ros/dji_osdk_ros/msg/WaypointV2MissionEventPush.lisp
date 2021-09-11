; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2MissionEventPush.msg.html

(cl:defclass <WaypointV2MissionEventPush> (roslisp-msg-protocol:ros-message)
  ((event
    :reader event
    :initarg :event
    :type cl:fixnum
    :initform 0)
   (FCTimestamp
    :reader FCTimestamp
    :initarg :FCTimestamp
    :type cl:integer
    :initform 0)
   (interruptReason
    :reader interruptReason
    :initarg :interruptReason
    :type cl:fixnum
    :initform 0)
   (recoverProcess
    :reader recoverProcess
    :initarg :recoverProcess
    :type cl:fixnum
    :initform 0)
   (finishReason
    :reader finishReason
    :initarg :finishReason
    :type cl:fixnum
    :initform 0)
   (waypointIndex
    :reader waypointIndex
    :initarg :waypointIndex
    :type cl:fixnum
    :initform 0)
   (currentMissionExecNum
    :reader currentMissionExecNum
    :initarg :currentMissionExecNum
    :type cl:fixnum
    :initform 0)
   (finishedAllExecNum
    :reader finishedAllExecNum
    :initarg :finishedAllExecNum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointV2MissionEventPush (<WaypointV2MissionEventPush>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2MissionEventPush>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2MissionEventPush)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2MissionEventPush> is deprecated: use dji_osdk_ros-msg:WaypointV2MissionEventPush instead.")))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <WaypointV2MissionEventPush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:event-val is deprecated.  Use dji_osdk_ros-msg:event instead.")
  (event m))

(cl:ensure-generic-function 'FCTimestamp-val :lambda-list '(m))
(cl:defmethod FCTimestamp-val ((m <WaypointV2MissionEventPush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:FCTimestamp-val is deprecated.  Use dji_osdk_ros-msg:FCTimestamp instead.")
  (FCTimestamp m))

(cl:ensure-generic-function 'interruptReason-val :lambda-list '(m))
(cl:defmethod interruptReason-val ((m <WaypointV2MissionEventPush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:interruptReason-val is deprecated.  Use dji_osdk_ros-msg:interruptReason instead.")
  (interruptReason m))

(cl:ensure-generic-function 'recoverProcess-val :lambda-list '(m))
(cl:defmethod recoverProcess-val ((m <WaypointV2MissionEventPush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:recoverProcess-val is deprecated.  Use dji_osdk_ros-msg:recoverProcess instead.")
  (recoverProcess m))

(cl:ensure-generic-function 'finishReason-val :lambda-list '(m))
(cl:defmethod finishReason-val ((m <WaypointV2MissionEventPush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:finishReason-val is deprecated.  Use dji_osdk_ros-msg:finishReason instead.")
  (finishReason m))

(cl:ensure-generic-function 'waypointIndex-val :lambda-list '(m))
(cl:defmethod waypointIndex-val ((m <WaypointV2MissionEventPush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointIndex-val is deprecated.  Use dji_osdk_ros-msg:waypointIndex instead.")
  (waypointIndex m))

(cl:ensure-generic-function 'currentMissionExecNum-val :lambda-list '(m))
(cl:defmethod currentMissionExecNum-val ((m <WaypointV2MissionEventPush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:currentMissionExecNum-val is deprecated.  Use dji_osdk_ros-msg:currentMissionExecNum instead.")
  (currentMissionExecNum m))

(cl:ensure-generic-function 'finishedAllExecNum-val :lambda-list '(m))
(cl:defmethod finishedAllExecNum-val ((m <WaypointV2MissionEventPush>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:finishedAllExecNum-val is deprecated.  Use dji_osdk_ros-msg:finishedAllExecNum instead.")
  (finishedAllExecNum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2MissionEventPush>) ostream)
  "Serializes a message object of type '<WaypointV2MissionEventPush>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FCTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'FCTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'FCTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'FCTimestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interruptReason)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recoverProcess)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'finishReason)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypointIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waypointIndex)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'currentMissionExecNum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'finishedAllExecNum)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2MissionEventPush>) istream)
  "Deserializes a message object of type '<WaypointV2MissionEventPush>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'event)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'FCTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'FCTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'FCTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'FCTimestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'interruptReason)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recoverProcess)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'finishReason)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypointIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'waypointIndex)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'currentMissionExecNum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'finishedAllExecNum)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2MissionEventPush>)))
  "Returns string type for a message object of type '<WaypointV2MissionEventPush>"
  "dji_osdk_ros/WaypointV2MissionEventPush")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2MissionEventPush)))
  "Returns string type for a message object of type 'WaypointV2MissionEventPush"
  "dji_osdk_ros/WaypointV2MissionEventPush")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2MissionEventPush>)))
  "Returns md5sum for a message object of type '<WaypointV2MissionEventPush>"
  "c77093b1b7454aae16109cab2468e222")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2MissionEventPush)))
  "Returns md5sum for a message object of type 'WaypointV2MissionEventPush"
  "c77093b1b7454aae16109cab2468e222")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2MissionEventPush>)))
  "Returns full string definition for message of type '<WaypointV2MissionEventPush>"
  (cl:format cl:nil "uint8 event~%uint32 FCTimestamp~%#ID:0x01~%uint8 interruptReason #0x00:rc triggered interrupt~%~%#ID:0x02~%uint8 recoverProcess #0x00:finished pause recover~%~%#ID:0x03~%uint8 finishReason #0x00:finished normally; 0x10:External user trigger ended successfully~%~%#ID:0x10~%uint16 waypointIndex~%~%#ID:0x11~%uint8 currentMissionExecNum~%uint8 finishedAllExecNum  #0:not finished; 1:finished all exec num~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2MissionEventPush)))
  "Returns full string definition for message of type 'WaypointV2MissionEventPush"
  (cl:format cl:nil "uint8 event~%uint32 FCTimestamp~%#ID:0x01~%uint8 interruptReason #0x00:rc triggered interrupt~%~%#ID:0x02~%uint8 recoverProcess #0x00:finished pause recover~%~%#ID:0x03~%uint8 finishReason #0x00:finished normally; 0x10:External user trigger ended successfully~%~%#ID:0x10~%uint16 waypointIndex~%~%#ID:0x11~%uint8 currentMissionExecNum~%uint8 finishedAllExecNum  #0:not finished; 1:finished all exec num~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2MissionEventPush>))
  (cl:+ 0
     1
     4
     1
     1
     1
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2MissionEventPush>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2MissionEventPush
    (cl:cons ':event (event msg))
    (cl:cons ':FCTimestamp (FCTimestamp msg))
    (cl:cons ':interruptReason (interruptReason msg))
    (cl:cons ':recoverProcess (recoverProcess msg))
    (cl:cons ':finishReason (finishReason msg))
    (cl:cons ':waypointIndex (waypointIndex msg))
    (cl:cons ':currentMissionExecNum (currentMissionExecNum msg))
    (cl:cons ':finishedAllExecNum (finishedAllExecNum msg))
))
