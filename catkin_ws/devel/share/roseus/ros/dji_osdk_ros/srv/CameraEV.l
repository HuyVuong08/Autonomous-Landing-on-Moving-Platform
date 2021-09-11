;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraEV)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraEV (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERAEV")
  (make-package "DJI_OSDK_ROS::CAMERAEV"))
(unless (find-package "DJI_OSDK_ROS::CAMERAEVREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERAEVREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERAEVRESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERAEVRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraEVRequest
  :super ros::object
  :slots (_payload_index _exposure_mode _exposure_compensation ))

(defmethod dji_osdk_ros::CameraEVRequest
  (:init
   (&key
    ((:payload_index __payload_index) 0)
    ((:exposure_mode __exposure_mode) 0)
    ((:exposure_compensation __exposure_compensation) 0)
    )
   (send-super :init)
   (setq _payload_index (round __payload_index))
   (setq _exposure_mode (round __exposure_mode))
   (setq _exposure_compensation (round __exposure_compensation))
   self)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:exposure_mode
   (&optional __exposure_mode)
   (if __exposure_mode (setq _exposure_mode __exposure_mode)) _exposure_mode)
  (:exposure_compensation
   (&optional __exposure_compensation)
   (if __exposure_compensation (setq _exposure_compensation __exposure_compensation)) _exposure_compensation)
  (:serialization-length
   ()
   (+
    ;; uint8 _payload_index
    1
    ;; uint8 _exposure_mode
    1
    ;; uint8 _exposure_compensation
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
     ;; uint8 _exposure_compensation
       (write-byte _exposure_compensation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _exposure_mode
     (setq _exposure_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _exposure_compensation
     (setq _exposure_compensation (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraEVResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraEVResponse
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

(defclass dji_osdk_ros::CameraEV
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraEV :md5sum-) "8afce101181274778612bcace32344e1")
(setf (get dji_osdk_ros::CameraEV :datatype-) "dji_osdk_ros/CameraEV")
(setf (get dji_osdk_ros::CameraEV :request) dji_osdk_ros::CameraEVRequest)
(setf (get dji_osdk_ros::CameraEV :response) dji_osdk_ros::CameraEVResponse)

(defmethod dji_osdk_ros::CameraEVRequest
  (:response () (instance dji_osdk_ros::CameraEVResponse :init)))

(setf (get dji_osdk_ros::CameraEVRequest :md5sum-) "8afce101181274778612bcace32344e1")
(setf (get dji_osdk_ros::CameraEVRequest :datatype-) "dji_osdk_ros/CameraEVRequest")
(setf (get dji_osdk_ros::CameraEVRequest :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 exposure_mode #see enum class ExposureMode in common_type.h
uint8 exposure_compensation #see enum class ExposureCompensation in common_type.h
---
#reponse
bool result


")

(setf (get dji_osdk_ros::CameraEVResponse :md5sum-) "8afce101181274778612bcace32344e1")
(setf (get dji_osdk_ros::CameraEVResponse :datatype-) "dji_osdk_ros/CameraEVResponse")
(setf (get dji_osdk_ros::CameraEVResponse :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 exposure_mode #see enum class ExposureMode in common_type.h
uint8 exposure_compensation #see enum class ExposureCompensation in common_type.h
---
#reponse
bool result


")



(provide :dji_osdk_ros/CameraEV "8afce101181274778612bcace32344e1")


