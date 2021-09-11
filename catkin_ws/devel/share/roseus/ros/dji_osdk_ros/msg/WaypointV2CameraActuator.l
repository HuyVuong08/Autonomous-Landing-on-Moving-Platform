;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2CameraActuator)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2CameraActuator (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATOR")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATOR"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2CameraActuator.msg.html


(intern "*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPETAKEPHOTO*" (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATOR"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPETAKEPHOTO* (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATOR"))
(defconstant dji_osdk_ros::WaypointV2CameraActuator::*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPETAKEPHOTO* 1)
(intern "*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTARTRECORDVIDEO*" (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATOR"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTARTRECORDVIDEO* (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATOR"))
(defconstant dji_osdk_ros::WaypointV2CameraActuator::*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTARTRECORDVIDEO* 2)
(intern "*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTOPRECORDVIDEO*" (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATOR"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTOPRECORDVIDEO* (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATOR"))
(defconstant dji_osdk_ros::WaypointV2CameraActuator::*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTOPRECORDVIDEO* 3)
(intern "*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCUS*" (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATOR"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCUS* (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATOR"))
(defconstant dji_osdk_ros::WaypointV2CameraActuator::*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCUS* 4)
(intern "*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCALLENGTH*" (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATOR"))
(shadow '*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCALLENGTH* (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATOR"))
(defconstant dji_osdk_ros::WaypointV2CameraActuator::*DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCALLENGTH* 5)

(defun dji_osdk_ros::WaypointV2CameraActuator-to-symbol (const)
  (cond
        ((= const 1) 'dji_osdk_ros::WaypointV2CameraActuator::*DJIWaypointV2ActionActuatorCameraOperationTypeTakePhoto*)
        ((= const 2) 'dji_osdk_ros::WaypointV2CameraActuator::*DJIWaypointV2ActionActuatorCameraOperationTypeStartRecordVideo*)
        ((= const 3) 'dji_osdk_ros::WaypointV2CameraActuator::*DJIWaypointV2ActionActuatorCameraOperationTypeStopRecordVideo*)
        ((= const 4) 'dji_osdk_ros::WaypointV2CameraActuator::*DJIWaypointV2ActionActuatorCameraOperationTypeFocus*)
        ((= const 5) 'dji_osdk_ros::WaypointV2CameraActuator::*DJIWaypointV2ActionActuatorCameraOperationTypeFocalLength*)
        (t nil)))

(defclass dji_osdk_ros::WaypointV2CameraActuator
  :super ros::object
  :slots (_actuatorIndex _DJIWaypointV2ActionActuatorCameraOperationType _focusParam _zoomParam ))

(defmethod dji_osdk_ros::WaypointV2CameraActuator
  (:init
   (&key
    ((:actuatorIndex __actuatorIndex) 0)
    ((:DJIWaypointV2ActionActuatorCameraOperationType __DJIWaypointV2ActionActuatorCameraOperationType) 0)
    ((:focusParam __focusParam) (instance dji_osdk_ros::WaypointV2CameraActuatorFocusParam :init))
    ((:zoomParam __zoomParam) (instance dji_osdk_ros::WaypointV2CameraActuatorFocalLengthParam :init))
    )
   (send-super :init)
   (setq _actuatorIndex (round __actuatorIndex))
   (setq _DJIWaypointV2ActionActuatorCameraOperationType (round __DJIWaypointV2ActionActuatorCameraOperationType))
   (setq _focusParam __focusParam)
   (setq _zoomParam __zoomParam)
   self)
  (:actuatorIndex
   (&optional __actuatorIndex)
   (if __actuatorIndex (setq _actuatorIndex __actuatorIndex)) _actuatorIndex)
  (:DJIWaypointV2ActionActuatorCameraOperationType
   (&optional __DJIWaypointV2ActionActuatorCameraOperationType)
   (if __DJIWaypointV2ActionActuatorCameraOperationType (setq _DJIWaypointV2ActionActuatorCameraOperationType __DJIWaypointV2ActionActuatorCameraOperationType)) _DJIWaypointV2ActionActuatorCameraOperationType)
  (:focusParam
   (&rest __focusParam)
   (if (keywordp (car __focusParam))
       (send* _focusParam __focusParam)
     (progn
       (if __focusParam (setq _focusParam (car __focusParam)))
       _focusParam)))
  (:zoomParam
   (&rest __zoomParam)
   (if (keywordp (car __zoomParam))
       (send* _zoomParam __zoomParam)
     (progn
       (if __zoomParam (setq _zoomParam (car __zoomParam)))
       _zoomParam)))
  (:serialization-length
   ()
   (+
    ;; uint16 _actuatorIndex
    2
    ;; uint16 _DJIWaypointV2ActionActuatorCameraOperationType
    2
    ;; dji_osdk_ros/WaypointV2CameraActuatorFocusParam _focusParam
    (send _focusParam :serialization-length)
    ;; dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam _zoomParam
    (send _zoomParam :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _actuatorIndex
       (write-word _actuatorIndex s)
     ;; uint16 _DJIWaypointV2ActionActuatorCameraOperationType
       (write-word _DJIWaypointV2ActionActuatorCameraOperationType s)
     ;; dji_osdk_ros/WaypointV2CameraActuatorFocusParam _focusParam
       (send _focusParam :serialize s)
     ;; dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam _zoomParam
       (send _zoomParam :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _actuatorIndex
     (setq _actuatorIndex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _DJIWaypointV2ActionActuatorCameraOperationType
     (setq _DJIWaypointV2ActionActuatorCameraOperationType (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; dji_osdk_ros/WaypointV2CameraActuatorFocusParam _focusParam
     (send _focusParam :deserialize buf ptr-) (incf ptr- (send _focusParam :serialization-length))
   ;; dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam _zoomParam
     (send _zoomParam :deserialize buf ptr-) (incf ptr- (send _zoomParam :serialization-length))
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2CameraActuator :md5sum-) "70a055c9fb9f49f67d8f5bf884fe592d")
(setf (get dji_osdk_ros::WaypointV2CameraActuator :datatype-) "dji_osdk_ros/WaypointV2CameraActuator")
(setf (get dji_osdk_ros::WaypointV2CameraActuator :definition-)
      "# This determines how the camera will be performed when a waypoint mission is executing.
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
")



(provide :dji_osdk_ros/WaypointV2CameraActuator "70a055c9fb9f49f67d8f5bf884fe592d")


