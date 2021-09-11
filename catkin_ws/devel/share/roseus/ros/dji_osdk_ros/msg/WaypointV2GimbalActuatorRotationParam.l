;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2GimbalActuatorRotationParam)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2GimbalActuatorRotationParam (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2GIMBALACTUATORROTATIONPARAM")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2GIMBALACTUATORROTATIONPARAM"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2GimbalActuatorRotationParam.msg.html


(defclass dji_osdk_ros::WaypointV2GimbalActuatorRotationParam
  :super ros::object
  :slots (_x _y _z _ctrl_mode _rollCmdIgnore _pitchCmdIgnore _yawCmdIgnore _absYawModeRef _duationTime ))

(defmethod dji_osdk_ros::WaypointV2GimbalActuatorRotationParam
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:z __z) 0)
    ((:ctrl_mode __ctrl_mode) 0)
    ((:rollCmdIgnore __rollCmdIgnore) 0)
    ((:pitchCmdIgnore __pitchCmdIgnore) 0)
    ((:yawCmdIgnore __yawCmdIgnore) 0)
    ((:absYawModeRef __absYawModeRef) 0)
    ((:duationTime __duationTime) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _z (round __z))
   (setq _ctrl_mode (round __ctrl_mode))
   (setq _rollCmdIgnore (round __rollCmdIgnore))
   (setq _pitchCmdIgnore (round __pitchCmdIgnore))
   (setq _yawCmdIgnore (round __yawCmdIgnore))
   (setq _absYawModeRef (round __absYawModeRef))
   (setq _duationTime (round __duationTime))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:ctrl_mode
   (&optional __ctrl_mode)
   (if __ctrl_mode (setq _ctrl_mode __ctrl_mode)) _ctrl_mode)
  (:rollCmdIgnore
   (&optional __rollCmdIgnore)
   (if __rollCmdIgnore (setq _rollCmdIgnore __rollCmdIgnore)) _rollCmdIgnore)
  (:pitchCmdIgnore
   (&optional __pitchCmdIgnore)
   (if __pitchCmdIgnore (setq _pitchCmdIgnore __pitchCmdIgnore)) _pitchCmdIgnore)
  (:yawCmdIgnore
   (&optional __yawCmdIgnore)
   (if __yawCmdIgnore (setq _yawCmdIgnore __yawCmdIgnore)) _yawCmdIgnore)
  (:absYawModeRef
   (&optional __absYawModeRef)
   (if __absYawModeRef (setq _absYawModeRef __absYawModeRef)) _absYawModeRef)
  (:duationTime
   (&optional __duationTime)
   (if __duationTime (setq _duationTime __duationTime)) _duationTime)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ;; int16 _y
    2
    ;; int16 _z
    2
    ;; uint8 _ctrl_mode
    1
    ;; uint8 _rollCmdIgnore
    1
    ;; uint8 _pitchCmdIgnore
    1
    ;; uint8 _yawCmdIgnore
    1
    ;; uint8 _absYawModeRef
    1
    ;; uint8 _duationTime
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x
       (write-word _x s)
     ;; int16 _y
       (write-word _y s)
     ;; int16 _z
       (write-word _z s)
     ;; uint8 _ctrl_mode
       (write-byte _ctrl_mode s)
     ;; uint8 _rollCmdIgnore
       (write-byte _rollCmdIgnore s)
     ;; uint8 _pitchCmdIgnore
       (write-byte _pitchCmdIgnore s)
     ;; uint8 _yawCmdIgnore
       (write-byte _yawCmdIgnore s)
     ;; uint8 _absYawModeRef
       (write-byte _absYawModeRef s)
     ;; uint8 _duationTime
       (write-byte _duationTime s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _z
     (setq _z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _ctrl_mode
     (setq _ctrl_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rollCmdIgnore
     (setq _rollCmdIgnore (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _pitchCmdIgnore
     (setq _pitchCmdIgnore (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _yawCmdIgnore
     (setq _yawCmdIgnore (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _absYawModeRef
     (setq _absYawModeRef (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _duationTime
     (setq _duationTime (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2GimbalActuatorRotationParam :md5sum-) "d6369db5b1897817b8aad8457ecdbd81")
(setf (get dji_osdk_ros::WaypointV2GimbalActuatorRotationParam :datatype-) "dji_osdk_ros/WaypointV2GimbalActuatorRotationParam")
(setf (get dji_osdk_ros::WaypointV2GimbalActuatorRotationParam :definition-)
      "  int16 x             # gimbal roll angle,  unit: 0.1 deg,range:[-3600, 3600]*/
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



(provide :dji_osdk_ros/WaypointV2GimbalActuatorRotationParam "d6369db5b1897817b8aad8457ecdbd81")


