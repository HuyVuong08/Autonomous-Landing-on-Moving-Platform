;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraAperture)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraAperture (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERAAPERTURE")
  (make-package "DJI_OSDK_ROS::CAMERAAPERTURE"))
(unless (find-package "DJI_OSDK_ROS::CAMERAAPERTUREREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERAAPERTUREREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERAAPERTURERESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERAAPERTURERESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraApertureRequest
  :super ros::object
  :slots (_payload_index _exposure_mode _aperture ))

(defmethod dji_osdk_ros::CameraApertureRequest
  (:init
   (&key
    ((:payload_index __payload_index) 0)
    ((:exposure_mode __exposure_mode) 0)
    ((:aperture __aperture) 0)
    )
   (send-super :init)
   (setq _payload_index (round __payload_index))
   (setq _exposure_mode (round __exposure_mode))
   (setq _aperture (round __aperture))
   self)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:exposure_mode
   (&optional __exposure_mode)
   (if __exposure_mode (setq _exposure_mode __exposure_mode)) _exposure_mode)
  (:aperture
   (&optional __aperture)
   (if __aperture (setq _aperture __aperture)) _aperture)
  (:serialization-length
   ()
   (+
    ;; uint8 _payload_index
    1
    ;; uint8 _exposure_mode
    1
    ;; uint16 _aperture
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _payload_index
       (write-byte _payload_index s)
     ;; uint8 _exposure_mode
       (write-byte _exposure_mode s)
     ;; uint16 _aperture
       (write-word _aperture s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _exposure_mode
     (setq _exposure_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _aperture
     (setq _aperture (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraApertureResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraApertureResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraAperture
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraAperture :md5sum-) "e44af7504f55d5049bcbe4380a70428e")
(setf (get dji_osdk_ros::CameraAperture :datatype-) "dji_osdk_ros/CameraAperture")
(setf (get dji_osdk_ros::CameraAperture :request) dji_osdk_ros::CameraApertureRequest)
(setf (get dji_osdk_ros::CameraAperture :response) dji_osdk_ros::CameraApertureResponse)

(defmethod dji_osdk_ros::CameraApertureRequest
  (:response () (instance dji_osdk_ros::CameraApertureResponse :init)))

(setf (get dji_osdk_ros::CameraApertureRequest :md5sum-) "e44af7504f55d5049bcbe4380a70428e")
(setf (get dji_osdk_ros::CameraApertureRequest :datatype-) "dji_osdk_ros/CameraApertureRequest")
(setf (get dji_osdk_ros::CameraApertureRequest :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 exposure_mode #see enum class ExposureMode in common_type.h
uint16 aperture      #see enum class Aperture in common_type.h
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraApertureResponse :md5sum-) "e44af7504f55d5049bcbe4380a70428e")
(setf (get dji_osdk_ros::CameraApertureResponse :datatype-) "dji_osdk_ros/CameraApertureResponse")
(setf (get dji_osdk_ros::CameraApertureResponse :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 exposure_mode #see enum class ExposureMode in common_type.h
uint16 aperture      #see enum class Aperture in common_type.h
---
#response
bool result
")



(provide :dji_osdk_ros/CameraAperture "e44af7504f55d5049bcbe4380a70428e")


