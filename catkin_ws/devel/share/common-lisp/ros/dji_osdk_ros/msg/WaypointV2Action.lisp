; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2Action.msg.html

(cl:defclass <WaypointV2Action> (roslisp-msg-protocol:ros-message)
  ((actionId
    :reader actionId
    :initarg :actionId
    :type cl:fixnum
    :initform 0)
   (waypointV2ActionTriggerType
    :reader waypointV2ActionTriggerType
    :initarg :waypointV2ActionTriggerType
    :type cl:fixnum
    :initform 0)
   (waypointV2ACtionActuatorType
    :reader waypointV2ACtionActuatorType
    :initarg :waypointV2ACtionActuatorType
    :type cl:fixnum
    :initform 0)
   (waypointV2AssociateTrigger
    :reader waypointV2AssociateTrigger
    :initarg :waypointV2AssociateTrigger
    :type dji_osdk_ros-msg:WaypointV2AssociateTrigger
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2AssociateTrigger))
   (waypointV2IntervalTrigger
    :reader waypointV2IntervalTrigger
    :initarg :waypointV2IntervalTrigger
    :type dji_osdk_ros-msg:WaypointV2IntervalTrigger
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2IntervalTrigger))
   (waypointV2TrajectoryTrigger
    :reader waypointV2TrajectoryTrigger
    :initarg :waypointV2TrajectoryTrigger
    :type dji_osdk_ros-msg:WaypointV2TrajectoryTrigger
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2TrajectoryTrigger))
   (waypointV2SampleReachPointTrigger
    :reader waypointV2SampleReachPointTrigger
    :initarg :waypointV2SampleReachPointTrigger
    :type dji_osdk_ros-msg:WaypointV2SampleReachPointTrigger
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2SampleReachPointTrigger))
   (waypointV2CameraActuator
    :reader waypointV2CameraActuator
    :initarg :waypointV2CameraActuator
    :type dji_osdk_ros-msg:WaypointV2CameraActuator
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2CameraActuator))
   (waypointV2GimbalActuator
    :reader waypointV2GimbalActuator
    :initarg :waypointV2GimbalActuator
    :type dji_osdk_ros-msg:WaypointV2GimbalActuator
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2GimbalActuator))
   (waypointV2AircraftControlActuator
    :reader waypointV2AircraftControlActuator
    :initarg :waypointV2AircraftControlActuator
    :type dji_osdk_ros-msg:WaypointV2AircraftControlActuator
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2AircraftControlActuator)))
)

