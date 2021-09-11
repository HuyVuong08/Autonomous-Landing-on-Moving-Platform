;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraFocusPoint)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraFocusPoint (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERAFOCUSPOINT")
  (make-package "DJI_OSDK_ROS::CAMERAFOCUSPOINT"))
(unless (find-package "DJI_OSDK_ROS::CAMERAFOCUSPOINTREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERAFOCUSPOINTREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERAFOCUSPOINTRESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERAFOCUSPOINTRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraFocusPointRequest
  :super ros::object
  :slots (_payload_index _x _y ))

(defmethod dji_osdk_ros::CameraFocusPointRequest
  (:init
   (&key
    ((:payload_index __payload_index) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _payload_index (round __payload_index))
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; uint8 _payload_index
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _payload_index
       (write-byte _payload_index s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraFocusPointResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraFocusPointResponse
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

(defclass dji_osdk_ros::CameraFocusPoint
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraFocusPoint :md5sum-) "fb46a63ba2252cb3f94729a7bc8a8c55")
(setf (get dji_osdk_ros::CameraFocusPoint :datatype-) "dji_osdk_ros/CameraFocusPoint")
(setf (get dji_osdk_ros::CameraFocusPoint :request) dji_osdk_ros::CameraFocusPointRequest)
(setf (get dji_osdk_ros::CameraFocusPoint :response) dji_osdk_ros::CameraFocusPointResponse)

(defmethod dji_osdk_ros::CameraFocusPointRequest
  (:response () (instance dji_osdk_ros::CameraFocusPointResponse :init)))

(setf (get dji_osdk_ros::CameraFocusPointRequest :md5sum-) "fb46a63ba2252cb3f94729a7bc8a8c55")
(setf (get dji_osdk_ros::CameraFocusPointRequest :datatype-) "dji_osdk_ros/CameraFocusPointRequest")
(setf (get dji_osdk_ros::CameraFocusPointRequest :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
float32 x #range from 0~1, top left corner is origin point
float32 y #range from 0~1, top left corner is origin point
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraFocusPointResponse :md5sum-) "fb46a63ba2252cb3f94729a7bc8a8c55")
(setf (get dji_osdk_ros::CameraFocusPointResponse :datatype-) "dji_osdk_ros/CameraFocusPointResponse")
(setf (get dji_osdk_ros::CameraFocusPointResponse :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
float32 x #range from 0~1, top left corner is origin point
float32 y #range from 0~1, top left corner is origin point
---
#response
bool result
")



(provide :dji_osdk_ros/CameraFocusPoint "fb46a63ba2252cb3f94729a7bc8a8c55")


