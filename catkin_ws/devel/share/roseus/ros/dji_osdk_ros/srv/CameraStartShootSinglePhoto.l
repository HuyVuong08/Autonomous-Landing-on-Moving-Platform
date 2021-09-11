;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraStartShootSinglePhoto)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraStartShootSinglePhoto (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERASTARTSHOOTSINGLEPHOTO")
  (make-package "DJI_OSDK_ROS::CAMERASTARTSHOOTSINGLEPHOTO"))
(unless (find-package "DJI_OSDK_ROS::CAMERASTARTSHOOTSINGLEPHOTOREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERASTARTSHOOTSINGLEPHOTOREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERASTARTSHOOTSINGLEPHOTORESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERASTARTSHOOTSINGLEPHOTORESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraStartShootSinglePhotoRequest
  :super ros::object
  :slots (_payload_index ))

(defmethod dji_osdk_ros::CameraStartShootSinglePhotoRequest
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

(defclass dji_osdk_ros::CameraStartShootSinglePhotoResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraStartShootSinglePhotoResponse
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

(defclass dji_osdk_ros::CameraStartShootSinglePhoto
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraStartShootSinglePhoto :md5sum-) "71b2b29d454b340190356e9e51a9c2fe")
(setf (get dji_osdk_ros::CameraStartShootSinglePhoto :datatype-) "dji_osdk_ros/CameraStartShootSinglePhoto")
(setf (get dji_osdk_ros::CameraStartShootSinglePhoto :request) dji_osdk_ros::CameraStartShootSinglePhotoRequest)
(setf (get dji_osdk_ros::CameraStartShootSinglePhoto :response) dji_osdk_ros::CameraStartShootSinglePhotoResponse)

(defmethod dji_osdk_ros::CameraStartShootSinglePhotoRequest
  (:response () (instance dji_osdk_ros::CameraStartShootSinglePhotoResponse :init)))

(setf (get dji_osdk_ros::CameraStartShootSinglePhotoRequest :md5sum-) "71b2b29d454b340190356e9e51a9c2fe")
(setf (get dji_osdk_ros::CameraStartShootSinglePhotoRequest :datatype-) "dji_osdk_ros/CameraStartShootSinglePhotoRequest")
(setf (get dji_osdk_ros::CameraStartShootSinglePhotoRequest :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraStartShootSinglePhotoResponse :md5sum-) "71b2b29d454b340190356e9e51a9c2fe")
(setf (get dji_osdk_ros::CameraStartShootSinglePhotoResponse :datatype-) "dji_osdk_ros/CameraStartShootSinglePhotoResponse")
(setf (get dji_osdk_ros::CameraStartShootSinglePhotoResponse :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
---
#response
bool result
")



(provide :dji_osdk_ros/CameraStartShootSinglePhoto "71b2b29d454b340190356e9e51a9c2fe")