(cl:defclass WaypointV2Action (<WaypointV2Action>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2Action>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2Action)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2Action> is deprecated: use dji_osdk_ros-msg:WaypointV2Action instead.")))

(cl:ensure-generic-function 'actionId-val :lambda-list '(m))
(cl:defmethod actionId-val ((m <WaypointV2Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:actionId-val is deprecated.  Use dji_osdk_ros-msg:actionId instead.")
  (actionId m))

(cl:ensure-generic-function 'waypointV2ActionTriggerType-val :lambda-list '(m))
(cl:defmethod waypointV2ActionTriggerType-val ((m <WaypointV2Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointV2ActionTriggerType-val is deprecated.  Use dji_osdk_ros-msg:waypointV2ActionTriggerType instead.")
  (waypointV2ActionTriggerType m))

(cl:ensure-generic-function 'waypointV2ACtionActuatorType-val :lambda-list '(m))
(cl:defmethod waypointV2ACtionActuatorType-val ((m <WaypointV2Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointV2ACtionActuatorType-val is deprecated.  Use dji_osdk_ros-msg:waypointV2ACtionActuatorType instead.")
  (waypointV2ACtionActuatorType m))

(cl:ensure-generic-function 'waypointV2AssociateTrigger-val :lambda-list '(m))
(cl:defmethod waypointV2AssociateTrigger-val ((m <WaypointV2Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointV2AssociateTrigger-val is deprecated.  Use dji_osdk_ros-msg:waypointV2AssociateTrigger instead.")
  (waypointV2AssociateTrigger m))

(cl:ensure-generic-function 'waypointV2IntervalTrigger-val :lambda-list '(m))
(cl:defmethod waypointV2IntervalTrigger-val ((m <WaypointV2Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointV2IntervalTrigger-val is deprecated.  Use dji_osdk_ros-msg:waypointV2IntervalTrigger instead.")
  (waypointV2IntervalTrigger m))

(cl:ensure-generic-function 'waypointV2TrajectoryTrigger-val :lambda-list '(m))
(cl:defmethod waypointV2TrajectoryTrigger-val ((m <WaypointV2Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointV2TrajectoryTrigger-val is deprecated.  Use dji_osdk_ros-msg:waypointV2TrajectoryTrigger instead.")
  (waypointV2TrajectoryTrigger m))

(cl:ensure-generic-function 'waypointV2SampleReachPointTrigger-val :lambda-list '(m))
(cl:defmethod waypointV2SampleReachPointTrigger-val ((m <WaypointV2Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointV2SampleReachPointTrigger-val is deprecated.  Use dji_osdk_ros-msg:waypointV2SampleReachPointTrigger instead.")
  (waypointV2SampleReachPointTrigger m))

(cl:ensure-generic-function 'waypointV2CameraActuator-val :lambda-list '(m))
(cl:defmethod waypointV2CameraActuator-val ((m <WaypointV2Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointV2CameraActuator-val is deprecated.  Use dji_osdk_ros-msg:waypointV2CameraActuator instead.")
  (waypointV2CameraActuator m))

(cl:ensure-generic-function 'waypointV2GimbalActuator-val :lambda-list '(m))
(cl:defmethod waypointV2GimbalActuator-val ((m <WaypointV2Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointV2GimbalActuator-val is deprecated.  Use dji_osdk_ros-msg:waypointV2GimbalActuator instead.")
  (waypointV2GimbalActuator m))

(cl:ensure-generic-function 'waypointV2AircraftControlActuator-val :lambda-list '(m))
(cl:defmethod waypointV2AircraftControlActuator-val ((m <WaypointV2Action>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointV2AircraftControlActuator-val is deprecated.  Use dji_osdk_ros-msg:waypointV2AircraftControlActuator instead.")
  (waypointV2AircraftControlActuator m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointV2Action>)))
    "Constants for message type '<WaypointV2Action>"
  '((:DJIWAYPOINTV2ACTIONTRIGGERTYPEACTIONASSOCIATED . 2)
    (:DJIWAYPOINTV2ACTIONTRIGGERTYPETRAJECTORY . 3)
    (:DJIWAYPOINTV2ACTIONTRIGGERTYPEINTERVAL . 4)
    (:DJIWAYPOINTV2ACTIONTRIGGERTYPESAMPLEREACHPOINT . 5)
    (:DJIWAYPOINTV2ACTIONTRIGGERTYPEUNKNOWN . 255)
    (:DJIWAYPOINTV2ACTIONACTUATORTYPECAMERA . 1)
    (:DJIWAYPOINTV2ACTIONACTUATORTYPEGIMBAL . 2)
    (:DJIWAYPOINTV2ACTIONACTUATORTYPEAIRCRAFTCONTROL . 4)
    (:DJIWAYPOINTV2ACTIONACTUATORTYPEUNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointV2Action)))
    "Constants for message type 'WaypointV2Action"
  '((:DJIWAYPOINTV2ACTIONTRIGGERTYPEACTIONASSOCIATED . 2)
    (:DJIWAYPOINTV2ACTIONTRIGGERTYPETRAJECTORY . 3)
    (:DJIWAYPOINTV2ACTIONTRIGGERTYPEINTERVAL . 4)
    (:DJIWAYPOINTV2ACTIONTRIGGERTYPESAMPLEREACHPOINT . 5)
    (:DJIWAYPOINTV2ACTIONTRIGGERTYPEUNKNOWN . 255)
    (:DJIWAYPOINTV2ACTIONACTUATORTYPECAMERA . 1)
    (:DJIWAYPOINTV2ACTIONACTUATORTYPEGIMBAL . 2)
    (:DJIWAYPOINTV2ACTIONACTUATORTYPEAIRCRAFTCONTROL . 4)
    (:DJIWAYPOINTV2ACTIONACTUATORTYPEUNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2Action>) ostream)
  "Serializes a message object of type '<WaypointV2Action>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actionId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'actionId)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypointV2ActionTriggerType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypointV2ACtionActuatorType)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypointV2AssociateTrigger) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypointV2IntervalTrigger) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypointV2TrajectoryTrigger) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypointV2SampleReachPointTrigger) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypointV2CameraActuator) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypointV2GimbalActuator) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypointV2AircraftControlActuator) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2Action>) istream)
  "Deserializes a message object of type '<WaypointV2Action>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'actionId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'actionId)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypointV2ActionTriggerType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypointV2ACtionActuatorType)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypointV2AssociateTrigger) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypointV2IntervalTrigger) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypointV2TrajectoryTrigger) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypointV2SampleReachPointTrigger) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypointV2CameraActuator) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypointV2GimbalActuator) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypointV2AircraftControlActuator) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2Action>)))
  "Returns string type for a message object of type '<WaypointV2Action>"
  "dji_osdk_ros/WaypointV2Action")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2Action)))
  "Returns string type for a message object of type 'WaypointV2Action"
  "dji_osdk_ros/WaypointV2Action")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2Action>)))
  "Returns md5sum for a message object of type '<WaypointV2Action>"
  "534513cf5f6d88161086ab7b39716b16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2Action)))
  "Returns md5sum for a message object of type 'WaypointV2Action"
  "534513cf5f6d88161086ab7b39716b16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2Action>)))
  "Returns full string definition for message of type '<WaypointV2Action>"
  (cl:format cl:nil "# This class represents an action for ``DJIWaypointV2Mission``. It~%# determines how action is performed when a waypoint mission is executed.~%~%# The action will be triggered when action associated executes.~%# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2AssociateTriggerParam``.~%uint8 DJIWaypointV2ActionTriggerTypeActionAssociated = 2~%~%# The action will be triggered when the aircraft flies from one waypoint to the next.~%# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2TrajectoryTriggerParam``.~%uint8 DJIWaypointV2ActionTriggerTypeTrajectory = 3~%~%# The action will be triggered when the aircraft flies between two waypoints~%# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam``.~%uint8 DJIWaypointV2ActionTriggerTypeInterval = 4~%uint8 DJIWaypointV2ActionTriggerTypeSampleReachPoint = 5~%~%# Unknown~%uint8 DJIWaypointV2ActionTriggerTypeUnknown = 255~%~%#contant for waypointV2ActuatorTriggerType~%# The action will be executed by the camera.~%# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%uint8 DJIWaypointV2ActionActuatorTypeCamera = 1~%~%# The action will be executed by the gimbal.~%# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2GimbalActuatorParam``.~%uint8 DJIWaypointV2ActionActuatorTypeGimbal = 2~%~%# The action will executes by control aircraft.~%# The parameters should be setting by ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%uint8 DJIWaypointV2ActionActuatorTypeAircraftControl = 4~%~%# Unknown actuator type.~%uint8 DJIWaypointV2ActionActuatorTypeUnknown = 255~%~%uint16 actionId # The ID of Action.~%~%uint8 waypointV2ActionTriggerType~%uint8 waypointV2ACtionActuatorType~%~%# The trigger of action.You can only choose one to config~%WaypointV2AssociateTrigger waypointV2AssociateTrigger~%WaypointV2IntervalTrigger waypointV2IntervalTrigger~%WaypointV2TrajectoryTrigger waypointV2TrajectoryTrigger~%WaypointV2SampleReachPointTrigger waypointV2SampleReachPointTrigger~%~% # The actuator of action.You can only choose one to config~%WaypointV2CameraActuator waypointV2CameraActuator~%WaypointV2GimbalActuator waypointV2GimbalActuator~%WaypointV2AircraftControlActuator waypointV2AircraftControlActuator~%================================================================================~%MSG: dji_osdk_ros/WaypointV2AssociateTrigger~%#contant for actionAssociatedType~%uint8 DJIWaypointV2TriggerAssociatedTimingTypeSimultaneously = 1  # The trigger starts simultaneously with the trigger that is associated.~%uint8 DJIWaypointV2TriggerAssociatedTimingTypeAfterFinised = 2    # The trigger starts after the trigger associated has finished.~%uint8 DJIWaypointV2TriggerAssociatedTimingTypeUnknown = 255       # Unkown timing type.~%~%uint8 actionAssociatedType  # The type of assciate trigger.~%uint8 waitingTime           # Waiting time in seconds after ActionTrigger starts.~%uint16 actionIdAssociated # Associated action ID.~%================================================================================~%MSG: dji_osdk_ros/WaypointV2IntervalTrigger~%#constant for actionIntervalType~%uint8 DJIWaypointV2ActionIntervalTypeTime     = 1  # The action will be repeated after a particular period of time.~%uint8 DJIWaypointV2ActionIntervalTypeDistance = 2  # The action will be repeated after a particular distance.~%uint8 DJIWaypointV2ActionIntervalTypeUnknown  = 255 # Unknown action trigger type.~%~%uint16 startIndex # It determines the index of the waypoint at which the trigger starts.~%# If the  ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType``~%# is ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Time``~%# The time interval in seconds when two action are executed as the aircraft moves~%# from the current waypoint to the next waypoint.~%# If the ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType`` is~%# ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Distance``~%# The distance interval in meters when two action are executed as the aircraft moves~%# from the current waypoint to the next waypoint.~%uint16 interval~%uint8 actionIntervalType # The type of interval trigger.~%                         # See ``DJIWaypointV2MissionV2_DJIWaypointV2ActionIntervalType``.~%================================================================================~%MSG: dji_osdk_ros/WaypointV2TrajectoryTrigger~%# This class represents a trajectory trigger action when should be trigger.~%~%uint16 startIndex # It determines the index of the waypoint at which the trigger starts.~%uint16 endIndex   # It determines the waypoint when the trigger stops.~%~%~%================================================================================~%MSG: dji_osdk_ros/WaypointV2SampleReachPointTrigger~%uint16 waypointIndex # It determines the index of the waypoint at which the action will be triggered.~%uint16 terminateNum~%~%================================================================================~%MSG: dji_osdk_ros/WaypointV2CameraActuator~%# This determines how the camera will be performed when a waypoint mission is executing.~%#constant for DJIWaypointV2ActionActuatorCameraOperationType~%# Starts to shoot a photo.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeTakePhoto = 1~%# Starts to record a video.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeStartRecordVideo = 2~%# Stops to record a video.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeStopRecordVideo = 3~%# Starts focus.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeFocus = 4~%# Starts focal lenth. Only support those support flocal lenth cameras.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeFocalLength = 5~%~%uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related~%                      # to camera or gimbal and the connected product has multiple gimbals and cameras.~%~%uint16 DJIWaypointV2ActionActuatorCameraOperationType~%# you can only choose one to config.~%WaypointV2CameraActuatorFocusParam focusParam  # The parameters for camera focus operation. It is valid only when~%                                       # ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is~%                                       # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_Focus``~%WaypointV2CameraActuatorFocalLengthParam zoomParam # The parameters for camera focus length operation. It is valid only when~%                                           # ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is~%                                           # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_FocalLength``~%================================================================================~%MSG: dji_osdk_ros/WaypointV2CameraActuatorFocusParam~%# This class defines a camera focus operation for ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%# The lens focus target point. When the focus mode is auto, the target point~%# is the focal point. When the focus mode is manual, the target point is the zoom~%# out area if the focus assistant is enabled for the manual mode.~%#  The range for x and y is from 0.0 to 1.0. The point [0.0, 0.0] represents the top-left angle of the screen.~%  ~%  float32 x # x axis focus point value.range: [0,1]~%  float32 y # y axis focus point value.range: [0,1]~%  uint8 regionType #focus type:0:point focus,1:rectangle focus~%  float32 width #Normalized focus area width(0,1)~%  float32 height # Normalized focus area height(0,1)~%  uint8 retryTimes = 1~%================================================================================~%MSG: dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam~%# This class defines a camera focal length operation for  ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%# Focal length of zoom lens. Valid range is [``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``,~%# ``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``] and must be a multiple of~%# ``DJICamera_DJICameraOpticalZoomSpec_focalLengthStep``.~%#  Only support by those camera ``DJICamera_CameraSettings_isOpticalZoomSupported`` return ``TRUE``.~%  uint16 focalLength~%~%  uint8 retryTimes = 1~%================================================================================~%MSG: dji_osdk_ros/WaypointV2GimbalActuator~%# gimbal actuator will be performed when a waypoint mission is executed.~%#constant for DJIWaypointV2ActionActuatorGimbalOperationType~%# Rotates the gimbal. Only valid when the trigger type is~%# ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_ReachPoint``.~%uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeRotateGimbal = 1~%# Unknown~%uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeUnknown = 255~%~%uint8 DJIWaypointV2ActionActuatorGimbalOperationType~%uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related~%                      # to camera or gimbal and the connected product has multiple gimbals and cameras.~%WaypointV2GimbalActuatorRotationParam waypointV2GimbalActuatorRotationParam # The operation type of gimbal actuator.~%================================================================================~%MSG: dji_osdk_ros/WaypointV2GimbalActuatorRotationParam~%  int16 x             # gimbal roll angle,  unit: 0.1 deg,range:[-3600, 3600]*/~%  int16 y             # gimbal pitch angle, unit: 0.1 deg,range:[-3600, 3600]*/~%  int16 z             # gimbal yaw angle,   unit: 0.1 deg,range:[-3600, 3600]*/~%  uint8 ctrl_mode     # 0: absolute position control, 1:relative position control*/~%  uint8 rollCmdIgnore # 0: roll command normal,  1: roll command ignore*/~%  uint8 pitchCmdIgnore# 0: pitch command normal,  1: pitch command ignore*/~%  uint8 yawCmdIgnore  # 0: yaw command normal,  1: yaw command ignore*/~%  uint8 absYawModeRef # 0: absoluate rotate yaw relative to aircraft,~%                      #  1: absoluate rotate yaw relative to North*/~%  uint8 duationTime    # 0: rotate time,unit:0.1s, range[1,255]*/~%================================================================================~%MSG: dji_osdk_ros/WaypointV2AircraftControlActuator~%# Parameters for aircraft control actuator. It is valid only when the~%# ``DJIWaypointV2Action_DJIWaypointV2Actuator_type`` is~%# ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorType_AircraftControl``.~%#contant for DJIWaypointV2ActionActuatorAircraftControlOperationType~%# Rotates the aircraft's yaw.~%uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeRotateYaw = 1~%# Keeps the aircraft stop flying or start flying.~%uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeFlyingControl = 2~%# Unknown~%uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeUnknown = 255~%~%uint8 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related~%                      # to camera or gimbal and the connected product has multiple gimbals and cameras.~%uint16 DJIWaypointV2ActionActuatorAircraftControlOperationType ~%WaypointV2AircraftControlActuatorFlying waypointV2AircraftControlActuatorFlying~%WaypointV2AircraftControlActuatorRotateHeading waypointV2AircraftControlActuatorRotateHeading~%================================================================================~%MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorFlying~%# This class defines if the aircraft starts or stops the flight.s.~%uint8  isStartFlying  # Determines the aircraft start flying or stop flying.~%                        # ``TRUE`` for the aircraft to start flying.~%================================================================================~%MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading~%# This class defines how the aircraft rotates on the yaw axis.~%  uint8 isRelative # Determines the aircraft rotate heading relative.~%                     # if ``TRUE``, when the aircraft is rotating, relative to the current angle.~%  float32 yaw # Determines the direction how aircraft changes its heading.~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2Action)))
  "Returns full string definition for message of type 'WaypointV2Action"
  (cl:format cl:nil "# This class represents an action for ``DJIWaypointV2Mission``. It~%# determines how action is performed when a waypoint mission is executed.~%~%# The action will be triggered when action associated executes.~%# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2AssociateTriggerParam``.~%uint8 DJIWaypointV2ActionTriggerTypeActionAssociated = 2~%~%# The action will be triggered when the aircraft flies from one waypoint to the next.~%# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2TrajectoryTriggerParam``.~%uint8 DJIWaypointV2ActionTriggerTypeTrajectory = 3~%~%# The action will be triggered when the aircraft flies between two waypoints~%# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam``.~%uint8 DJIWaypointV2ActionTriggerTypeInterval = 4~%uint8 DJIWaypointV2ActionTriggerTypeSampleReachPoint = 5~%~%# Unknown~%uint8 DJIWaypointV2ActionTriggerTypeUnknown = 255~%~%#contant for waypointV2ActuatorTriggerType~%# The action will be executed by the camera.~%# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%uint8 DJIWaypointV2ActionActuatorTypeCamera = 1~%~%# The action will be executed by the gimbal.~%# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2GimbalActuatorParam``.~%uint8 DJIWaypointV2ActionActuatorTypeGimbal = 2~%~%# The action will executes by control aircraft.~%# The parameters should be setting by ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%uint8 DJIWaypointV2ActionActuatorTypeAircraftControl = 4~%~%# Unknown actuator type.~%uint8 DJIWaypointV2ActionActuatorTypeUnknown = 255~%~%uint16 actionId # The ID of Action.~%~%uint8 waypointV2ActionTriggerType~%uint8 waypointV2ACtionActuatorType~%~%# The trigger of action.You can only choose one to config~%WaypointV2AssociateTrigger waypointV2AssociateTrigger~%WaypointV2IntervalTrigger waypointV2IntervalTrigger~%WaypointV2TrajectoryTrigger waypointV2TrajectoryTrigger~%WaypointV2SampleReachPointTrigger waypointV2SampleReachPointTrigger~%~% # The actuator of action.You can only choose one to config~%WaypointV2CameraActuator waypointV2CameraActuator~%WaypointV2GimbalActuator waypointV2GimbalActuator~%WaypointV2AircraftControlActuator waypointV2AircraftControlActuator~%================================================================================~%MSG: dji_osdk_ros/WaypointV2AssociateTrigger~%#contant for actionAssociatedType~%uint8 DJIWaypointV2TriggerAssociatedTimingTypeSimultaneously = 1  # The trigger starts simultaneously with the trigger that is associated.~%uint8 DJIWaypointV2TriggerAssociatedTimingTypeAfterFinised = 2    # The trigger starts after the trigger associated has finished.~%uint8 DJIWaypointV2TriggerAssociatedTimingTypeUnknown = 255       # Unkown timing type.~%~%uint8 actionAssociatedType  # The type of assciate trigger.~%uint8 waitingTime           # Waiting time in seconds after ActionTrigger starts.~%uint16 actionIdAssociated # Associated action ID.~%================================================================================~%MSG: dji_osdk_ros/WaypointV2IntervalTrigger~%#constant for actionIntervalType~%uint8 DJIWaypointV2ActionIntervalTypeTime     = 1  # The action will be repeated after a particular period of time.~%uint8 DJIWaypointV2ActionIntervalTypeDistance = 2  # The action will be repeated after a particular distance.~%uint8 DJIWaypointV2ActionIntervalTypeUnknown  = 255 # Unknown action trigger type.~%~%uint16 startIndex # It determines the index of the waypoint at which the trigger starts.~%# If the  ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType``~%# is ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Time``~%# The time interval in seconds when two action are executed as the aircraft moves~%# from the current waypoint to the next waypoint.~%# If the ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType`` is~%# ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Distance``~%# The distance interval in meters when two action are executed as the aircraft moves~%# from the current waypoint to the next waypoint.~%uint16 interval~%uint8 actionIntervalType # The type of interval trigger.~%                         # See ``DJIWaypointV2MissionV2_DJIWaypointV2ActionIntervalType``.~%================================================================================~%MSG: dji_osdk_ros/WaypointV2TrajectoryTrigger~%# This class represents a trajectory trigger action when should be trigger.~%~%uint16 startIndex # It determines the index of the waypoint at which the trigger starts.~%uint16 endIndex   # It determines the waypoint when the trigger stops.~%~%~%================================================================================~%MSG: dji_osdk_ros/WaypointV2SampleReachPointTrigger~%uint16 waypointIndex # It determines the index of the waypoint at which the action will be triggered.~%uint16 terminateNum~%~%================================================================================~%MSG: dji_osdk_ros/WaypointV2CameraActuator~%# This determines how the camera will be performed when a waypoint mission is executing.~%#constant for DJIWaypointV2ActionActuatorCameraOperationType~%# Starts to shoot a photo.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeTakePhoto = 1~%# Starts to record a video.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeStartRecordVideo = 2~%# Stops to record a video.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeStopRecordVideo = 3~%# Starts focus.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeFocus = 4~%# Starts focal lenth. Only support those support flocal lenth cameras.~%uint16 DJIWaypointV2ActionActuatorCameraOperationTypeFocalLength = 5~%~%uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related~%                      # to camera or gimbal and the connected product has multiple gimbals and cameras.~%~%uint16 DJIWaypointV2ActionActuatorCameraOperationType~%# you can only choose one to config.~%WaypointV2CameraActuatorFocusParam focusParam  # The parameters for camera focus operation. It is valid only when~%                                       # ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is~%                                       # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_Focus``~%WaypointV2CameraActuatorFocalLengthParam zoomParam # The parameters for camera focus length operation. It is valid only when~%                                           # ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is~%                                           # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_FocalLength``~%================================================================================~%MSG: dji_osdk_ros/WaypointV2CameraActuatorFocusParam~%# This class defines a camera focus operation for ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%# The lens focus target point. When the focus mode is auto, the target point~%# is the focal point. When the focus mode is manual, the target point is the zoom~%# out area if the focus assistant is enabled for the manual mode.~%#  The range for x and y is from 0.0 to 1.0. The point [0.0, 0.0] represents the top-left angle of the screen.~%  ~%  float32 x # x axis focus point value.range: [0,1]~%  float32 y # y axis focus point value.range: [0,1]~%  uint8 regionType #focus type:0:point focus,1:rectangle focus~%  float32 width #Normalized focus area width(0,1)~%  float32 height # Normalized focus area height(0,1)~%  uint8 retryTimes = 1~%================================================================================~%MSG: dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam~%# This class defines a camera focal length operation for  ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.~%# Focal length of zoom lens. Valid range is [``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``,~%# ``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``] and must be a multiple of~%# ``DJICamera_DJICameraOpticalZoomSpec_focalLengthStep``.~%#  Only support by those camera ``DJICamera_CameraSettings_isOpticalZoomSupported`` return ``TRUE``.~%  uint16 focalLength~%~%  uint8 retryTimes = 1~%================================================================================~%MSG: dji_osdk_ros/WaypointV2GimbalActuator~%# gimbal actuator will be performed when a waypoint mission is executed.~%#constant for DJIWaypointV2ActionActuatorGimbalOperationType~%# Rotates the gimbal. Only valid when the trigger type is~%# ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_ReachPoint``.~%uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeRotateGimbal = 1~%# Unknown~%uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeUnknown = 255~%~%uint8 DJIWaypointV2ActionActuatorGimbalOperationType~%uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related~%                      # to camera or gimbal and the connected product has multiple gimbals and cameras.~%WaypointV2GimbalActuatorRotationParam waypointV2GimbalActuatorRotationParam # The operation type of gimbal actuator.~%================================================================================~%MSG: dji_osdk_ros/WaypointV2GimbalActuatorRotationParam~%  int16 x             # gimbal roll angle,  unit: 0.1 deg,range:[-3600, 3600]*/~%  int16 y             # gimbal pitch angle, unit: 0.1 deg,range:[-3600, 3600]*/~%  int16 z             # gimbal yaw angle,   unit: 0.1 deg,range:[-3600, 3600]*/~%  uint8 ctrl_mode     # 0: absolute position control, 1:relative position control*/~%  uint8 rollCmdIgnore # 0: roll command normal,  1: roll command ignore*/~%  uint8 pitchCmdIgnore# 0: pitch command normal,  1: pitch command ignore*/~%  uint8 yawCmdIgnore  # 0: yaw command normal,  1: yaw command ignore*/~%  uint8 absYawModeRef # 0: absoluate rotate yaw relative to aircraft,~%                      #  1: absoluate rotate yaw relative to North*/~%  uint8 duationTime    # 0: rotate time,unit:0.1s, range[1,255]*/~%================================================================================~%MSG: dji_osdk_ros/WaypointV2AircraftControlActuator~%# Parameters for aircraft control actuator. It is valid only when the~%# ``DJIWaypointV2Action_DJIWaypointV2Actuator_type`` is~%# ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorType_AircraftControl``.~%#contant for DJIWaypointV2ActionActuatorAircraftControlOperationType~%# Rotates the aircraft's yaw.~%uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeRotateYaw = 1~%# Keeps the aircraft stop flying or start flying.~%uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeFlyingControl = 2~%# Unknown~%uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeUnknown = 255~%~%uint8 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related~%                      # to camera or gimbal and the connected product has multiple gimbals and cameras.~%uint16 DJIWaypointV2ActionActuatorAircraftControlOperationType ~%WaypointV2AircraftControlActuatorFlying waypointV2AircraftControlActuatorFlying~%WaypointV2AircraftControlActuatorRotateHeading waypointV2AircraftControlActuatorRotateHeading~%================================================================================~%MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorFlying~%# This class defines if the aircraft starts or stops the flight.s.~%uint8  isStartFlying  # Determines the aircraft start flying or stop flying.~%                        # ``TRUE`` for the aircraft to start flying.~%================================================================================~%MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading~%# This class defines how the aircraft rotates on the yaw axis.~%  uint8 isRelative # Determines the aircraft rotate heading relative.~%                     # if ``TRUE``, when the aircraft is rotating, relative to the current angle.~%  float32 yaw # Determines the direction how aircraft changes its heading.~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2Action>))
  (cl:+ 0
     2
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypointV2AssociateTrigger))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypointV2IntervalTrigger))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypointV2TrajectoryTrigger))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypointV2SampleReachPointTrigger))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypointV2CameraActuator))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypointV2GimbalActuator))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypointV2AircraftControlActuator))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2Action>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2Action
    (cl:cons ':actionId (actionId msg))
    (cl:cons ':waypointV2ActionTriggerType (waypointV2ActionTriggerType msg))
    (cl:cons ':waypointV2ACtionActuatorType (waypointV2ACtionActuatorType msg))
    (cl:cons ':waypointV2AssociateTrigger (waypointV2AssociateTrigger msg))
    (cl:cons ':waypointV2IntervalTrigger (waypointV2IntervalTrigger msg))
    (cl:cons ':waypointV2TrajectoryTrigger (waypointV2TrajectoryTrigger msg))
    (cl:cons ':waypointV2SampleReachPointTrigger (waypointV2SampleReachPointTrigger msg))
    (cl:cons ':waypointV2CameraActuator (waypointV2CameraActuator msg))
    (cl:cons ':waypointV2GimbalActuator (waypointV2GimbalActuator msg))
    (cl:cons ':waypointV2AircraftControlActuator (waypointV2AircraftControlActuator msg))
))
