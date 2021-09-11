;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraZoomCtrl)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraZoomCtrl (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERAZOOMCTRL")
  (make-package "DJI_OSDK_ROS::CAMERAZOOMCTRL"))
(unless (find-package "DJI_OSDK_ROS::CAMERAZOOMCTRLREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERAZOOMCTRLREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERAZOOMCTRLRESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERAZOOMCTRLRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::CameraZoomCtrlRequest
  :super ros::object
  :slots (_start_stop _payload_index _direction _speed ))

(defmethod dji_osdk_ros::CameraZoomCtrlRequest
  (:init
   (&key
    ((:start_stop __start_stop) 0)
    ((:payload_index __payload_index) 0)
    ((:direction __direction) 0)
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _start_stop (round __start_stop))
   (setq _payload_index (round __payload_index))
   (setq _direction (round __direction))
   (setq _speed (round __speed))
   self)
  (:start_stop
   (&optional __start_stop)
   (if __start_stop (setq _start_stop __start_stop)) _start_stop)
  (:payload_index
   (&optional __payload_index)
   (if __payload_index (setq _payload_index __payload_index)) _payload_index)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; uint8 _start_stop
    1
    ;; uint8 _payload_index
    1
    ;; uint8 _direction
    1
    ;; uint8 _speed
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
     ;; uint8 _direction
       (write-byte _direction s)
     ;; uint8 _speed
       (write-byte _speed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _start_stop
     (setq _start_stop (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _payload_index
     (setq _payload_index (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _direction
     (setq _direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _speed
     (setq _speed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraZoomCtrlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraZoomCtrlResponse
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

(defclass dji_osdk_ros::CameraZoomCtrl
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraZoomCtrl :md5sum-) "15c6fe8ef5cfbafd183e87752b1029b1")
(setf (get dji_osdk_ros::CameraZoomCtrl :datatype-) "dji_osdk_ros/CameraZoomCtrl")
(setf (get dji_osdk_ros::CameraZoomCtrl :request) dji_osdk_ros::CameraZoomCtrlRequest)
(setf (get dji_osdk_ros::CameraZoomCtrl :response) dji_osdk_ros::CameraZoomCtrlResponse)

(defmethod dji_osdk_ros::CameraZoomCtrlRequest
  (:response () (instance dji_osdk_ros::CameraZoomCtrlResponse :init)))

(setf (get dji_osdk_ros::CameraZoomCtrlRequest :md5sum-) "15c6fe8ef5cfbafd183e87752b1029b1")
(setf (get dji_osdk_ros::CameraZoomCtrlRequest :datatype-) "dji_osdk_ros/CameraZoomCtrlRequest")
(setf (get dji_osdk_ros::CameraZoomCtrlRequest :definition-)
      "#request
uint8 start_stop
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 direction #see enum class ZoomDirection in common_type.h
uint8 speed #see enum class ZoomSpeed in common_type.h
---
#response
bool result
")

(setf (get dji_osdk_ros::CameraZoomCtrlResponse :md5sum-) "15c6fe8ef5cfbafd183e87752b1029b1")
(setf (get dji_osdk_ros::CameraZoomCtrlResponse :datatype-) "dji_osdk_ros/CameraZoomCtrlResponse")
(setf (get dji_osdk_ros::CameraZoomCtrlResponse :definition-)
      "#request
uint8 start_stop
uint8 payload_index #see enum class PayloadIndex in common_type.h
uint8 direction #see enum class ZoomDirection in common_type.h
uint8 speed #see enum class ZoomSpeed in common_type.h
---
#response
bool result
")



(provide :dji_osdk_ros/CameraZoomCtrl "15c6fe8ef5cfbafd183e87752b1029b1")


