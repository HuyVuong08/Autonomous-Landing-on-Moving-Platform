;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2Action)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2Action (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2Action.msg.html


(intern "*DJIWAYPOINTV2ACTIONTRIGGERTYPEACTIONASSOCIATED*" (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(shadow '*DJIWAYPOINTV2ACTIONTRIGGERTYPEACTIONASSOCIATED* (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(defconstant dji_osdk_ros::WaypointV2Action::*DJIWAYPOINTV2ACTIONTRIGGERTYPEACTIONASSOCIATED* 2)
(intern "*DJIWAYPOINTV2ACTIONTRIGGERTYPETRAJECTORY*" (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(shadow '*DJIWAYPOINTV2ACTIONTRIGGERTYPETRAJECTORY* (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(defconstant dji_osdk_ros::WaypointV2Action::*DJIWAYPOINTV2ACTIONTRIGGERTYPETRAJECTORY* 3)
(intern "*DJIWAYPOINTV2ACTIONTRIGGERTYPEINTERVAL*" (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(shadow '*DJIWAYPOINTV2ACTIONTRIGGERTYPEINTERVAL* (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(defconstant dji_osdk_ros::WaypointV2Action::*DJIWAYPOINTV2ACTIONTRIGGERTYPEINTERVAL* 4)
(intern "*DJIWAYPOINTV2ACTIONTRIGGERTYPESAMPLEREACHPOINT*" (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(shadow '*DJIWAYPOINTV2ACTIONTRIGGERTYPESAMPLEREACHPOINT* (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(defconstant dji_osdk_ros::WaypointV2Action::*DJIWAYPOINTV2ACTIONTRIGGERTYPESAMPLEREACHPOINT* 5)
(intern "*DJIWAYPOINTV2ACTIONTRIGGERTYPEUNKNOWN*" (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(shadow '*DJIWAYPOINTV2ACTIONTRIGGERTYPEUNKNOWN* (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(defconstant dji_osdk_ros::WaypointV2Action::*DJIWAYPOINTV2ACTIONTRIGGERTYPEUNKNOWN* 255)
(intern "*DJIWAYPOINTV2ACTIONACTUATORTYPECAMERA*" (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORTYPECAMERA* (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(defconstant dji_osdk_ros::WaypointV2Action::*DJIWAYPOINTV2ACTIONACTUATORTYPECAMERA* 1)
(intern "*DJIWAYPOINTV2ACTIONACTUATORTYPEGIMBAL*" (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORTYPEGIMBAL* (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(defconstant dji_osdk_ros::WaypointV2Action::*DJIWAYPOINTV2ACTIONACTUATORTYPEGIMBAL* 2)
(intern "*DJIWAYPOINTV2ACTIONACTUATORTYPEAIRCRAFTCONTROL*" (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORTYPEAIRCRAFTCONTROL* (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(defconstant dji_osdk_ros::WaypointV2Action::*DJIWAYPOINTV2ACTIONACTUATORTYPEAIRCRAFTCONTROL* 4)
(intern "*DJIWAYPOINTV2ACTIONACTUATORTYPEUNKNOWN*" (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORTYPEUNKNOWN* (find-package "DJI_OSDK_ROS::WAYPOINTV2ACTION"))
(defconstant dji_osdk_ros::WaypointV2Action::*DJIWAYPOINTV2ACTIONACTUATORTYPEUNKNOWN* 255)

(defun dji_osdk_ros::WaypointV2Action-to-symbol (const)
  (cond
        ((= const 2) 'dji_osdk_ros::WaypointV2Action::*DJIWaypointV2ActionTriggerTypeActionAssociated*)
        ((= const 3) 'dji_osdk_ros::WaypointV2Action::*DJIWaypointV2ActionTriggerTypeTrajectory*)
        ((= const 4) 'dji_osdk_ros::WaypointV2Action::*DJIWaypointV2ActionTriggerTypeInterval*)
        ((= const 5) 'dji_osdk_ros::WaypointV2Action::*DJIWaypointV2ActionTriggerTypeSampleReachPoint*)
        ((= const 255) 'dji_osdk_ros::WaypointV2Action::*DJIWaypointV2ActionTriggerTypeUnknown*)
        ((= const 1) 'dji_osdk_ros::WaypointV2Action::*DJIWaypointV2ActionActuatorTypeCamera*)
        ((= const 2) 'dji_osdk_ros::WaypointV2Action::*DJIWaypointV2ActionActuatorTypeGimbal*)
        ((= const 4) 'dji_osdk_ros::WaypointV2Action::*DJIWaypointV2ActionActuatorTypeAircraftControl*)
        ((= const 255) 'dji_osdk_ros::WaypointV2Action::*DJIWaypointV2ActionActuatorTypeUnknown*)
        (t nil)))

(defclass dji_osdk_ros::WaypointV2Action
  :super ros::object
  :slots (_actionId _waypointV2ActionTriggerType _waypointV2ACtionActuatorType _waypointV2AssociateTrigger _waypointV2IntervalTrigger _waypointV2TrajectoryTrigger _waypointV2SampleReachPointTrigger _waypointV2CameraActuator _waypointV2GimbalActuator _waypointV2AircraftControlActuator ))

(defmethod dji_osdk_ros::WaypointV2Action
  (:init
   (&key
    ((:actionId __actionId) 0)
    ((:waypointV2ActionTriggerType __waypointV2ActionTriggerType) 0)
    ((:waypointV2ACtionActuatorType __waypointV2ACtionActuatorType) 0)
    ((:waypointV2AssociateTrigger __waypointV2AssociateTrigger) (instance dji_osdk_ros::WaypointV2AssociateTrigger :init))
    ((:waypointV2IntervalTrigger __waypointV2IntervalTrigger) (instance dji_osdk_ros::WaypointV2IntervalTrigger :init))
    ((:waypointV2TrajectoryTrigger __waypointV2TrajectoryTrigger) (instance dji_osdk_ros::WaypointV2TrajectoryTrigger :init))
    ((:waypointV2SampleReachPointTrigger __waypointV2SampleReachPointTrigger) (instance dji_osdk_ros::WaypointV2SampleReachPointTrigger :init))
    ((:waypointV2CameraActuator __waypointV2CameraActuator) (instance dji_osdk_ros::WaypointV2CameraActuator :init))
    ((:waypointV2GimbalActuator __waypointV2GimbalActuator) (instance dji_osdk_ros::WaypointV2GimbalActuator :init))
    ((:waypointV2AircraftControlActuator __waypointV2AircraftControlActuator) (instance dji_osdk_ros::WaypointV2AircraftControlActuator :init))
    )
   (send-super :init)
   (setq _actionId (round __actionId))
   (setq _waypointV2ActionTriggerType (round __waypointV2ActionTriggerType))
   (setq _waypointV2ACtionActuatorType (round __waypointV2ACtionActuatorType))
   (setq _waypointV2AssociateTrigger __waypointV2AssociateTrigger)
   (setq _waypointV2IntervalTrigger __waypointV2IntervalTrigger)
   (setq _waypointV2TrajectoryTrigger __waypointV2TrajectoryTrigger)
   (setq _waypointV2SampleReachPointTrigger __waypointV2SampleReachPointTrigger)
   (setq _waypointV2CameraActuator __waypointV2CameraActuator)
   (setq _waypointV2GimbalActuator __waypointV2GimbalActuator)
   (setq _waypointV2AircraftControlActuator __waypointV2AircraftControlActuator)
   self)
  (:actionId
   (&optional __actionId)
   (if __actionId (setq _actionId __actionId)) _actionId)
  (:waypointV2ActionTriggerType
   (&optional __waypointV2ActionTriggerType)
   (if __waypointV2ActionTriggerType (setq _waypointV2ActionTriggerType __waypointV2ActionTriggerType)) _waypointV2ActionTriggerType)
  (:waypointV2ACtionActuatorType
   (&optional __waypointV2ACtionActuatorType)
   (if __waypointV2ACtionActuatorType (setq _waypointV2ACtionActuatorType __waypointV2ACtionActuatorType)) _waypointV2ACtionActuatorType)
  (:waypointV2AssociateTrigger
   (&rest __waypointV2AssociateTrigger)
   (if (keywordp (car __waypointV2AssociateTrigger))
       (send* _waypointV2AssociateTrigger __waypointV2AssociateTrigger)
     (progn
       (if __waypointV2AssociateTrigger (setq _waypointV2AssociateTrigger (car __waypointV2AssociateTrigger)))
       _waypointV2AssociateTrigger)))
  (:waypointV2IntervalTrigger
   (&rest __waypointV2IntervalTrigger)
   (if (keywordp (car __waypointV2IntervalTrigger))
       (send* _waypointV2IntervalTrigger __waypointV2IntervalTrigger)
     (progn
       (if __waypointV2IntervalTrigger (setq _waypointV2IntervalTrigger (car __waypointV2IntervalTrigger)))
       _waypointV2IntervalTrigger)))
  (:waypointV2TrajectoryTrigger
   (&rest __waypointV2TrajectoryTrigger)
   (if (keywordp (car __waypointV2TrajectoryTrigger))
       (send* _waypointV2TrajectoryTrigger __waypointV2TrajectoryTrigger)
     (progn
       (if __waypointV2TrajectoryTrigger (setq _waypointV2TrajectoryTrigger (car __waypointV2TrajectoryTrigger)))
       _waypointV2TrajectoryTrigger)))
  (:waypointV2SampleReachPointTrigger
   (&rest __waypointV2SampleReachPointTrigger)
   (if (keywordp (car __waypointV2SampleReachPointTrigger))
       (send* _waypointV2SampleReachPointTrigger __waypointV2SampleReachPointTrigger)
     (progn
       (if __waypointV2SampleReachPointTrigger (setq _waypointV2SampleReachPointTrigger (car __waypointV2SampleReachPointTrigger)))
       _waypointV2SampleReachPointTrigger)))
  (:waypointV2CameraActuator
   (&rest __waypointV2CameraActuator)
   (if (keywordp (car __waypointV2CameraActuator))
       (send* _waypointV2CameraActuator __waypointV2CameraActuator)
     (progn
       (if __waypointV2CameraActuator (setq _waypointV2CameraActuator (car __waypointV2CameraActuator)))
       _waypointV2CameraActuator)))
  (:waypointV2GimbalActuator
   (&rest __waypointV2GimbalActuator)
   (if (keywordp (car __waypointV2GimbalActuator))
       (send* _waypointV2GimbalActuator __waypointV2GimbalActuator)
     (progn
       (if __waypointV2GimbalActuator (setq _waypointV2GimbalActuator (car __waypointV2GimbalActuator)))
       _waypointV2GimbalActuator)))
  (:waypointV2AircraftControlActuator
   (&rest __waypointV2AircraftControlActuator)
   (if (keywordp (car __waypointV2AircraftControlActuator))
       (send* _waypointV2AircraftControlActuator __waypointV2AircraftControlActuator)
     (progn
       (if __waypointV2AircraftControlActuator (setq _waypointV2AircraftControlActuator (car __waypointV2AircraftControlActuator)))
       _waypointV2AircraftControlActuator)))
  (:serialization-length
   ()
   (+
    ;; uint16 _actionId
    2
    ;; uint8 _waypointV2ActionTriggerType
    1
    ;; uint8 _waypointV2ACtionActuatorType
    1
    ;; dji_osdk_ros/WaypointV2AssociateTrigger _waypointV2AssociateTrigger
    (send _waypointV2AssociateTrigger :serialization-length)
    ;; dji_osdk_ros/WaypointV2IntervalTrigger _waypointV2IntervalTrigger
    (send _waypointV2IntervalTrigger :serialization-length)
    ;; dji_osdk_ros/WaypointV2TrajectoryTrigger _waypointV2TrajectoryTrigger
    (send _waypointV2TrajectoryTrigger :serialization-length)
    ;; dji_osdk_ros/WaypointV2SampleReachPointTrigger _waypointV2SampleReachPointTrigger
    (send _waypointV2SampleReachPointTrigger :serialization-length)
    ;; dji_osdk_ros/WaypointV2CameraActuator _waypointV2CameraActuator
    (send _waypointV2CameraActuator :serialization-length)
    ;; dji_osdk_ros/WaypointV2GimbalActuator _waypointV2GimbalActuator
    (send _waypointV2GimbalActuator :serialization-length)
    ;; dji_osdk_ros/WaypointV2AircraftControlActuator _waypointV2AircraftControlActuator
    (send _waypointV2AircraftControlActuator :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _actionId
       (write-word _actionId s)
     ;; uint8 _waypointV2ActionTriggerType
       (write-byte _waypointV2ActionTriggerType s)
     ;; uint8 _waypointV2ACtionActuatorType
       (write-byte _waypointV2ACtionActuatorType s)
     ;; dji_osdk_ros/WaypointV2AssociateTrigger _waypointV2AssociateTrigger
       (send _waypointV2AssociateTrigger :serialize s)
     ;; dji_osdk_ros/WaypointV2IntervalTrigger _waypointV2IntervalTrigger
       (send _waypointV2IntervalTrigger :serialize s)
     ;; dji_osdk_ros/WaypointV2TrajectoryTrigger _waypointV2TrajectoryTrigger
       (send _waypointV2TrajectoryTrigger :serialize s)
     ;; dji_osdk_ros/WaypointV2SampleReachPointTrigger _waypointV2SampleReachPointTrigger
       (send _waypointV2SampleReachPointTrigger :serialize s)
     ;; dji_osdk_ros/WaypointV2CameraActuator _waypointV2CameraActuator
       (send _waypointV2CameraActuator :serialize s)
     ;; dji_osdk_ros/WaypointV2GimbalActuator _waypointV2GimbalActuator
       (send _waypointV2GimbalActuator :serialize s)
     ;; dji_osdk_ros/WaypointV2AircraftControlActuator _waypointV2AircraftControlActuator
       (send _waypointV2AircraftControlActuator :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _actionId
     (setq _actionId (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _waypointV2ActionTriggerType
     (setq _waypointV2ActionTriggerType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _waypointV2ACtionActuatorType
     (setq _waypointV2ACtionActuatorType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dji_osdk_ros/WaypointV2AssociateTrigger _waypointV2AssociateTrigger
     (send _waypointV2AssociateTrigger :deserialize buf ptr-) (incf ptr- (send _waypointV2AssociateTrigger :serialization-length))
   ;; dji_osdk_ros/WaypointV2IntervalTrigger _waypointV2IntervalTrigger
     (send _waypointV2IntervalTrigger :deserialize buf ptr-) (incf ptr- (send _waypointV2IntervalTrigger :serialization-length))
   ;; dji_osdk_ros/WaypointV2TrajectoryTrigger _waypointV2TrajectoryTrigger
     (send _waypointV2TrajectoryTrigger :deserialize buf ptr-) (incf ptr- (send _waypointV2TrajectoryTrigger :serialization-length))
   ;; dji_osdk_ros/WaypointV2SampleReachPointTrigger _waypointV2SampleReachPointTrigger
     (send _waypointV2SampleReachPointTrigger :deserialize buf ptr-) (incf ptr- (send _waypointV2SampleReachPointTrigger :serialization-length))
   ;; dji_osdk_ros/WaypointV2CameraActuator _waypointV2CameraActuator
     (send _waypointV2CameraActuator :deserialize buf ptr-) (incf ptr- (send _waypointV2CameraActuator :serialization-length))
   ;; dji_osdk_ros/WaypointV2GimbalActuator _waypointV2GimbalActuator
     (send _waypointV2GimbalActuator :deserialize buf ptr-) (incf ptr- (send _waypointV2GimbalActuator :serialization-length))
   ;; dji_osdk_ros/WaypointV2AircraftControlActuator _waypointV2AircraftControlActuator
     (send _waypointV2AircraftControlActuator :deserialize buf ptr-) (incf ptr- (send _waypointV2AircraftControlActuator :serialization-length))
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2Action :md5sum-) "534513cf5f6d88161086ab7b39716b16")
(setf (get dji_osdk_ros::WaypointV2Action :datatype-) "dji_osdk_ros/WaypointV2Action")
(setf (get dji_osdk_ros::WaypointV2Action :definition-)
      "# This class represents an action for ``DJIWaypointV2Mission``. It
# determines how action is performed when a waypoint mission is executed.

# The action will be triggered when action associated executes.
# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2AssociateTriggerParam``.
uint8 DJIWaypointV2ActionTriggerTypeActionAssociated = 2

# The action will be triggered when the aircraft flies from one waypoint to the next.
# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2TrajectoryTriggerParam``.
uint8 DJIWaypointV2ActionTriggerTypeTrajectory = 3

# The action will be triggered when the aircraft flies between two waypoints
# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam``.
uint8 DJIWaypointV2ActionTriggerTypeInterval = 4
uint8 DJIWaypointV2ActionTriggerTypeSampleReachPoint = 5

# Unknown
uint8 DJIWaypointV2ActionTriggerTypeUnknown = 255

#contant for waypointV2ActuatorTriggerType
# The action will be executed by the camera.
# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
uint8 DJIWaypointV2ActionActuatorTypeCamera = 1

# The action will be executed by the gimbal.
# The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2GimbalActuatorParam``.
uint8 DJIWaypointV2ActionActuatorTypeGimbal = 2

# The action will executes by control aircraft.
# The parameters should be setting by ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
uint8 DJIWaypointV2ActionActuatorTypeAircraftControl = 4

# Unknown actuator type.
uint8 DJIWaypointV2ActionActuatorTypeUnknown = 255

uint16 actionId # The ID of Action.

uint8 waypointV2ActionTriggerType
uint8 waypointV2ACtionActuatorType

# The trigger of action.You can only choose one to config
WaypointV2AssociateTrigger waypointV2AssociateTrigger
WaypointV2IntervalTrigger waypointV2IntervalTrigger
WaypointV2TrajectoryTrigger waypointV2TrajectoryTrigger
WaypointV2SampleReachPointTrigger waypointV2SampleReachPointTrigger

 # The actuator of action.You can only choose one to config
WaypointV2CameraActuator waypointV2CameraActuator
WaypointV2GimbalActuator waypointV2GimbalActuator
WaypointV2AircraftControlActuator waypointV2AircraftControlActuator
================================================================================
MSG: dji_osdk_ros/WaypointV2AssociateTrigger
#contant for actionAssociatedType
uint8 DJIWaypointV2TriggerAssociatedTimingTypeSimultaneously = 1  # The trigger starts simultaneously with the trigger that is associated.
uint8 DJIWaypointV2TriggerAssociatedTimingTypeAfterFinised = 2    # The trigger starts after the trigger associated has finished.
uint8 DJIWaypointV2TriggerAssociatedTimingTypeUnknown = 255       # Unkown timing type.

uint8 actionAssociatedType  # The type of assciate trigger.
uint8 waitingTime           # Waiting time in seconds after ActionTrigger starts.
uint16 actionIdAssociated # Associated action ID.
================================================================================
MSG: dji_osdk_ros/WaypointV2IntervalTrigger
#constant for actionIntervalType
uint8 DJIWaypointV2ActionIntervalTypeTime     = 1  # The action will be repeated after a particular period of time.
uint8 DJIWaypointV2ActionIntervalTypeDistance = 2  # The action will be repeated after a particular distance.
uint8 DJIWaypointV2ActionIntervalTypeUnknown  = 255 # Unknown action trigger type.

uint16 startIndex # It determines the index of the waypoint at which the trigger starts.
# If the  ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType``
# is ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Time``
# The time interval in seconds when two action are executed as the aircraft moves
# from the current waypoint to the next waypoint.
# If the ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType`` is
# ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Distance``
# The distance interval in meters when two action are executed as the aircraft moves
# from the current waypoint to the next waypoint.
uint16 interval
uint8 actionIntervalType # The type of interval trigger.
                         # See ``DJIWaypointV2MissionV2_DJIWaypointV2ActionIntervalType``.
================================================================================
MSG: dji_osdk_ros/WaypointV2TrajectoryTrigger
# This class represents a trajectory trigger action when should be trigger.

uint16 startIndex # It determines the index of the waypoint at which the trigger starts.
uint16 endIndex   # It determines the waypoint when the trigger stops.


================================================================================
MSG: dji_osdk_ros/WaypointV2SampleReachPointTrigger
uint16 waypointIndex # It determines the index of the waypoint at which the action will be triggered.
uint16 terminateNum

================================================================================
MSG: dji_osdk_ros/WaypointV2CameraActuator
# This determines how the camera will be performed when a waypoint mission is executing.
#constant for DJIWaypointV2ActionActuatorCameraOperationType
# Starts to shoot a photo.
uint16 DJIWaypointV2ActionActuatorCameraOperationTypeTakePhoto = 1
# Starts to record a video.
uint16 DJIWaypointV2ActionActuatorCameraOperationTypeStartRecordVideo = 2
# Stops to record a video.
uint16 DJIWaypointV2ActionActuatorCameraOperationTypeStopRecordVideo = 3
# Starts focus.
uint16 DJIWaypointV2ActionActuatorCameraOperationTypeFocus = 4
# Starts focal lenth. Only support those support flocal lenth cameras.
uint16 DJIWaypointV2ActionActuatorCameraOperationTypeFocalLength = 5

uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related
                      # to camera or gimbal and the connected product has multiple gimbals and cameras.

uint16 DJIWaypointV2ActionActuatorCameraOperationType
# you can only choose one to config.
WaypointV2CameraActuatorFocusParam focusParam  # The parameters for camera focus operation. It is valid only when
                                       # ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is
                                       # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_Focus``
WaypointV2CameraActuatorFocalLengthParam zoomParam # The parameters for camera focus length operation. It is valid only when
                                           # ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is
                                           # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_FocalLength``
================================================================================
MSG: dji_osdk_ros/WaypointV2CameraActuatorFocusParam
# This class defines a camera focus operation for ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
# The lens focus target point. When the focus mode is auto, the target point
# is the focal point. When the focus mode is manual, the target point is the zoom
# out area if the focus assistant is enabled for the manual mode.
#  The range for x and y is from 0.0 to 1.0. The point [0.0, 0.0] represents the top-left angle of the screen.
  
  float32 x # x axis focus point value.range: [0,1]
  float32 y # y axis focus point value.range: [0,1]
  uint8 regionType #focus type:0:point focus,1:rectangle focus
  float32 width #Normalized focus area width(0,1)
  float32 height # Normalized focus area height(0,1)
  uint8 retryTimes = 1
================================================================================
MSG: dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam
# This class defines a camera focal length operation for  ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
# Focal length of zoom lens. Valid range is [``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``,
# ``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``] and must be a multiple of
# ``DJICamera_DJICameraOpticalZoomSpec_focalLengthStep``.
#  Only support by those camera ``DJICamera_CameraSettings_isOpticalZoomSupported`` return ``TRUE``.
  uint16 focalLength

  uint8 retryTimes = 1
================================================================================
MSG: dji_osdk_ros/WaypointV2GimbalActuator
# gimbal actuator will be performed when a waypoint mission is executed.
#constant for DJIWaypointV2ActionActuatorGimbalOperationType
# Rotates the gimbal. Only valid when the trigger type is
# ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_ReachPoint``.
uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeRotateGimbal = 1
# Unknown
uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeUnknown = 255

uint8 DJIWaypointV2ActionActuatorGimbalOperationType
uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related
                      # to camera or gimbal and the connected product has multiple gimbals and cameras.
WaypointV2GimbalActuatorRotationParam waypointV2GimbalActuatorRotationParam # The operation type of gimbal actuator.
================================================================================
MSG: dji_osdk_ros/WaypointV2GimbalActuatorRotationParam
  int16 x             # gimbal roll angle,  unit: 0.1 deg,range:[-3600, 3600]*/
  int16 y             # gimbal pitch angle, unit: 0.1 deg,range:[-3600, 3600]*/
  int16 z             # gimbal yaw angle,   unit: 0.1 deg,range:[-3600, 3600]*/
  uint8 ctrl_mode     # 0: absolute position control, 1:relative position control*/
  uint8 rollCmdIgnore # 0: roll command normal,  1: roll command ignore*/
  uint8 pitchCmdIgnore# 0: pitch command normal,  1: pitch command ignore*/
  uint8 yawCmdIgnore  # 0: yaw command normal,  1: yaw command ignore*/
  uint8 absYawModeRef # 0: absoluate rotate yaw relative to aircraft,
                      #  1: absoluate rotate yaw relative to North*/
  uint8 duationTime    # 0: rotate time,unit:0.1s, range[1,255]*/
================================================================================
MSG: dji_osdk_ros/WaypointV2AircraftControlActuator
# Parameters for aircraft control actuator. It is valid only when the
# ``DJIWaypointV2Action_DJIWaypointV2Actuator_type`` is
# ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorType_AircraftControl``.
#contant for DJIWaypointV2ActionActuatorAircraftControlOperationType
# Rotates the aircraft's yaw.
uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeRotateYaw = 1
# Keeps the aircraft stop flying or start flying.
uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeFlyingControl = 2
# Unknown
uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeUnknown = 255

uint8 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related
                      # to camera or gimbal and the connected product has multiple gimbals and cameras.
uint16 DJIWaypointV2ActionActuatorAircraftControlOperationType 
WaypointV2AircraftControlActuatorFlying waypointV2AircraftControlActuatorFlying
WaypointV2AircraftControlActuatorRotateHeading waypointV2AircraftControlActuatorRotateHeading
================================================================================
MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorFlying
# This class defines if the aircraft starts or stops the flight.s.
uint8  isStartFlying  # Determines the aircraft start flying or stop flying.
                        # ``TRUE`` for the aircraft to start flying.
================================================================================
MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading
# This class defines how the aircraft rotates on the yaw axis.
  uint8 isRelative # Determines the aircraft rotate heading relative.
                     # if ``TRUE``, when the aircraft is rotating, relative to the current angle.
  float32 yaw # Determines the direction how aircraft changes its heading.
")



(provide :dji_osdk_ros/WaypointV2Action "534513cf5f6d88161086ab7b39716b16")


