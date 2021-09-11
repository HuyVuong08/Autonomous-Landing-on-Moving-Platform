;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::GetDroneType)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'GetDroneType (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::GETDRONETYPE")
  (make-package "DJI_OSDK_ROS::GETDRONETYPE"))
(unless (find-package "DJI_OSDK_ROS::GETDRONETYPEREQUEST")
  (make-package "DJI_OSDK_ROS::GETDRONETYPEREQUEST"))
(unless (find-package "DJI_OSDK_ROS::GETDRONETYPERESPONSE")
  (make-package "DJI_OSDK_ROS::GETDRONETYPERESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::GetDroneTypeRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::GetDroneTypeRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dji_osdk_ros::GetDroneTypeResponse
  :super ros::object
  :slots (_drone_type ))

(defmethod dji_osdk_ros::GetDroneTypeResponse
  (:init
   (&key
    ((:drone_type __drone_type) 0)
    )
   (send-super :init)
   (setq _drone_type (round __drone_type))
   self)
  (:drone_type
   (&optional __drone_type)
   (if __drone_type (setq _drone_type __drone_type)) _drone_type)
  (:serialization-length
   ()
   (+
    ;; uint8 _drone_type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _drone_type
       (write-byte _drone_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _drone_type
     (setq _drone_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::GetDroneType
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::GetDroneType :md5sum-) "87cc5c5bc9c0355af48cf3dac961c235")
(setf (get dji_osdk_ros::GetDroneType :datatype-) "dji_osdk_ros/GetDroneType")
(setf (get dji_osdk_ros::GetDroneType :request) dji_osdk_ros::GetDroneTypeRequest)
(setf (get dji_osdk_ros::GetDroneType :response) dji_osdk_ros::GetDroneTypeResponse)

(defmethod dji_osdk_ros::GetDroneTypeRequest
  (:response () (instance dji_osdk_ros::GetDroneTypeResponse :init)))

(setf (get dji_osdk_ros::GetDroneTypeRequest :md5sum-) "87cc5c5bc9c0355af48cf3dac961c235")
(setf (get dji_osdk_ros::GetDroneTypeRequest :datatype-) "dji_osdk_ros/GetDroneTypeRequest")
(setf (get dji_osdk_ros::GetDroneTypeRequest :definition-)
      "#request
---
#response
uint8 drone_type
")

(setf (get dji_osdk_ros::GetDroneTypeResponse :md5sum-) "87cc5c5bc9c0355af48cf3dac961c235")
(setf (get dji_osdk_ros::GetDroneTypeResponse :datatype-) "dji_osdk_ros/GetDroneTypeResponse")
(setf (get dji_osdk_ros::GetDroneTypeResponse :definition-)
      "#request
---
#response
uint8 drone_type
")



(provide :dji_osdk_ros/GetDroneType "87cc5c5bc9c0355af48cf3dac961c235")


