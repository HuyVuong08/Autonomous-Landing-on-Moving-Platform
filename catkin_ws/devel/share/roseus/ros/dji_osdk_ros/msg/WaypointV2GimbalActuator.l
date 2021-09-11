;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2GimbalActuator)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2GimbalActuator (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2GIMBALACTUATOR")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2GIMBALACTUATOR"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2GimbalActuator.msg.html


(intern "*DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEROTATEGIMBAL*" (find-package "DJI_OSDK_ROS::WAYPOINTV2GIMBALACTUATOR"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEROTATEGIMBAL* (find-package "DJI_OSDK_ROS::WAYPOINTV2GIMBALACTUATOR"))
(defconstant dji_osdk_ros::WaypointV2GimbalActuator::*DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEROTATEGIMBAL* 1)
(intern "*DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEUNKNOWN*" (find-package "DJI_OSDK_ROS::WAYPOINTV2GIMBALACTUATOR"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEUNKNOWN* (find-package "DJI_OSDK_ROS::WAYPOINTV2GIMBALACTUATOR"))
(defconstant dji_osdk_ros::WaypointV2GimbalActuator::*DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEUNKNOWN* 255)

(defun dji_osdk_ros::WaypointV2GimbalActuator-to-symbol (const)
  (cond
        ((= const 1) 'dji_osdk_ros::WaypointV2GimbalActuator::*DJIWaypointV2ActionActuatorGimbalOperationTypeRotateGimbal*)
        ((= const 255) 'dji_osdk_ros::WaypointV2GimbalActuator::*DJIWaypointV2ActionActuatorGimbalOperationTypeUnknown*)
        (t nil)))

(defclass dji_osdk_ros::WaypointV2GimbalActuator
  :super ros::object
  :slots (_DJIWaypointV2ActionActuatorGimbalOperationType _actuatorIndex _waypointV2GimbalActuatorRotationParam ))

(defmethod dji_osdk_ros::WaypointV2GimbalActuator
  (:init
   (&key
    ((:DJIWaypointV2ActionActuatorGimbalOperationType __DJIWaypointV2ActionActuatorGimbalOperationType) 0)
    ((:actuatorIndex __actuatorIndex) 0)
    ((:waypointV2GimbalActuatorRotationParam __waypointV2GimbalActuatorRotationParam) (instance dji_osdk_ros::WaypointV2GimbalActuatorRotationParam :init))
    )
   (send-super :init)
   (setq _DJIWaypointV2ActionActuatorGimbalOperationType (round __DJIWaypointV2ActionActuatorGimbalOperationType))
   (setq _actuatorIndex (round __actuatorIndex))
   (setq _waypointV2GimbalActuatorRotationParam __waypointV2GimbalActuatorRotationParam)
   self)
  (:DJIWaypointV2ActionActuatorGimbalOperationType
   (&optional __DJIWaypointV2ActionActuatorGimbalOperationType)
   (if __DJIWaypointV2ActionActuatorGimbalOperationType (setq _DJIWaypointV2ActionActuatorGimbalOperationType __DJIWaypointV2ActionActuatorGimbalOperationType)) _DJIWaypointV2ActionActuatorGimbalOperationType)
  (:actuatorIndex
   (&optional __actuatorIndex)
   (if __actuatorIndex (setq _actuatorIndex __actuatorIndex)) _actuatorIndex)
  (:waypointV2GimbalActuatorRotationParam
   (&rest __waypointV2GimbalActuatorRotationParam)
   (if (keywordp (car __waypointV2GimbalActuatorRotationParam))
       (send* _waypointV2GimbalActuatorRotationParam __waypointV2GimbalActuatorRotationParam)
     (progn
       (if __waypointV2GimbalActuatorRotationParam (setq _waypointV2GimbalActuatorRotationParam (car __waypointV2GimbalActuatorRotationParam)))
       _waypointV2GimbalActuatorRotationParam)))
  (:serialization-length
   ()
   (+
    ;; uint8 _DJIWaypointV2ActionActuatorGimbalOperationType
    1
    ;; uint16 _actuatorIndex
    2
    ;; dji_osdk_ros/WaypointV2GimbalActuatorRotationParam _waypointV2GimbalActuatorRotationParam
    (send _waypointV2GimbalActuatorRotationParam :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _DJIWaypointV2ActionActuatorGimbalOperationType
       (write-byte _DJIWaypointV2ActionActuatorGimbalOperationType s)
     ;; uint16 _actuatorIndex
       (write-word _actuatorIndex s)
     ;; dji_osdk_ros/WaypointV2GimbalActuatorRotationParam _waypointV2GimbalActuatorRotationParam
       (send _waypointV2GimbalActuatorRotationParam :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _DJIWaypointV2ActionActuatorGimbalOperationType
     (setq _DJIWaypointV2ActionActuatorGimbalOperationType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _actuatorIndex
     (setq _actuatorIndex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; dji_osdk_ros/WaypointV2GimbalActuatorRotationParam _waypointV2GimbalActuatorRotationParam
     (send _waypointV2GimbalActuatorRotationParam :deserialize buf ptr-) (incf ptr- (send _waypointV2GimbalActuatorRotationParam :serialization-length))
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2GimbalActuator :md5sum-) "8bcaee6b26f8e0a2c23b117c342971ca")
(setf (get dji_osdk_ros::WaypointV2GimbalActuator :datatype-) "dji_osdk_ros/WaypointV2GimbalActuator")
(setf (get dji_osdk_ros::WaypointV2GimbalActuator :definition-)
      "# gimbal actuator will be performed when a waypoint mission is executed.
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
")



(provide :dji_osdk_ros/WaypointV2GimbalActuator "8bcaee6b26f8e0a2c23b117c342971ca")


