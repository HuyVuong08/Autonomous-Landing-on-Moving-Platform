;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraTapZoomPoint)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraTapZoomPoint (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERATAPZOOMPOINT")
  (make-package "DJI_OSDK_ROS::CAMERATAPZOOMPOINT"))
(unless (find-package "DJI_OSDK_ROS::CAMERATAPZOOMPOINTREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERATAPZOOMPOINTREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERATAPZOOMPOINTRESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERATAPZOOMPOINTRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraTapZoomPointRequest
  :super ros::object
  :slots (_payload_index _multiplier _x _y ))

(defmethod dji_osdk_ros::CameraTapZoomPointRequest
  (:init
   (&key
    ((:payload_index __payload_index) 0)
    ((:multiplier __multiplier) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _payload_index (round __payload_index))
   (setq _multiplier (round __multiplier))
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:multiplier
   (&optional __multiplier)
   (if __multiplier (setq _multiplier __multiplier)) _multiplier)
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
    ;; uint8 _multiplier
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
     ;; uint8 _multiplier
       (write-byte _multiplier s)
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
   ;; uint8 _multiplier
     (setq _multiplier (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraTapZoomPointResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraTapZoomPointResponse
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

(defclass dji_osdk_ros::CameraTapZoomPoint
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraTapZoomPoint :md5sum-) "33200383ac53d55f08577c7641a6b09c")
(setf (get dji_osdk_ros::CameraTapZoomPoint :datatype-) "dji_osdk_ros/CameraTapZoomPoint")
(setf (get dji_osdk_ros::CameraTapZoomPoint :request) dji_osdk_ros::CameraTapZoomPointRequest)
(setf (get dji_osdk_ros::CameraTapZoomPoint :response) dji_osdk_ros::CameraTapZoomPointResponse)

(defmethod dji_osdk_ros::CameraTapZoomPointRequest
  (:response () (instance dji_osdk_ros::CameraTapZoomPointResponse :init)))

(setf (get dji_osdk_ros::CameraTapZoomPointRequest :md5sum-) "33200383ac53d55f08577c7641a6b09c")
(setf (get dji_osdk_ros::CameraTapZoomPointRequest :datatype-) "dji_osdk_ros/CameraTapZoomPointRequest")
(setf (get dji_osdk_ros::CameraTapZoomPointRequest :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 multiplier #Data struct of tap zoom multiplier used by user. Limit: 1~5
float32 x  # range from 0~1, top left corner is origin point
float32 y  # range from 0~1, top left corner is origin point
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraTapZoomPointResponse :md5sum-) "33200383ac53d55f08577c7641a6b09c")
(setf (get dji_osdk_ros::CameraTapZoomPointResponse :datatype-) "dji_osdk_ros/CameraTapZoomPointResponse")
(setf (get dji_osdk_ros::CameraTapZoomPointResponse :definition-)
      "#request
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 multiplier #Data struct of tap zoom multiplier used by user. Limit: 1~5
float32 x  # range from 0~1, top left corner is origin point
float32 y  # range from 0~1, top left corner is origin point
---
#response
bool result
")



(provide :dji_osdk_ros/CameraTapZoomPoint "33200383ac53d55f08577c7641a6b09c")


