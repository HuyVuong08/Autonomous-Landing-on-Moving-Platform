;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraStartShootBurstPhoto)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraStartShootBurstPhoto (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERASTARTSHOOTBURSTPHOTO")
  (make-package "DJI_OSDK_ROS::CAMERASTARTSHOOTBURSTPHOTO"))
(unless (find-package "DJI_OSDK_ROS::CAMERASTARTSHOOTBURSTPHOTOREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERASTARTSHOOTBURSTPHOTOREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERASTARTSHOOTBURSTPHOTORESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERASTARTSHOOTBURSTPHOTORESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraStartShootBurstPhotoRequest
  :super ros::object
  :slots (_payload_index _photo_burst_count ))

(defmethod dji_osdk_ros::CameraStartShootBurstPhotoRequest
  (:init
   (&key
    ((:payload_index __payload_index) 0)
    ((:photo_burst_count __photo_burst_count) 0)
    )
   (send-super :init)
   (setq _payload_index (round __payload_index))
   (setq _photo_burst_count (round __photo_burst_count))
   self)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:photo_burst_count
   (&optional __photo_burst_count)
   (if __photo_burst_count (setq _photo_burst_count __photo_burst_count)) _photo_burst_count)
  (:serialization-length
   ()
   (+
    ;; uint8 _payload_index
    1
    ;; uint8 _photo_burst_count
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _payload_index
       (write-byte _payload_index s)
     ;; uint8 _photo_burst_count
       (write-byte _photo_burst_count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _photo_burst_count
     (setq _photo_burst_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraStartShootBurstPhotoResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraStartShootBurstPhotoResponse
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

(defclass dji_osdk_ros::CameraStartShootBurstPhoto
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraStartShootBurstPhoto :md5sum-) "f01c5147bd72cb4f71d9ae46f34d348e")
(setf (get dji_osdk_ros::CameraStartShootBurstPhoto :datatype-) "dji_osdk_ros/CameraStartShootBurstPhoto")
(setf (get dji_osdk_ros::CameraStartShootBurstPhoto :request) dji_osdk_ros::CameraStartShootBurstPhotoRequest)
(setf (get dji_osdk_ros::CameraStartShootBurstPhoto :response) dji_osdk_ros::CameraStartShootBurstPhotoResponse)

(defmethod dji_osdk_ros::CameraStartShootBurstPhotoRequest
  (:response () (instance dji_osdk_ros::CameraStartShootBurstPhotoResponse :init)))

(setf (get dji_osdk_ros::CameraStartShootBurstPhotoRequest :md5sum-) "f01c5147bd72cb4f71d9ae46f34d348e")
(setf (get dji_osdk_ros::CameraStartShootBurstPhotoRequest :datatype-) "dji_osdk_ros/CameraStartShootBurstPhotoRequest")
(setf (get dji_osdk_ros::CameraStartShootBurstPhotoRequest :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 photo_burst_count #see enum class PhotoBurstCount in common_type.h
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraStartShootBurstPhotoResponse :md5sum-) "f01c5147bd72cb4f71d9ae46f34d348e")
(setf (get dji_osdk_ros::CameraStartShootBurstPhotoResponse :datatype-) "dji_osdk_ros/CameraStartShootBurstPhotoResponse")
(setf (get dji_osdk_ros::CameraStartShootBurstPhotoResponse :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 photo_burst_count #see enum class PhotoBurstCount in common_type.h
---
#response
bool result
")



(provide :dji_osdk_ros/CameraStartShootBurstPhoto "f01c5147bd72cb4f71d9ae46f34d348e")


