;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraShutterSpeed)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraShutterSpeed (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERASHUTTERSPEED")
  (make-package "DJI_OSDK_ROS::CAMERASHUTTERSPEED"))
(unless (find-package "DJI_OSDK_ROS::CAMERASHUTTERSPEEDREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERASHUTTERSPEEDREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERASHUTTERSPEEDRESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERASHUTTERSPEEDRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraShutterSpeedRequest
  :super ros::object
  :slots (_payload_index _exposure_mode _shutter_speed ))

(defmethod dji_osdk_ros::CameraShutterSpeedRequest
  (:init
   (&key
    ((:payload_index __payload_index) 0)
    ((:exposure_mode __exposure_mode) 0)
    ((:shutter_speed __shutter_speed) 0)
    )
   (send-super :init)
   (setq _payload_index (round __payload_index))
   (setq _exposure_mode (round __exposure_mode))
   (setq _shutter_speed (round __shutter_speed))
   self)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:exposure_mode
   (&optional __exposure_mode)
   (if __exposure_mode (setq _exposure_mode __exposure_mode)) _exposure_mode)
  (:shutter_speed
   (&optional __shutter_speed)
   (if __shutter_speed (setq _shutter_speed __shutter_speed)) _shutter_speed)
  (:serialization-length
   ()
   (+
    ;; uint8 _payload_index
    1
    ;; uint8 _exposure_mode
    1
    ;; uint8 _shutter_speed
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
     ;; uint8 _shutter_speed
       (write-byte _shutter_speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _exposure_mode
     (setq _exposure_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _shutter_speed
     (setq _shutter_speed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraShutterSpeedResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraShutterSpeedResponse
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

(defclass dji_osdk_ros::CameraShutterSpeed
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraShutterSpeed :md5sum-) "cab76933e4cde3ed0525dd3c2f4ed953")
(setf (get dji_osdk_ros::CameraShutterSpeed :datatype-) "dji_osdk_ros/CameraShutterSpeed")
(setf (get dji_osdk_ros::CameraShutterSpeed :request) dji_osdk_ros::CameraShutterSpeedRequest)
(setf (get dji_osdk_ros::CameraShutterSpeed :response) dji_osdk_ros::CameraShutterSpeedResponse)

(defmethod dji_osdk_ros::CameraShutterSpeedRequest
  (:response () (instance dji_osdk_ros::CameraShutterSpeedResponse :init)))

(setf (get dji_osdk_ros::CameraShutterSpeedRequest :md5sum-) "cab76933e4cde3ed0525dd3c2f4ed953")
(setf (get dji_osdk_ros::CameraShutterSpeedRequest :datatype-) "dji_osdk_ros/CameraShutterSpeedRequest")
(setf (get dji_osdk_ros::CameraShutterSpeedRequest :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 exposure_mode #see enum class ExposureMode in common_type.h
uint8 shutter_speed #see enum class ShutterSpeed in common_type.h
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraShutterSpeedResponse :md5sum-) "cab76933e4cde3ed0525dd3c2f4ed953")
(setf (get dji_osdk_ros::CameraShutterSpeedResponse :datatype-) "dji_osdk_ros/CameraShutterSpeedResponse")
(setf (get dji_osdk_ros::CameraShutterSpeedResponse :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 exposure_mode #see enum class ExposureMode in common_type.h
uint8 shutter_speed #see enum class ShutterSpeed in common_type.h
---
#response
bool result
")



(provide :dji_osdk_ros/CameraShutterSpeed "cab76933e4cde3ed0525dd3c2f4ed953")


