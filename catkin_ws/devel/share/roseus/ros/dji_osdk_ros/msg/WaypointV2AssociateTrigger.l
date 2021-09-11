;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2AssociateTrigger)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2AssociateTrigger (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2ASSOCIATETRIGGER")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2ASSOCIATETRIGGER"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2AssociateTrigger.msg.html


(intern "*DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPESIMULTANEOUSLY*" (find-package "DJI_OSDK_ROS::WAYPOINTV2ASSOCIATETRIGGER"))
(shadow '*DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPESIMULTANEOUSLY* (find-package "DJI_OSDK_ROS::WAYPOINTV2ASSOCIATETRIGGER"))
(defconstant dji_osdk_ros::WaypointV2AssociateTrigger::*DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPESIMULTANEOUSLY* 1)
(intern "*DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEAFTERFINISED*" (find-package "DJI_OSDK_ROS::WAYPOINTV2ASSOCIATETRIGGER"))
(shadow '*DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEAFTERFINISED* (find-package "DJI_OSDK_ROS::WAYPOINTV2ASSOCIATETRIGGER"))
(defconstant dji_osdk_ros::WaypointV2AssociateTrigger::*DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEAFTERFINISED* 2)
(intern "*DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEUNKNOWN*" (find-package "DJI_OSDK_ROS::WAYPOINTV2ASSOCIATETRIGGER"))
(shadow '*DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEUNKNOWN* (find-package "DJI_OSDK_ROS::WAYPOINTV2ASSOCIATETRIGGER"))
(defconstant dji_osdk_ros::WaypointV2AssociateTrigger::*DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEUNKNOWN* 255)

(defun dji_osdk_ros::WaypointV2AssociateTrigger-to-symbol (const)
  (cond
        ((= const 1) 'dji_osdk_ros::WaypointV2AssociateTrigger::*DJIWaypointV2TriggerAssociatedTimingTypeSimultaneously*)
        ((= const 2) 'dji_osdk_ros::WaypointV2AssociateTrigger::*DJIWaypointV2TriggerAssociatedTimingTypeAfterFinised*)
        ((= const 255) 'dji_osdk_ros::WaypointV2AssociateTrigger::*DJIWaypointV2TriggerAssociatedTimingTypeUnknown*)
        (t nil)))

(defclass dji_osdk_ros::WaypointV2AssociateTrigger
  :super ros::object
  :slots (_actionAssociatedType _waitingTime _actionIdAssociated ))

(defmethod dji_osdk_ros::WaypointV2AssociateTrigger
  (:init
   (&key
    ((:actionAssociatedType __actionAssociatedType) 0)
    ((:waitingTime __waitingTime) 0)
    ((:actionIdAssociated __actionIdAssociated) 0)
    )
   (send-super :init)
   (setq _actionAssociatedType (round __actionAssociatedType))
   (setq _waitingTime (round __waitingTime))
   (setq _actionIdAssociated (round __actionIdAssociated))
   self)
  (:actionAssociatedType
   (&optional __actionAssociatedType)
   (if __actionAssociatedType (setq _actionAssociatedType __actionAssociatedType)) _actionAssociatedType)
  (:waitingTime
   (&optional __waitingTime)
   (if __waitingTime (setq _waitingTime __waitingTime)) _waitingTime)
  (:actionIdAssociated
   (&optional __actionIdAssociated)
   (if __actionIdAssociated (setq _actionIdAssociated __actionIdAssociated)) _actionIdAssociated)
  (:serialization-length
   ()
   (+
    ;; uint8 _actionAssociatedType
    1
    ;; uint8 _waitingTime
    1
    ;; uint16 _actionIdAssociated
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _actionAssociatedType
       (write-byte _actionAssociatedType s)
     ;; uint8 _waitingTime
       (write-byte _waitingTime s)
     ;; uint16 _actionIdAssociated
       (write-word _actionIdAssociated s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _actionAssociatedType
     (setq _actionAssociatedType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _waitingTime
     (setq _waitingTime (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _actionIdAssociated
     (setq _actionIdAssociated (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2AssociateTrigger :md5sum-) "cd18cc058d8c8b002f1666933510bde3")
(setf (get dji_osdk_ros::WaypointV2AssociateTrigger :datatype-) "dji_osdk_ros/WaypointV2AssociateTrigger")
(setf (get dji_osdk_ros::WaypointV2AssociateTrigger :definition-)
      "#contant for actionAssociatedType
uint8 DJIWaypointV2TriggerAssociatedTimingTypeSimultaneously = 1  # The trigger starts simultaneously with the trigger that is associated.
uint8 DJIWaypointV2TriggerAssociatedTimingTypeAfterFinised = 2    # The trigger starts after the trigger associated has finished.
uint8 DJIWaypointV2TriggerAssociatedTimingTypeUnknown = 255       # Unkown timing type.

uint8 actionAssociatedType  # The type of assciate trigger.
uint8 waitingTime           # Waiting time in seconds after ActionTrigger starts.
uint16 actionIdAssociated # Associated action ID.
")



(provide :dji_osdk_ros/WaypointV2AssociateTrigger "cd18cc058d8c8b002f1666933510bde3")


