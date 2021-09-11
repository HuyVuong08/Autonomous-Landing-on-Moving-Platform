;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SetupCameraH264)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SetupCameraH264 (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SETUPCAMERAH264")
  (make-package "DJI_OSDK_ROS::SETUPCAMERAH264"))
(unless (find-package "DJI_OSDK_ROS::SETUPCAMERAH264REQUEST")
  (make-package "DJI_OSDK_ROS::SETUPCAMERAH264REQUEST"))
(unless (find-package "DJI_OSDK_ROS::SETUPCAMERAH264RESPONSE")
  (make-package "DJI_OSDK_ROS::SETUPCAMERAH264RESPONSE"))

(in-package "ROS")





(intern "*FPV_CAMERA*" (find-package "DJI_OSDK_ROS::SETUPCAMERAH264REQUEST"))
(shadow '*FPV_CAMERA* (find-package "DJI_OSDK_ROS::SETUPCAMERAH264REQUEST"))
(defconstant dji_osdk_ros::SetupCameraH264Request::*FPV_CAMERA* 7)
(intern "*MAIN_CAMERA*" (find-package "DJI_OSDK_ROS::SETUPCAMERAH264REQUEST"))
(shadow '*MAIN_CAMERA* (find-package "DJI_OSDK_ROS::SETUPCAMERAH264REQUEST"))
(defconstant dji_osdk_ros::SetupCameraH264Request::*MAIN_CAMERA* 0)
(intern "*VICE_CAMERA*" (find-package "DJI_OSDK_ROS::SETUPCAMERAH264REQUEST"))
(shadow '*VICE_CAMERA* (find-package "DJI_OSDK_ROS::SETUPCAMERAH264REQUEST"))
(defconstant dji_osdk_ros::SetupCameraH264Request::*VICE_CAMERA* 1)
(intern "*TOP_CAMERA*" (find-package "DJI_OSDK_ROS::SETUPCAMERAH264REQUEST"))
(shadow '*TOP_CAMERA* (find-package "DJI_OSDK_ROS::SETUPCAMERAH264REQUEST"))
(defconstant dji_osdk_ros::SetupCameraH264Request::*TOP_CAMERA* 2)

(defun dji_osdk_ros::SetupCameraH264Request-to-symbol (const)
  (cond
        ((= const 7) 'dji_osdk_ros::SetupCameraH264Request::*FPV_CAMERA*)
        ((= const 0) 'dji_osdk_ros::SetupCameraH264Request::*MAIN_CAMERA*)
        ((= const 1) 'dji_osdk_ros::SetupCameraH264Request::*VICE_CAMERA*)
        ((= const 2) 'dji_osdk_ros::SetupCameraH264Request::*TOP_CAMERA*)
        (t nil)))

(defclass dji_osdk_ros::SetupCameraH264Request
  :super ros::object
  :slots (_request_view _start ))

(defmethod dji_osdk_ros::SetupCameraH264Request
  (:init
   (&key
    ((:request_view __request_view) 0)
    ((:start __start) 0)
    )
   (send-super :init)
   (setq _request_view (round __request_view))
   (setq _start (round __start))
   self)
  (:request_view
   (&optional __request_view)
   (if __request_view (setq _request_view __request_view)) _request_view)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:serialization-length
   ()
   (+
    ;; uint8 _request_view
    1
    ;; uint8 _start
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _request_view
       (write-byte _request_view s)
     ;; uint8 _start
       (write-byte _start s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _request_view
     (setq _request_view (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _start
     (setq _start (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::SetupCameraH264Response
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::SetupCameraH264Response
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

(defclass dji_osdk_ros::SetupCameraH264
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SetupCameraH264 :md5sum-) "08053824d6e6943daabf1c4c8936b823")
(setf (get dji_osdk_ros::SetupCameraH264 :datatype-) "dji_osdk_ros/SetupCameraH264")
(setf (get dji_osdk_ros::SetupCameraH264 :request) dji_osdk_ros::SetupCameraH264Request)
(setf (get dji_osdk_ros::SetupCameraH264 :response) dji_osdk_ros::SetupCameraH264Response)

(defmethod dji_osdk_ros::SetupCameraH264Request
  (:response () (instance dji_osdk_ros::SetupCameraH264Response :init)))

(setf (get dji_osdk_ros::SetupCameraH264Request :md5sum-) "08053824d6e6943daabf1c4c8936b823")
(setf (get dji_osdk_ros::SetupCameraH264Request :datatype-) "dji_osdk_ros/SetupCameraH264Request")
(setf (get dji_osdk_ros::SetupCameraH264Request :definition-)
      "#constant for vga image frequency
uint8 FPV_CAMERA  = 7
uint8 MAIN_CAMERA = 0
uint8 VICE_CAMERA = 1
uint8 TOP_CAMERA  = 2

# use above constants to config freq.
uint8 request_view

# 1 for start camera stream, 0 for stop
uint8 start

---
bool result
")

(setf (get dji_osdk_ros::SetupCameraH264Response :md5sum-) "08053824d6e6943daabf1c4c8936b823")
(setf (get dji_osdk_ros::SetupCameraH264Response :datatype-) "dji_osdk_ros/SetupCameraH264Response")
(setf (get dji_osdk_ros::SetupCameraH264Response :definition-)
      "#constant for vga image frequency
uint8 FPV_CAMERA  = 7
uint8 MAIN_CAMERA = 0
uint8 VICE_CAMERA = 1
uint8 TOP_CAMERA  = 2

# use above constants to config freq.
uint8 request_view

# 1 for start camera stream, 0 for stop
uint8 start

---
bool result
")



(provide :dji_osdk_ros/SetupCameraH264 "08053824d6e6943daabf1c4c8936b823")


