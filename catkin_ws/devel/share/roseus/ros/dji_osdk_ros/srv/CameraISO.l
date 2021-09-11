;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraISO)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraISO (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERAISO")
  (make-package "DJI_OSDK_ROS::CAMERAISO"))
(unless (find-package "DJI_OSDK_ROS::CAMERAISOREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERAISOREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERAISORESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERAISORESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraISORequest
  :super ros::object
  :slots (_payload_index _exposure_mode _iso_data ))

(defmethod dji_osdk_ros::CameraISORequest
  (:init
   (&key
    ((:payload_index __payload_index) 0)
    ((:exposure_mode __exposure_mode) 0)
    ((:iso_data __iso_data) 0)
    )
   (send-super :init)
   (setq _payload_index (round __payload_index))
   (setq _exposure_mode (round __exposure_mode))
   (setq _iso_data (round __iso_data))
   self)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:exposure_mode
   (&optional __exposure_mode)
   (if __exposure_mode (setq _exposure_mode __exposure_mode)) _exposure_mode)
  (:iso_data
   (&optional __iso_data)
   (if __iso_data (setq _iso_data __iso_data)) _iso_data)
  (:serialization-length
   ()
   (+
    ;; uint8 _payload_index
    1
    ;; uint8 _exposure_mode
    1
    ;; uint8 _iso_data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _payload_index
       (write-byte _payload_index s)
     ;; uint8 _exposure_mode
       (write-byte _exposure_mode s)
     ;; uint8 _iso_data
       (write-byte _iso_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _exposure_mode
     (setq _exposure_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _iso_data
     (setq _iso_data (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraISOResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraISOResponse
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

(defclass dji_osdk_ros::CameraISO
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraISO :md5sum-) "621942490b0fe93137ed06987337a648")
(setf (get dji_osdk_ros::CameraISO :datatype-) "dji_osdk_ros/CameraISO")
(setf (get dji_osdk_ros::CameraISO :request) dji_osdk_ros::CameraISORequest)
(setf (get dji_osdk_ros::CameraISO :response) dji_osdk_ros::CameraISOResponse)

(defmethod dji_osdk_ros::CameraISORequest
  (:response () (instance dji_osdk_ros::CameraISOResponse :init)))

(setf (get dji_osdk_ros::CameraISORequest :md5sum-) "621942490b0fe93137ed06987337a648")
(setf (get dji_osdk_ros::CameraISORequest :datatype-) "dji_osdk_ros/CameraISORequest")
(setf (get dji_osdk_ros::CameraISORequest :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 exposure_mode #see enum class ExposureMode in common_type.h
uint8 iso_data #see enum class ISO in common_type.h
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraISOResponse :md5sum-) "621942490b0fe93137ed06987337a648")
(setf (get dji_osdk_ros::CameraISOResponse :datatype-) "dji_osdk_ros/CameraISOResponse")
(setf (get dji_osdk_ros::CameraISOResponse :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 exposure_mode #see enum class ExposureMode in common_type.h
uint8 iso_data #see enum class ISO in common_type.h
---
#response
bool result
")



(provide :dji_osdk_ros/CameraISO "621942490b0fe93137ed06987337a648")


