;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::JoystickAction)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'JoystickAction (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::JOYSTICKACTION")
  (make-package "DJI_OSDK_ROS::JOYSTICKACTION"))
(unless (find-package "DJI_OSDK_ROS::JOYSTICKACTIONREQUEST")
  (make-package "DJI_OSDK_ROS::JOYSTICKACTIONREQUEST"))
(unless (find-package "DJI_OSDK_ROS::JOYSTICKACTIONRESPONSE")
  (make-package "DJI_OSDK_ROS::JOYSTICKACTIONRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::JoystickActionRequest
  :super ros::object
  :slots (_joystickCommand ))

(defmethod dji_osdk_ros::JoystickActionRequest
  (:init
   (&key
    ((:joystickCommand __joystickCommand) (instance dji_osdk_ros::JoystickParams :init))
    )
   (send-super :init)
   (setq _joystickCommand __joystickCommand)
   self)
  (:joystickCommand
   (&rest __joystickCommand)
   (if (keywordp (car __joystickCommand))
       (send* _joystickCommand __joystickCommand)
     (progn
       (if __joystickCommand (setq _joystickCommand (car __joystickCommand)))
       _joystickCommand)))
  (:serialization-length
   ()
   (+
    ;; dji_osdk_ros/JoystickParams _joystickCommand
    (send _joystickCommand :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_osdk_ros/JoystickParams _joystickCommand
       (send _joystickCommand :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_osdk_ros/JoystickParams _joystickCommand
     (send _joystickCommand :deserialize buf ptr-) (incf ptr- (send _joystickCommand :serialization-length))
   ;;
   self)
  )

(defclass dji_osdk_ros::JoystickActionResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::JoystickActionResponse
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

(defclass dji_osdk_ros::JoystickAction
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::JoystickAction :md5sum-) "9edeea71222489b7e9f0a37b50217781")
(setf (get dji_osdk_ros::JoystickAction :datatype-) "dji_osdk_ros/JoystickAction")
(setf (get dji_osdk_ros::JoystickAction :request) dji_osdk_ros::JoystickActionRequest)
(setf (get dji_osdk_ros::JoystickAction :response) dji_osdk_ros::JoystickActionResponse)

(defmethod dji_osdk_ros::JoystickActionRequest
  (:response () (instance dji_osdk_ros::JoystickActionResponse :init)))

(setf (get dji_osdk_ros::JoystickActionRequest :md5sum-) "9edeea71222489b7e9f0a37b50217781")
(setf (get dji_osdk_ros::JoystickActionRequest :datatype-) "dji_osdk_ros/JoystickActionRequest")
(setf (get dji_osdk_ros::JoystickActionRequest :definition-)
      "#request
JoystickParams joystickCommand

================================================================================
MSG: dji_osdk_ros/JoystickParams
float32 x   # Control with respect to the x axis of the
            # DJI::OSDK::Control::HorizontalCoordinate.
float32 y   # Control with respect to the y axis of the
            # DJI::OSDK::Control::HorizontalCoordinate.
float32 z   # Control with respect to the z axis, up is positive.
---
#response
bool result
")

(setf (get dji_osdk_ros::JoystickActionResponse :md5sum-) "9edeea71222489b7e9f0a37b50217781")
(setf (get dji_osdk_ros::JoystickActionResponse :datatype-) "dji_osdk_ros/JoystickActionResponse")
(setf (get dji_osdk_ros::JoystickActionResponse :definition-)
      "#request
JoystickParams joystickCommand

================================================================================
MSG: dji_osdk_ros/JoystickParams
float32 x   # Control with respect to the x axis of the
            # DJI::OSDK::Control::HorizontalCoordinate.
float32 y   # Control with respect to the y axis of the
            # DJI::OSDK::Control::HorizontalCoordinate.
float32 z   # Control with respect to the z axis, up is positive.
---
#response
bool result
")



(provide :dji_osdk_ros/JoystickAction "9edeea71222489b7e9f0a37b50217781")


