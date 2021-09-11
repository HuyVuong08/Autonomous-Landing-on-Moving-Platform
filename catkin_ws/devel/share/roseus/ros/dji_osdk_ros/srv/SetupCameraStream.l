;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SetupCameraStream)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SetupCameraStream (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SETUPCAMERASTREAM")
  (make-package "DJI_OSDK_ROS::SETUPCAMERASTREAM"))
(unless (find-package "DJI_OSDK_ROS::SETUPCAMERASTREAMREQUEST")
  (make-package "DJI_OSDK_ROS::SETUPCAMERASTREAMREQUEST"))
(unless (find-package "DJI_OSDK_ROS::SETUPCAMERASTREAMRESPONSE")
  (make-package "DJI_OSDK_ROS::SETUPCAMERASTREAMRESPONSE"))

(in-package "ROS")





(intern "*FPV_CAM*" (find-package "DJI_OSDK_ROS::SETUPCAMERASTREAMREQUEST"))
(shadow '*FPV_CAM* (find-package "DJI_OSDK_ROS::SETUPCAMERASTREAMREQUEST"))
(defconstant dji_osdk_ros::SetupCameraStreamRequest::*FPV_CAM* 0)
(intern "*MAIN_CAM*" (find-package "DJI_OSDK_ROS::SETUPCAMERASTREAMREQUEST"))
(shadow '*MAIN_CAM* (find-package "DJI_OSDK_ROS::SETUPCAMERASTREAMREQUEST"))
(defconstant dji_osdk_ros::SetupCameraStreamRequest::*MAIN_CAM* 1)

(defun dji_osdk_ros::SetupCameraStreamRequest-to-symbol (const)
  (cond
        ((= const 0) 'dji_osdk_ros::SetupCameraStreamRequest::*FPV_CAM*)
        ((= const 1) 'dji_osdk_ros::SetupCameraStreamRequest::*MAIN_CAM*)
        (t nil)))

(defclass dji_osdk_ros::SetupCameraStreamRequest
  :super ros::object
  :slots (_cameraType _start ))

(defmethod dji_osdk_ros::SetupCameraStreamRequest
  (:init
   (&key
    ((:cameraType __cameraType) 0)
    ((:start __start) 0)
    )
   (send-super :init)
   (setq _cameraType (round __cameraType))
   (setq _start (round __start))
   self)
  (:cameraType
   (&optional __cameraType)
   (if __cameraType (setq _cameraType __cameraType)) _cameraType)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; uint8 _cameraType
    1
    ;; uint8 _start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cameraType
       (write-byte _cameraType s)
     ;; uint8 _start
       (write-byte _start s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cameraType
     (setq _cameraType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _start
     (setq _start (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::SetupCameraStreamResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::SetupCameraStreamResponse
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

(defclass dji_osdk_ros::SetupCameraStream
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SetupCameraStream :md5sum-) "e0732f307563f64841a2e5c6880f32d3")
(setf (get dji_osdk_ros::SetupCameraStream :datatype-) "dji_osdk_ros/SetupCameraStream")
(setf (get dji_osdk_ros::SetupCameraStream :request) dji_osdk_ros::SetupCameraStreamRequest)
(setf (get dji_osdk_ros::SetupCameraStream :response) dji_osdk_ros::SetupCameraStreamResponse)

(defmethod dji_osdk_ros::SetupCameraStreamRequest
  (:response () (instance dji_osdk_ros::SetupCameraStreamResponse :init)))

(setf (get dji_osdk_ros::SetupCameraStreamRequest :md5sum-) "e0732f307563f64841a2e5c6880f32d3")
(setf (get dji_osdk_ros::SetupCameraStreamRequest :datatype-) "dji_osdk_ros/SetupCameraStreamRequest")
(setf (get dji_osdk_ros::SetupCameraStreamRequest :definition-)
      "#constant for vga image frequency
uint8 FPV_CAM  = 0
uint8 MAIN_CAM = 1

# use above constants to config freq.
uint8 cameraType

# 1 for start camera stream, 0 for stop
uint8 start

---
bool result
")

(setf (get dji_osdk_ros::SetupCameraStreamResponse :md5sum-) "e0732f307563f64841a2e5c6880f32d3")
(setf (get dji_osdk_ros::SetupCameraStreamResponse :datatype-) "dji_osdk_ros/SetupCameraStreamResponse")
(setf (get dji_osdk_ros::SetupCameraStreamResponse :definition-)
      "#constant for vga image frequency
uint8 FPV_CAM  = 0
uint8 MAIN_CAM = 1

# use above constants to config freq.
uint8 cameraType

# 1 for start camera stream, 0 for stop
uint8 start

---
bool result
")



(provide :dji_osdk_ros/SetupCameraStream "e0732f307563f64841a2e5c6880f32d3")


