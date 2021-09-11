;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraSetZoomPara)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraSetZoomPara (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERASETZOOMPARA")
  (make-package "DJI_OSDK_ROS::CAMERASETZOOMPARA"))
(unless (find-package "DJI_OSDK_ROS::CAMERASETZOOMPARAREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERASETZOOMPARAREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERASETZOOMPARARESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERASETZOOMPARARESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraSetZoomParaRequest
  :super ros::object
  :slots (_payload_index _factor ))

(defmethod dji_osdk_ros::CameraSetZoomParaRequest
  (:init
   (&key
    ((:payload_index __payload_index) 0)
    ((:factor __factor) 0.0)
    )
   (send-super :init)
   (setq _payload_index (round __payload_index))
   (setq _factor (float __factor))
   self)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:factor
   (&optional __factor)
   (if __factor (setq _factor __factor)) _factor)
  (:serialization-length
   ()
   (+
    ;; uint8 _payload_index
    1
    ;; float32 _factor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _payload_index
       (write-byte _payload_index s)
     ;; float32 _factor
       (sys::poke _factor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _factor
     (setq _factor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraSetZoomParaResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraSetZoomParaResponse
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

(defclass dji_osdk_ros::CameraSetZoomPara
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraSetZoomPara :md5sum-) "6c6cdab10079fad15384840dbc9835bd")
(setf (get dji_osdk_ros::CameraSetZoomPara :datatype-) "dji_osdk_ros/CameraSetZoomPara")
(setf (get dji_osdk_ros::CameraSetZoomPara :request) dji_osdk_ros::CameraSetZoomParaRequest)
(setf (get dji_osdk_ros::CameraSetZoomPara :response) dji_osdk_ros::CameraSetZoomParaResponse)

(defmethod dji_osdk_ros::CameraSetZoomParaRequest
  (:response () (instance dji_osdk_ros::CameraSetZoomParaResponse :init)))

(setf (get dji_osdk_ros::CameraSetZoomParaRequest :md5sum-) "6c6cdab10079fad15384840dbc9835bd")
(setf (get dji_osdk_ros::CameraSetZoomParaRequest :datatype-) "dji_osdk_ros/CameraSetZoomParaRequest")
(setf (get dji_osdk_ros::CameraSetZoomParaRequest :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
float32 factor
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraSetZoomParaResponse :md5sum-) "6c6cdab10079fad15384840dbc9835bd")
(setf (get dji_osdk_ros::CameraSetZoomParaResponse :datatype-) "dji_osdk_ros/CameraSetZoomParaResponse")
(setf (get dji_osdk_ros::CameraSetZoomParaResponse :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
float32 factor
---
#response
bool result
")



(provide :dji_osdk_ros/CameraSetZoomPara "6c6cdab10079fad15384840dbc9835bd")


