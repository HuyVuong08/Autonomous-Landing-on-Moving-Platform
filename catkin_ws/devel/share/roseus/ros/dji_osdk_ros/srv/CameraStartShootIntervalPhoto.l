;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraStartShootIntervalPhoto)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraStartShootIntervalPhoto (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERASTARTSHOOTINTERVALPHOTO")
  (make-package "DJI_OSDK_ROS::CAMERASTARTSHOOTINTERVALPHOTO"))
(unless (find-package "DJI_OSDK_ROS::CAMERASTARTSHOOTINTERVALPHOTOREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERASTARTSHOOTINTERVALPHOTOREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERASTARTSHOOTINTERVALPHOTORESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERASTARTSHOOTINTERVALPHOTORESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraStartShootIntervalPhotoRequest
  :super ros::object
  :slots (_payload_index _photo_num_conticap _time_interval ))

(defmethod dji_osdk_ros::CameraStartShootIntervalPhotoRequest
  (:init
   (&key
    ((:payload_index __payload_index) 0)
    ((:photo_num_conticap __photo_num_conticap) 0)
    ((:time_interval __time_interval) 0)
    )
   (send-super :init)
   (setq _payload_index (round __payload_index))
   (setq _photo_num_conticap (round __photo_num_conticap))
   (setq _time_interval (round __time_interval))
   self)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:photo_num_conticap
   (&optional __photo_num_conticap)
   (if __photo_num_conticap (setq _photo_num_conticap __photo_num_conticap)) _photo_num_conticap)
  (:time_interval
   (&optional __time_interval)
   (if __time_interval (setq _time_interval __time_interval)) _time_interval)
  (:serialization-length
   ()
   (+
    ;; uint8 _payload_index
    1
    ;; uint8 _photo_num_conticap
    1
    ;; int16 _time_interval
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _payload_index
       (write-byte _payload_index s)
     ;; uint8 _photo_num_conticap
       (write-byte _photo_num_conticap s)
     ;; int16 _time_interval
       (write-word _time_interval s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _photo_num_conticap
     (setq _photo_num_conticap (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _time_interval
     (setq _time_interval (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraStartShootIntervalPhotoResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraStartShootIntervalPhotoResponse
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

(defclass dji_osdk_ros::CameraStartShootIntervalPhoto
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraStartShootIntervalPhoto :md5sum-) "bb20f8f95cde73a4d8b41d0f5a0bdcdf")
(setf (get dji_osdk_ros::CameraStartShootIntervalPhoto :datatype-) "dji_osdk_ros/CameraStartShootIntervalPhoto")
(setf (get dji_osdk_ros::CameraStartShootIntervalPhoto :request) dji_osdk_ros::CameraStartShootIntervalPhotoRequest)
(setf (get dji_osdk_ros::CameraStartShootIntervalPhoto :response) dji_osdk_ros::CameraStartShootIntervalPhotoResponse)

(defmethod dji_osdk_ros::CameraStartShootIntervalPhotoRequest
  (:response () (instance dji_osdk_ros::CameraStartShootIntervalPhotoResponse :init)))

(setf (get dji_osdk_ros::CameraStartShootIntervalPhotoRequest :md5sum-) "bb20f8f95cde73a4d8b41d0f5a0bdcdf")
(setf (get dji_osdk_ros::CameraStartShootIntervalPhotoRequest :datatype-) "dji_osdk_ros/CameraStartShootIntervalPhotoRequest")
(setf (get dji_osdk_ros::CameraStartShootIntervalPhotoRequest :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 photo_num_conticap # 0:reserve 1~254:number 255:keep capturing till stop
int16 time_interval #/ time interval (second)
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraStartShootIntervalPhotoResponse :md5sum-) "bb20f8f95cde73a4d8b41d0f5a0bdcdf")
(setf (get dji_osdk_ros::CameraStartShootIntervalPhotoResponse :datatype-) "dji_osdk_ros/CameraStartShootIntervalPhotoResponse")
(setf (get dji_osdk_ros::CameraStartShootIntervalPhotoResponse :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 photo_num_conticap # 0:reserve 1~254:number 255:keep capturing till stop
int16 time_interval #/ time interval (second)
---
#response
bool result
")



(provide :dji_osdk_ros/CameraStartShootIntervalPhoto "bb20f8f95cde73a4d8b41d0f5a0bdcdf")


