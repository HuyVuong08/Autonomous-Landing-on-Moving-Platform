;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2CameraActuatorFocusParam)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2CameraActuatorFocusParam (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATORFOCUSPARAM")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATORFOCUSPARAM"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2CameraActuatorFocusParam.msg.html


(intern "*RETRYTIMES*" (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATORFOCUSPARAM"))
(shadow '*RETRYTIMES* (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATORFOCUSPARAM"))
(defconstant dji_osdk_ros::WaypointV2CameraActuatorFocusParam::*RETRYTIMES* 1)

(defun dji_osdk_ros::WaypointV2CameraActuatorFocusParam-to-symbol (const)
  (cond
        ((= const 1) 'dji_osdk_ros::WaypointV2CameraActuatorFocusParam::*retryTimes*)
        (t nil)))

(defclass dji_osdk_ros::WaypointV2CameraActuatorFocusParam
  :super ros::object
  :slots (_x _y _regionType _width _height ))

(defmethod dji_osdk_ros::WaypointV2CameraActuatorFocusParam
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:regionType __regionType) 0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _regionType (round __regionType))
   (setq _width (float __width))
   (setq _height (float __height))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:regionType
   (&optional __regionType)
   (if __regionType (setq _regionType __regionType)) _regionType)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; uint8 _regionType
    1
    ;; float32 _width
    4
    ;; float32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _regionType
       (write-byte _regionType s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _regionType
     (setq _regionType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2CameraActuatorFocusParam :md5sum-) "95b7a584dbbb8caef1fc7ac96e17cb2b")
(setf (get dji_osdk_ros::WaypointV2CameraActuatorFocusParam :datatype-) "dji_osdk_ros/WaypointV2CameraActuatorFocusParam")
(setf (get dji_osdk_ros::WaypointV2CameraActuatorFocusParam :definition-)
      "# This class defines a camera focus operation for ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
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
")



(provide :dji_osdk_ros/WaypointV2CameraActuatorFocusParam "95b7a584dbbb8caef1fc7ac96e17cb2b")


