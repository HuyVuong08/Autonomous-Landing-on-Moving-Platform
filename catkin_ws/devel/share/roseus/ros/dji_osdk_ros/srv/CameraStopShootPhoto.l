;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraStopShootPhoto)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraStopShootPhoto (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERASTOPSHOOTPHOTO")
  (make-package "DJI_OSDK_ROS::CAMERASTOPSHOOTPHOTO"))
(unless (find-package "DJI_OSDK_ROS::CAMERASTOPSHOOTPHOTOREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERASTOPSHOOTPHOTOREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERASTOPSHOOTPHOTORESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERASTOPSHOOTPHOTORESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraStopShootPhotoRequest
  :super ros::object
  :slots (_payload_index ))

(defmethod dji_osdk_ros::CameraStopShootPhotoRequest
  (:init
   (&key
    ((:payload_index __payload_index) 0)
    )
   (send-super :init)
   (setq _payload_index (round __payload_index))
   self)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:serialization-length
   ()
   (+
    ;; uint8 _payload_index
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _payload_index
       (write-byte _payload_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraStopShootPhotoResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraStopShootPhotoResponse
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

(defclass dji_osdk_ros::CameraStopShootPhoto
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraStopShootPhoto :md5sum-) "71b2b29d454b340190356e9e51a9c2fe")
(setf (get dji_osdk_ros::CameraStopShootPhoto :datatype-) "dji_osdk_ros/CameraStopShootPhoto")
(setf (get dji_osdk_ros::CameraStopShootPhoto :request) dji_osdk_ros::CameraStopShootPhotoRequest)
(setf (get dji_osdk_ros::CameraStopShootPhoto :response) dji_osdk_ros::CameraStopShootPhotoResponse)

(defmethod dji_osdk_ros::CameraStopShootPhotoRequest
  (:response () (instance dji_osdk_ros::CameraStopShootPhotoResponse :init)))

(setf (get dji_osdk_ros::CameraStopShootPhotoRequest :md5sum-) "71b2b29d454b340190356e9e51a9c2fe")
(setf (get dji_osdk_ros::CameraStopShootPhotoRequest :datatype-) "dji_osdk_ros/CameraStopShootPhotoRequest")
(setf (get dji_osdk_ros::CameraStopShootPhotoRequest :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraStopShootPhotoResponse :md5sum-) "71b2b29d454b340190356e9e51a9c2fe")
(setf (get dji_osdk_ros::CameraStopShootPhotoResponse :datatype-) "dji_osdk_ros/CameraStopShootPhotoResponse")
(setf (get dji_osdk_ros::CameraStopShootPhotoResponse :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
---
#response
bool result
")



(provide :dji_osdk_ros/CameraStopShootPhoto "71b2b29d454b340190356e9e51a9c2fe")


