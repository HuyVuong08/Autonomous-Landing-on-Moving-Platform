;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2CameraActuatorFocalLengthParam)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2CameraActuatorFocalLengthParam (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATORFOCALLENGTHPARAM")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATORFOCALLENGTHPARAM"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2CameraActuatorFocalLengthParam.msg.html


(intern "*RETRYTIMES*" (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATORFOCALLENGTHPARAM"))
(shadow '*RETRYTIMES* (find-package "DJI_OSDK_ROS::WAYPOINTV2CAMERAACTUATORFOCALLENGTHPARAM"))
(defconstant dji_osdk_ros::WaypointV2CameraActuatorFocalLengthParam::*RETRYTIMES* 1)

(defun dji_osdk_ros::WaypointV2CameraActuatorFocalLengthParam-to-symbol (const)
  (cond
        ((= const 1) 'dji_osdk_ros::WaypointV2CameraActuatorFocalLengthParam::*retryTimes*)
        (t nil)))

(defclass dji_osdk_ros::WaypointV2CameraActuatorFocalLengthParam
  :super ros::object
  :slots (_focalLength ))

(defmethod dji_osdk_ros::WaypointV2CameraActuatorFocalLengthParam
  (:init
   (&key
    ((:focalLength __focalLength) 0)
    )
   (send-super :init)
   (setq _focalLength (round __focalLength))
   self)
  (:focalLength
   (&optional __focalLength)
   (if __focalLength (setq _focalLength __focalLength)) _focalLength)
  (:serialization-length
   ()
   (+
    ;; uint16 _focalLength
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _focalLength
       (write-word _focalLength s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _focalLength
     (setq _focalLength (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2CameraActuatorFocalLengthParam :md5sum-) "99efc948569c8b4d6dd86f463dafe65a")
(setf (get dji_osdk_ros::WaypointV2CameraActuatorFocalLengthParam :datatype-) "dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam")
(setf (get dji_osdk_ros::WaypointV2CameraActuatorFocalLengthParam :definition-)
      "# This class defines a camera focal length operation for  ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
# Focal length of zoom lens. Valid range is [``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``,
# ``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``] and must be a multiple of
# ``DJICamera_DJICameraOpticalZoomSpec_focalLengthStep``.
#  Only support by those camera ``DJICamera_CameraSettings_isOpticalZoomSupported`` return ``TRUE``.
  uint16 focalLength

  uint8 retryTimes = 1
")



(provide :dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam "99efc948569c8b4d6dd86f463dafe65a")


