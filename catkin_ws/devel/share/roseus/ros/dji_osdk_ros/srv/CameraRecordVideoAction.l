;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraRecordVideoAction)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraRecordVideoAction (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERARECORDVIDEOACTION")
  (make-package "DJI_OSDK_ROS::CAMERARECORDVIDEOACTION"))
(unless (find-package "DJI_OSDK_ROS::CAMERARECORDVIDEOACTIONREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERARECORDVIDEOACTIONREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERARECORDVIDEOACTIONRESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERARECORDVIDEOACTIONRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraRecordVideoActionRequest
  :super ros::object
  :slots (_start_stop _payload_index ))

(defmethod dji_osdk_ros::CameraRecordVideoActionRequest
  (:init
   (&key
    ((:start_stop __start_stop) 0)
    ((:payload_index __payload_index) 0)
    )
   (send-super :init)
   (setq _start_stop (round __start_stop))
   (setq _payload_index (round __payload_index))
   self)
  (:start_stop
   (&optional __start_stop)
   (if __start_stop (setq _start_stop __start_stop)) _start_stop)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:serialization-length
   ()
   (+
    ;; uint8 _start_stop
    1
    ;; uint8 _payload_index
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _start_stop
       (write-byte _start_stop s)
     ;; uint8 _payload_index
       (write-byte _payload_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _start_stop
     (setq _start_stop (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraRecordVideoActionResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraRecordVideoActionResponse
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

(defclass dji_osdk_ros::CameraRecordVideoAction
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraRecordVideoAction :md5sum-) "3e73f84c6b55e276ab42b0e25e1ff3c1")
(setf (get dji_osdk_ros::CameraRecordVideoAction :datatype-) "dji_osdk_ros/CameraRecordVideoAction")
(setf (get dji_osdk_ros::CameraRecordVideoAction :request) dji_osdk_ros::CameraRecordVideoActionRequest)
(setf (get dji_osdk_ros::CameraRecordVideoAction :response) dji_osdk_ros::CameraRecordVideoActionResponse)

(defmethod dji_osdk_ros::CameraRecordVideoActionRequest
  (:response () (instance dji_osdk_ros::CameraRecordVideoActionResponse :init)))

(setf (get dji_osdk_ros::CameraRecordVideoActionRequest :md5sum-) "3e73f84c6b55e276ab42b0e25e1ff3c1")
(setf (get dji_osdk_ros::CameraRecordVideoActionRequest :datatype-) "dji_osdk_ros/CameraRecordVideoActionRequest")
(setf (get dji_osdk_ros::CameraRecordVideoActionRequest :definition-)
      "#request
uint8 start_stop
uint8 payload_index #see enum class PayloadIndex in common_type.h
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraRecordVideoActionResponse :md5sum-) "3e73f84c6b55e276ab42b0e25e1ff3c1")
(setf (get dji_osdk_ros::CameraRecordVideoActionResponse :datatype-) "dji_osdk_ros/CameraRecordVideoActionResponse")
(setf (get dji_osdk_ros::CameraRecordVideoActionResponse :definition-)
      "#request
uint8 start_stop
uint8 payload_index #see enum class PayloadIndex in common_type.h
---
#response
bool result
")



(provide :dji_osdk_ros/CameraRecordVideoAction "3e73f84c6b55e276ab42b0e25e1ff3c1")


