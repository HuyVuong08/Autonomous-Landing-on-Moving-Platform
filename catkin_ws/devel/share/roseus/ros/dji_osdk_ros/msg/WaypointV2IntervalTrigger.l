;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2IntervalTrigger)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2IntervalTrigger (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2INTERVALTRIGGER")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2INTERVALTRIGGER"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2IntervalTrigger.msg.html


(intern "*DJIWAYPOINTV2ACTIONINTERVALTYPETIME*" (find-package "DJI_OSDK_ROS::WAYPOINTV2INTERVALTRIGGER"))
(shadow '*DJIWAYPOINTV2ACTIONINTERVALTYPETIME* (find-package "DJI_OSDK_ROS::WAYPOINTV2INTERVALTRIGGER"))
(defconstant dji_osdk_ros::WaypointV2IntervalTrigger::*DJIWAYPOINTV2ACTIONINTERVALTYPETIME* 1)
(intern "*DJIWAYPOINTV2ACTIONINTERVALTYPEDISTANCE*" (find-package "DJI_OSDK_ROS::WAYPOINTV2INTERVALTRIGGER"))
(shadow '*DJIWAYPOINTV2ACTIONINTERVALTYPEDISTANCE* (find-package "DJI_OSDK_ROS::WAYPOINTV2INTERVALTRIGGER"))
(defconstant dji_osdk_ros::WaypointV2IntervalTrigger::*DJIWAYPOINTV2ACTIONINTERVALTYPEDISTANCE* 2)
(intern "*DJIWAYPOINTV2ACTIONINTERVALTYPEUNKNOWN*" (find-package "DJI_OSDK_ROS::WAYPOINTV2INTERVALTRIGGER"))
(shadow '*DJIWAYPOINTV2ACTIONINTERVALTYPEUNKNOWN* (find-package "DJI_OSDK_ROS::WAYPOINTV2INTERVALTRIGGER"))
(defconstant dji_osdk_ros::WaypointV2IntervalTrigger::*DJIWAYPOINTV2ACTIONINTERVALTYPEUNKNOWN* 255)

(defun dji_osdk_ros::WaypointV2IntervalTrigger-to-symbol (const)
  (cond
        ((= const 1) 'dji_osdk_ros::WaypointV2IntervalTrigger::*DJIWaypointV2ActionIntervalTypeTime*)
        ((= const 2) 'dji_osdk_ros::WaypointV2IntervalTrigger::*DJIWaypointV2ActionIntervalTypeDistance*)
        ((= const 255) 'dji_osdk_ros::WaypointV2IntervalTrigger::*DJIWaypointV2ActionIntervalTypeUnknown*)
        (t nil)))

(defclass dji_osdk_ros::WaypointV2IntervalTrigger
  :super ros::object
  :slots (_startIndex _interval _actionIntervalType ))

(defmethod dji_osdk_ros::WaypointV2IntervalTrigger
  (:init
   (&key
    ((:startIndex __startIndex) 0)
    ((:interval __interval) 0)
    ((:actionIntervalType __actionIntervalType) 0)
    )
   (send-super :init)
   (setq _startIndex (round __startIndex))
   (setq _interval (round __interval))
   (setq _actionIntervalType (round __actionIntervalType))
   self)
  (:startIndex
   (&optional __startIndex)
   (if __startIndex (setq _startIndex __startIndex)) _startIndex)
  (:interval
   (&optional __interval)
   (if __interval (setq _interval __interval)) _interval)
  (:actionIntervalType
   (&optional __actionIntervalType)
   (if __actionIntervalType (setq _actionIntervalType __actionIntervalType)) _actionIntervalType)
  (:serialization-length
   ()
   (+
    ;; uint16 _startIndex
    2
    ;; uint16 _interval
    2
    ;; uint8 _actionIntervalType
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _startIndex
       (write-word _startIndex s)
     ;; uint16 _interval
       (write-word _interval s)
     ;; uint8 _actionIntervalType
       (write-byte _actionIntervalType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _startIndex
     (setq _startIndex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _interval
     (setq _interval (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _actionIntervalType
     (setq _actionIntervalType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2IntervalTrigger :md5sum-) "9a737930d3da7d390475e0a354220c42")
(setf (get dji_osdk_ros::WaypointV2IntervalTrigger :datatype-) "dji_osdk_ros/WaypointV2IntervalTrigger")
(setf (get dji_osdk_ros::WaypointV2IntervalTrigger :definition-)
      "#constant for actionIntervalType
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
")



(provide :dji_osdk_ros/WaypointV2IntervalTrigger "9a737930d3da7d390475e0a354220c42")


