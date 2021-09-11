;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2AircraftControlActuator)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2AircraftControlActuator (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2AIRCRAFTCONTROLACTUATOR")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2AIRCRAFTCONTROLACTUATOR"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2AircraftControlActuator.msg.html


(intern "*DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEROTATEYAW*" (find-package "DJI_OSDK_ROS::WAYPOINTV2AIRCRAFTCONTROLACTUATOR"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEROTATEYAW* (find-package "DJI_OSDK_ROS::WAYPOINTV2AIRCRAFTCONTROLACTUATOR"))
(defconstant dji_osdk_ros::WaypointV2AircraftControlActuator::*DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEROTATEYAW* 1)
(intern "*DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEFLYINGCONTROL*" (find-package "DJI_OSDK_ROS::WAYPOINTV2AIRCRAFTCONTROLACTUATOR"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEFLYINGCONTROL* (find-package "DJI_OSDK_ROS::WAYPOINTV2AIRCRAFTCONTROLACTUATOR"))
(defconstant dji_osdk_ros::WaypointV2AircraftControlActuator::*DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEFLYINGCONTROL* 2)
(intern "*DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEUNKNOWN*" (find-package "DJI_OSDK_ROS::WAYPOINTV2AIRCRAFTCONTROLACTUATOR"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEUNKNOWN* (find-package "DJI_OSDK_ROS::WAYPOINTV2AIRCRAFTCONTROLACTUATOR"))
(defconstant dji_osdk_ros::WaypointV2AircraftControlActuator::*DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEUNKNOWN* 255)

(defun dji_osdk_ros::WaypointV2AircraftControlActuator-to-symbol (const)
  (cond
        ((= const 1) 'dji_osdk_ros::WaypointV2AircraftControlActuator::*DJIWaypointV2ActionActuatorAircraftControlOperationTypeRotateYaw*)
        ((= const 2) 'dji_osdk_ros::WaypointV2AircraftControlActuator::*DJIWaypointV2ActionActuatorAircraftControlOperationTypeFlyingControl*)
        ((= const 255) 'dji_osdk_ros::WaypointV2AircraftControlActuator::*DJIWaypointV2ActionActuatorAircraftControlOperationTypeUnknown*)
        (t nil)))

(defclass dji_osdk_ros::WaypointV2AircraftControlActuator
  :super ros::object
  :slots (_actuatorIndex _DJIWaypointV2ActionActuatorAircraftControlOperationType _waypointV2AircraftControlActuatorFlying _waypointV2AircraftControlActuatorRotateHeading ))

(defmethod dji_osdk_ros::WaypointV2AircraftControlActuator
  (:init
   (&key
    ((:actuatorIndex __actuatorIndex) 0)
    ((:DJIWaypointV2ActionActuatorAircraftControlOperationType __DJIWaypointV2ActionActuatorAircraftControlOperationType) 0)
    ((:waypointV2AircraftControlActuatorFlying __waypointV2AircraftControlActuatorFlying) (instance dji_osdk_ros::WaypointV2AircraftControlActuatorFlying :init))
    ((:waypointV2AircraftControlActuatorRotateHeading __waypointV2AircraftControlActuatorRotateHeading) (instance dji_osdk_ros::WaypointV2AircraftControlActuatorRotateHeading :init))
    )
   (send-super :init)
   (setq _actuatorIndex (round __actuatorIndex))
   (setq _DJIWaypointV2ActionActuatorAircraftControlOperationType (round __DJIWaypointV2ActionActuatorAircraftControlOperationType))
   (setq _waypointV2AircraftControlActuatorFlying __waypointV2AircraftControlActuatorFlying)
   (setq _waypointV2AircraftControlActuatorRotateHeading __waypointV2AircraftControlActuatorRotateHeading)
   self)
  (:actuatorIndex
   (&optional __actuatorIndex)
   (if __actuatorIndex (setq _actuatorIndex __actuatorIndex)) _actuatorIndex)
  (:DJIWaypointV2ActionActuatorAircraftControlOperationType
   (&optional __DJIWaypointV2ActionActuatorAircraftControlOperationType)
   (if __DJIWaypointV2ActionActuatorAircraftControlOperationType (setq _DJIWaypointV2ActionActuatorAircraftControlOperationType __DJIWaypointV2ActionActuatorAircraftControlOperationType)) _DJIWaypointV2ActionActuatorAircraftControlOperationType)
  (:waypointV2AircraftControlActuatorFlying
   (&rest __waypointV2AircraftControlActuatorFlying)
   (if (keywordp (car __waypointV2AircraftControlActuatorFlying))
       (send* _waypointV2AircraftControlActuatorFlying __waypointV2AircraftControlActuatorFlying)
     (progn
       (if __waypointV2AircraftControlActuatorFlying (setq _waypointV2AircraftControlActuatorFlying (car __waypointV2AircraftControlActuatorFlying)))
       _waypointV2AircraftControlActuatorFlying)))
  (:waypointV2AircraftControlActuatorRotateHeading
   (&rest __waypointV2AircraftControlActuatorRotateHeading)
   (if (keywordp (car __waypointV2AircraftControlActuatorRotateHeading))
       (send* _waypointV2AircraftControlActuatorRotateHeading __waypointV2AircraftControlActuatorRotateHeading)
     (progn
       (if __waypointV2AircraftControlActuatorRotateHeading (setq _waypointV2AircraftControlActuatorRotateHeading (car __waypointV2AircraftControlActuatorRotateHeading)))
       _waypointV2AircraftControlActuatorRotateHeading)))
  (:serialization-length
   ()
   (+
    ;; uint8 _actuatorIndex
    1
    ;; uint16 _DJIWaypointV2ActionActuatorAircraftControlOperationType
    2
    ;; dji_osdk_ros/WaypointV2AircraftControlActuatorFlying _waypointV2AircraftControlActuatorFlying
    (send _waypointV2AircraftControlActuatorFlying :serialization-length)
    ;; dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading _waypointV2AircraftControlActuatorRotateHeading
    (send _waypointV2AircraftControlActuatorRotateHeading :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _actuatorIndex
       (write-byte _actuatorIndex s)
     ;; uint16 _DJIWaypointV2ActionActuatorAircraftControlOperationType
       (write-word _DJIWaypointV2ActionActuatorAircraftControlOperationType s)
     ;; dji_osdk_ros/WaypointV2AircraftControlActuatorFlying _waypointV2AircraftControlActuatorFlying
       (send _waypointV2AircraftControlActuatorFlying :serialize s)
     ;; dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading _waypointV2AircraftControlActuatorRotateHeading
       (send _waypointV2AircraftControlActuatorRotateHeading :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _actuatorIndex
     (setq _actuatorIndex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _DJIWaypointV2ActionActuatorAircraftControlOperationType
     (setq _DJIWaypointV2ActionActuatorAircraftControlOperationType (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; dji_osdk_ros/WaypointV2AircraftControlActuatorFlying _waypointV2AircraftControlActuatorFlying
     (send _waypointV2AircraftControlActuatorFlying :deserialize buf ptr-) (incf ptr- (send _waypointV2AircraftControlActuatorFlying :serialization-length))
   ;; dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading _waypointV2AircraftControlActuatorRotateHeading
     (send _waypointV2AircraftControlActuatorRotateHeading :deserialize buf ptr-) (incf ptr- (send _waypointV2AircraftControlActuatorRotateHeading :serialization-length))
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2AircraftControlActuator :md5sum-) "7737a1bd220f9cf26070a870330aaaa8")
(setf (get dji_osdk_ros::WaypointV2AircraftControlActuator :datatype-) "dji_osdk_ros/WaypointV2AircraftControlActuator")
(setf (get dji_osdk_ros::WaypointV2AircraftControlActuator :definition-)
      "# Parameters for aircraft control actuator. It is valid only when the
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



(provide :dji_osdk_ros/WaypointV2AircraftControlActuator "7737a1bd220f9cf26070a870330aaaa8")


