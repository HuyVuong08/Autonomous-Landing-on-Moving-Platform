; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2AssociateTrigger.msg.html

(cl:defclass <WaypointV2AssociateTrigger> (roslisp-msg-protocol:ros-message)
  ((actionAssociatedType
    :reader actionAssociatedType
    :initarg :actionAssociatedType
    :type cl:fixnum
    :initform 0)
   (waitingTime
    :reader waitingTime
    :initarg :waitingTime
    :type cl:fixnum
    :initform 0)
   (actionIdAssociated
    :reader actionIdAssociated
    :initarg :actionIdAssociated
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WaypointV2AssociateTrigger (<WaypointV2AssociateTrigger>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2AssociateTrigger>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2AssociateTrigger)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2AssociateTrigger> is deprecated: use dji_osdk_ros-msg:WaypointV2AssociateTrigger instead.")))

(cl:ensure-generic-function 'actionAssociatedType-val :lambda-list '(m))
(cl:defmethod actionAssociatedType-val ((m <WaypointV2AssociateTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:actionAssociatedType-val is deprecated.  Use dji_osdk_ros-msg:actionAssociatedType instead.")
  (actionAssociatedType m))

(cl:ensure-generic-function 'waitingTime-val :lambda-list '(m))
(cl:defmethod waitingTime-val ((m <WaypointV2AssociateTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waitingTime-val is deprecated.  Use dji_osdk_ros-msg:waitingTime instead.")
  (waitingTime m))

(cl:ensure-generic-function 'actionIdAssociated-val :lambda-list '(m))
(cl:defmethod actionIdAssociated-val ((m <WaypointV2AssociateTrigger>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:actionIdAssociated-val is deprecated.  Use dji_osdk_ros-msg:actionIdAssociated instead.")
  (actionIdAssociated m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointV2AssociateTrigger>)))
    "Constants for message type '<WaypointV2AssociateTrigger>"
  '((:DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPESIMULTANEOUSLY . 1)
    (:DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEAFTERFINISED . 2)
    (:DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEUNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointV2AssociateTrigger)))
    "Constants for message type 'WaypointV2AssociateTrigger"
  '((:DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPESIMULTANEOUSLY . 1)
    (:DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEAFTERFINISED . 2)
    (:DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEUNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2AssociateTrigger>) ostream)
  "Serializes a message object of type '<WaypointV2AssociateTrigger>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actionAssociatedType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waitingTime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actionIdAssociated)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'actionIdAssociated)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2AssociateTrigger>) istream)
  "Deserializes a message object of type '<WaypointV2AssociateTrigger>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actionAssociatedType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waitingTime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actionIdAssociated)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'actionIdAssociated)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2AssociateTrigger>)))
  "Returns string type for a message object of type '<WaypointV2AssociateTrigger>"
  "dji_osdk_ros/WaypointV2AssociateTrigger")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2AssociateTrigger)))
  "Returns string type for a message object of type 'WaypointV2AssociateTrigger"
  "dji_osdk_ros/WaypointV2AssociateTrigger")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2AssociateTrigger>)))
  "Returns md5sum for a message object of type '<WaypointV2AssociateTrigger>"
  "cd18cc058d8c8b002f1666933510bde3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2AssociateTrigger)))
  "Returns md5sum for a message object of type 'WaypointV2AssociateTrigger"
  "cd18cc058d8c8b002f1666933510bde3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2AssociateTrigger>)))
  "Returns full string definition for message of type '<WaypointV2AssociateTrigger>"
  (cl:format cl:nil "#contant for actionAssociatedType~%uint8 DJIWaypointV2TriggerAssociatedTimingTypeSimultaneously = 1  # The trigger starts simultaneously with the trigger that is associated.~%uint8 DJIWaypointV2TriggerAssociatedTimingTypeAfterFinised = 2    # The trigger starts after the trigger associated has finished.~%uint8 DJIWaypointV2TriggerAssociatedTimingTypeUnknown = 255       # Unkown timing type.~%~%uint8 actionAssociatedType  # The type of assciate trigger.~%uint8 waitingTime           # Waiting time in seconds after ActionTrigger starts.~%uint16 actionIdAssociated # Associated action ID.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2AssociateTrigger)))
  "Returns full string definition for message of type 'WaypointV2AssociateTrigger"
  (cl:format cl:nil "#contant for actionAssociatedType~%uint8 DJIWaypointV2TriggerAssociatedTimingTypeSimultaneously = 1  # The trigger starts simultaneously with the trigger that is associated.~%uint8 DJIWaypointV2TriggerAssociatedTimingTypeAfterFinised = 2    # The trigger starts after the trigger associated has finished.~%uint8 DJIWaypointV2TriggerAssociatedTimingTypeUnknown = 255       # Unkown timing type.~%~%uint8 actionAssociatedType  # The type of assciate trigger.~%uint8 waitingTime           # Waiting time in seconds after ActionTrigger starts.~%uint16 actionIdAssociated # Associated action ID.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2AssociateTrigger>))
  (cl:+ 0
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2AssociateTrigger>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2AssociateTrigger
    (cl:cons ':actionAssociatedType (actionAssociatedType msg))
    (cl:cons ':waitingTime (waitingTime msg))
    (cl:cons ':actionIdAssociated (actionIdAssociated msg))
))
