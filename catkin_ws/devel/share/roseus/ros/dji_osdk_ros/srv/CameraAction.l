;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::CameraAction)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'CameraAction (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::CAMERAACTION")
  (make-package "DJI_OSDK_ROS::CAMERAACTION"))
(unless (find-package "DJI_OSDK_ROS::CAMERAACTIONREQUEST")
  (make-package "DJI_OSDK_ROS::CAMERAACTIONREQUEST"))
(unless (find-package "DJI_OSDK_ROS::CAMERAACTIONRESPONSE")
  (make-package "DJI_OSDK_ROS::CAMERAACTIONRESPONSE"))

(in-package "ROS")





(intern "*CAMERA_ACTION_TAKE_PICTURE*" (find-package "DJI_OSDK_ROS::CAMERAACTIONREQUEST"))
(shadow '*CAMERA_ACTION_TAKE_PICTURE* (find-package "DJI_OSDK_ROS::CAMERAACTIONREQUEST"))
(defconstant dji_osdk_ros::CameraActionRequest::*CAMERA_ACTION_TAKE_PICTURE* 0)
(intern "*CAMERA_ACTION_START_RECORD*" (find-package "DJI_OSDK_ROS::CAMERAACTIONREQUEST"))
(shadow '*CAMERA_ACTION_START_RECORD* (find-package "DJI_OSDK_ROS::CAMERAACTIONREQUEST"))
(defconstant dji_osdk_ros::CameraActionRequest::*CAMERA_ACTION_START_RECORD* 1)
(intern "*CAMERA_ACTION_STOP_RECORD*" (find-package "DJI_OSDK_ROS::CAMERAACTIONREQUEST"))
(shadow '*CAMERA_ACTION_STOP_RECORD* (find-package "DJI_OSDK_ROS::CAMERAACTIONREQUEST"))
(defconstant dji_osdk_ros::CameraActionRequest::*CAMERA_ACTION_STOP_RECORD* 2)

(defun dji_osdk_ros::CameraActionRequest-to-symbol (const)
  (cond
        ((= const 0) 'dji_osdk_ros::CameraActionRequest::*CAMERA_ACTION_TAKE_PICTURE*)
        ((= const 1) 'dji_osdk_ros::CameraActionRequest::*CAMERA_ACTION_START_RECORD*)
        ((= const 2) 'dji_osdk_ros::CameraActionRequest::*CAMERA_ACTION_STOP_RECORD*)
        (t nil)))

(defclass dji_osdk_ros::CameraActionRequest
  :super ros::object
  :slots (_camera_action ))

(defmethod dji_osdk_ros::CameraActionRequest
  (:init
   (&key
    ((:camera_action __camera_action) 0)
    )
   (send-super :init)
   (setq _camera_action (round __camera_action))
   self)
  (:camera_action
   (&optional __camera_action)
   (if __camera_action (setq _camera_action __camera_action)) _camera_action)
  (:serialization-length
   ()
   (+
    ;; uint8 _camera_action
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _camera_action
       (write-byte _camera_action s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _camera_action
     (setq _camera_action (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::CameraActionResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::CameraActionResponse
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

(defclass dji_osdk_ros::CameraAction
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::CameraAction :md5sum-) "cffa80c600cf5ffacb2c7279944f208e")
(setf (get dji_osdk_ros::CameraAction :datatype-) "dji_osdk_ros/CameraAction")
(setf (get dji_osdk_ros::CameraAction :request) dji_osdk_ros::CameraActionRequest)
(setf (get dji_osdk_ros::CameraAction :response) dji_osdk_ros::CameraActionResponse)

(defmethod dji_osdk_ros::CameraActionRequest
  (:response () (instance dji_osdk_ros::CameraActionResponse :init)))

(setf (get dji_osdk_ros::CameraActionRequest :md5sum-) "cffa80c600cf5ffacb2c7279944f208e")
(setf (get dji_osdk_ros::CameraActionRequest :datatype-) "dji_osdk_ros/CameraActionRequest")
(setf (get dji_osdk_ros::CameraActionRequest :definition-)
      "#constant for camera_action
uint8 CAMERA_ACTION_TAKE_PICTURE = 0
uint8 CAMERA_ACTION_START_RECORD = 1
uint8 CAMERA_ACTION_STOP_RECORD  = 2

#request
uint8 camera_action     # see constants above for possible camera_actions
---
bool result

")

(setf (get dji_osdk_ros::CameraActionResponse :md5sum-) "cffa80c600cf5ffacb2c7279944f208e")
(setf (get dji_osdk_ros::CameraActionResponse :datatype-) "dji_osdk_ros/CameraActionResponse")
(setf (get dji_osdk_ros::CameraActionResponse :definition-)
      "#constant for camera_action
uint8 CAMERA_ACTION_TAKE_PICTURE = 0
uint8 CAMERA_ACTION_START_RECORD = 1
uint8 CAMERA_ACTION_STOP_RECORD  = 2

#request
uint8 camera_action     # see constants above for possible camera_actions
---
bool result

")



(provide :dji_osdk_ros/CameraAction "cffa80c600cf5ffacb2c7279944f208e")


