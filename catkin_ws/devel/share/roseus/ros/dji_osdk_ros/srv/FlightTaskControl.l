;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::FlightTaskControl)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'FlightTaskControl (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROL")
  (make-package "DJI_OSDK_ROS::FLIGHTTASKCONTROL"))
(unless (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST")
  (make-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(unless (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLRESPONSE")
  (make-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLRESPONSE"))

(in-package "ROS")





(intern "*TASK_GOHOME*" (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(shadow '*TASK_GOHOME* (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::FlightTaskControlRequest::*TASK_GOHOME* 1)
(intern "*TASK_POSITION_AND_YAW_CONTROL*" (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(shadow '*TASK_POSITION_AND_YAW_CONTROL* (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::FlightTaskControlRequest::*TASK_POSITION_AND_YAW_CONTROL* 2)
(intern "*TASK_GOHOME_AND_CONFIRM_LANDING*" (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(shadow '*TASK_GOHOME_AND_CONFIRM_LANDING* (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::FlightTaskControlRequest::*TASK_GOHOME_AND_CONFIRM_LANDING* 3)
(intern "*TASK_TAKEOFF*" (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(shadow '*TASK_TAKEOFF* (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::FlightTaskControlRequest::*TASK_TAKEOFF* 4)
(intern "*TASK_VELOCITY_AND_YAWRATE_CONTROL*" (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(shadow '*TASK_VELOCITY_AND_YAWRATE_CONTROL* (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::FlightTaskControlRequest::*TASK_VELOCITY_AND_YAWRATE_CONTROL* 5)
(intern "*TASK_LAND*" (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(shadow '*TASK_LAND* (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::FlightTaskControlRequest::*TASK_LAND* 6)
(intern "*START_MOTOR*" (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(shadow '*START_MOTOR* (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::FlightTaskControlRequest::*START_MOTOR* 7)
(intern "*STOP_MOTOR*" (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(shadow '*STOP_MOTOR* (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::FlightTaskControlRequest::*STOP_MOTOR* 8)
(intern "*TASK_EXIT_GO_HOME*" (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(shadow '*TASK_EXIT_GO_HOME* (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::FlightTaskControlRequest::*TASK_EXIT_GO_HOME* 12)
(intern "*TASK_EXIT_LANDING*" (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(shadow '*TASK_EXIT_LANDING* (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::FlightTaskControlRequest::*TASK_EXIT_LANDING* 14)
(intern "*TASK_FORCE_LANDING_AVOID_GROUND*" (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(shadow '*TASK_FORCE_LANDING_AVOID_GROUND* (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::FlightTaskControlRequest::*TASK_FORCE_LANDING_AVOID_GROUND* 30)
(intern "*TASK_FORCE_LANDING*" (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(shadow '*TASK_FORCE_LANDING* (find-package "DJI_OSDK_ROS::FLIGHTTASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::FlightTaskControlRequest::*TASK_FORCE_LANDING* 31)

(defun dji_osdk_ros::FlightTaskControlRequest-to-symbol (const)
  (cond
        ((= const 1) 'dji_osdk_ros::FlightTaskControlRequest::*TASK_GOHOME*)
        ((= const 2) 'dji_osdk_ros::FlightTaskControlRequest::*TASK_POSITION_AND_YAW_CONTROL*)
        ((= const 3) 'dji_osdk_ros::FlightTaskControlRequest::*TASK_GOHOME_AND_CONFIRM_LANDING*)
        ((= const 4) 'dji_osdk_ros::FlightTaskControlRequest::*TASK_TAKEOFF*)
        ((= const 5) 'dji_osdk_ros::FlightTaskControlRequest::*TASK_VELOCITY_AND_YAWRATE_CONTROL*)
        ((= const 6) 'dji_osdk_ros::FlightTaskControlRequest::*TASK_LAND*)
        ((= const 7) 'dji_osdk_ros::FlightTaskControlRequest::*START_MOTOR*)
        ((= const 8) 'dji_osdk_ros::FlightTaskControlRequest::*STOP_MOTOR*)
        ((= const 12) 'dji_osdk_ros::FlightTaskControlRequest::*TASK_EXIT_GO_HOME*)
        ((= const 14) 'dji_osdk_ros::FlightTaskControlRequest::*TASK_EXIT_LANDING*)
        ((= const 30) 'dji_osdk_ros::FlightTaskControlRequest::*TASK_FORCE_LANDING_AVOID_GROUND*)
        ((= const 31) 'dji_osdk_ros::FlightTaskControlRequest::*TASK_FORCE_LANDING*)
        (t nil)))

(defclass dji_osdk_ros::FlightTaskControlRequest
  :super ros::object
  :slots (_task _joystickCommand _velocityControlTimeMs _posThresholdInM _yawThresholdInDeg ))

(defmethod dji_osdk_ros::FlightTaskControlRequest
  (:init
   (&key
    ((:task __task) 0)
    ((:joystickCommand __joystickCommand) (instance dji_osdk_ros::JoystickParams :init))
    ((:velocityControlTimeMs __velocityControlTimeMs) 0)
    ((:posThresholdInM __posThresholdInM) 0.0)
    ((:yawThresholdInDeg __yawThresholdInDeg) 0.0)
    )
   (send-super :init)
   (setq _task (round __task))
   (setq _joystickCommand __joystickCommand)
   (setq _velocityControlTimeMs (round __velocityControlTimeMs))
   (setq _posThresholdInM (float __posThresholdInM))
   (setq _yawThresholdInDeg (float __yawThresholdInDeg))
   self)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:joystickCommand
   (&rest __joystickCommand)
   (if (keywordp (car __joystickCommand))
       (send* _joystickCommand __joystickCommand)
     (progn
       (if __joystickCommand (setq _joystickCommand (car __joystickCommand)))
       _joystickCommand)))
  (:velocityControlTimeMs
   (&optional __velocityControlTimeMs)
   (if __velocityControlTimeMs (setq _velocityControlTimeMs __velocityControlTimeMs)) _velocityControlTimeMs)
  (:posThresholdInM
   (&optional __posThresholdInM)
   (if __posThresholdInM (setq _posThresholdInM __posThresholdInM)) _posThresholdInM)
  (:yawThresholdInDeg
   (&optional __yawThresholdInDeg)
   (if __yawThresholdInDeg (setq _yawThresholdInDeg __yawThresholdInDeg)) _yawThresholdInDeg)
  (:serialization-length
   ()
   (+
    ;; uint8 _task
    1
    ;; dji_osdk_ros/JoystickParams _joystickCommand
    (send _joystickCommand :serialization-length)
    ;; uint32 _velocityControlTimeMs
    4
    ;; float32 _posThresholdInM
    4
    ;; float32 _yawThresholdInDeg
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _task
       (write-byte _task s)
     ;; dji_osdk_ros/JoystickParams _joystickCommand
       (send _joystickCommand :serialize s)
     ;; uint32 _velocityControlTimeMs
       (write-long _velocityControlTimeMs s)
     ;; float32 _posThresholdInM
       (sys::poke _posThresholdInM (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yawThresholdInDeg
       (sys::poke _yawThresholdInDeg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _task
     (setq _task (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dji_osdk_ros/JoystickParams _joystickCommand
     (send _joystickCommand :deserialize buf ptr-) (incf ptr- (send _joystickCommand :serialization-length))
   ;; uint32 _velocityControlTimeMs
     (setq _velocityControlTimeMs (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _posThresholdInM
     (setq _posThresholdInM (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yawThresholdInDeg
     (setq _yawThresholdInDeg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_osdk_ros::FlightTaskControlResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::FlightTaskControlResponse
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

(defclass dji_osdk_ros::FlightTaskControl
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::FlightTaskControl :md5sum-) "6c2d7ee9a1feaa8383a6f0a485b64e2a")
(setf (get dji_osdk_ros::FlightTaskControl :datatype-) "dji_osdk_ros/FlightTaskControl")
(setf (get dji_osdk_ros::FlightTaskControl :request) dji_osdk_ros::FlightTaskControlRequest)
(setf (get dji_osdk_ros::FlightTaskControl :response) dji_osdk_ros::FlightTaskControlResponse)

(defmethod dji_osdk_ros::FlightTaskControlRequest
  (:response () (instance dji_osdk_ros::FlightTaskControlResponse :init)))

(setf (get dji_osdk_ros::FlightTaskControlRequest :md5sum-) "6c2d7ee9a1feaa8383a6f0a485b64e2a")
(setf (get dji_osdk_ros::FlightTaskControlRequest :datatype-) "dji_osdk_ros/FlightTaskControlRequest")
(setf (get dji_osdk_ros::FlightTaskControlRequest :definition-)
      "#constant for tasks
uint8 TASK_GOHOME = 1
uint8 TASK_POSITION_AND_YAW_CONTROL   = 2
uint8 TASK_GOHOME_AND_CONFIRM_LANDING = 3
uint8 TASK_TAKEOFF = 4
uint8 TASK_VELOCITY_AND_YAWRATE_CONTROL = 5
uint8 TASK_LAND          = 6
uint8 START_MOTOR        = 7
uint8 STOP_MOTOR         = 8
uint8 TASK_EXIT_GO_HOME  = 12
uint8 TASK_EXIT_LANDING  = 14
uint8 TASK_FORCE_LANDING_AVOID_GROUND = 30 #/*!< confirm landing */
uint8 TASK_FORCE_LANDING              = 31 #/*!< force landing */

#request
uint8 task    # see constants above for possible tasks
JoystickParams joystickCommand  #Provide Position and Velocity control
uint32 velocityControlTimeMs    #Velocity control time
float32 posThresholdInM  #(Meter)
float32 yawThresholdInDeg  #(Degree)

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

(setf (get dji_osdk_ros::FlightTaskControlResponse :md5sum-) "6c2d7ee9a1feaa8383a6f0a485b64e2a")
(setf (get dji_osdk_ros::FlightTaskControlResponse :datatype-) "dji_osdk_ros/FlightTaskControlResponse")
(setf (get dji_osdk_ros::FlightTaskControlResponse :definition-)
      "#constant for tasks
uint8 TASK_GOHOME = 1
uint8 TASK_POSITION_AND_YAW_CONTROL   = 2
uint8 TASK_GOHOME_AND_CONFIRM_LANDING = 3
uint8 TASK_TAKEOFF = 4
uint8 TASK_VELOCITY_AND_YAWRATE_CONTROL = 5
uint8 TASK_LAND          = 6
uint8 START_MOTOR        = 7
uint8 STOP_MOTOR         = 8
uint8 TASK_EXIT_GO_HOME  = 12
uint8 TASK_EXIT_LANDING  = 14
uint8 TASK_FORCE_LANDING_AVOID_GROUND = 30 #/*!< confirm landing */
uint8 TASK_FORCE_LANDING              = 31 #/*!< force landing */

#request
uint8 task    # see constants above for possible tasks
JoystickParams joystickCommand  #Provide Position and Velocity control
uint32 velocityControlTimeMs    #Velocity control time
float32 posThresholdInM  #(Meter)
float32 yawThresholdInDeg  #(Degree)

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



(provide :dji_osdk_ros/FlightTaskControl "6c2d7ee9a1feaa8383a6f0a485b64e2a")


