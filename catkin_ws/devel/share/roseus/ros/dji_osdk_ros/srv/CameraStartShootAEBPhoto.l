;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraStartShootAEBPhoto)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraStartShootAEBPhoto (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERASTARTSHOOTAEBPHOTO")
  (make-package "DJI_OSDK_ROS::CAMERASTARTSHOOTAEBPHOTO"))
(unless (find-package "DJI_OSDK_ROS::CAMERASTARTSHOOTAEBPHOTOREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERASTARTSHOOTAEBPHOTOREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERASTARTSHOOTAEBPHOTORESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERASTARTSHOOTAEBPHOTORESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraStartShootAEBPhotoRequest
  :super ros::object
  :slots (_payload_index _photo_aeb_count ))

(defmethod dji_osdk_ros::CameraStartShootAEBPhotoRequest
  (:init
   (&key
    ((:payload_index __payload_index) 0)
    ((:photo_aeb_count __photo_aeb_count) 0)
    )
   (send-super :init)
   (setq _payload_index (round __payload_index))
   (setq _photo_aeb_count (round __photo_aeb_count))
   self)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:photo_aeb_count
   (&optional __photo_aeb_count)
   (if __photo_aeb_count (setq _photo_aeb_count __photo_aeb_count)) _photo_aeb_count)
  (:serialization-length
   ()
   (+
    ;; uint8 _payload_index
    1
    ;; uint8 _photo_aeb_count
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _payload_index
       (write-byte _payload_index s)
     ;; uint8 _photo_aeb_count
       (write-byte _photo_aeb_count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _photo_aeb_count
     (setq _photo_aeb_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraStartShootAEBPhotoResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraStartShootAEBPhotoResponse
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

(defclass dji_osdk_ros::CameraStartShootAEBPhoto
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraStartShootAEBPhoto :md5sum-) "c30d8282262b81c056e4ae369862d80d")
(setf (get dji_osdk_ros::CameraStartShootAEBPhoto :datatype-) "dji_osdk_ros/CameraStartShootAEBPhoto")
(setf (get dji_osdk_ros::CameraStartShootAEBPhoto :request) dji_osdk_ros::CameraStartShootAEBPhotoRequest)
(setf (get dji_osdk_ros::CameraStartShootAEBPhoto :response) dji_osdk_ros::CameraStartShootAEBPhotoResponse)

(defmethod dji_osdk_ros::CameraStartShootAEBPhotoRequest
  (:response () (instance dji_osdk_ros::CameraStartShootAEBPhotoResponse :init)))

(setf (get dji_osdk_ros::CameraStartShootAEBPhotoRequest :md5sum-) "c30d8282262b81c056e4ae369862d80d")
(setf (get dji_osdk_ros::CameraStartShootAEBPhotoRequest :datatype-) "dji_osdk_ros/CameraStartShootAEBPhotoRequest")
(setf (get dji_osdk_ros::CameraStartShootAEBPhotoRequest :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 photo_aeb_count #see enum class PhotoAEBCount in common_type.h
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraStartShootAEBPhotoResponse :md5sum-) "c30d8282262b81c056e4ae369862d80d")
(setf (get dji_osdk_ros::CameraStartShootAEBPhotoResponse :datatype-) "dji_osdk_ros/CameraStartShootAEBPhotoResponse")
(setf (get dji_osdk_ros::CameraStartShootAEBPhotoResponse :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 photo_aeb_count #see enum class PhotoAEBCount in common_type.h
---
#response
bool result
")



(provide :dji_osdk_ros/CameraStartShootAEBPhoto "c30d8282262b81c056e4ae369862d80d")


