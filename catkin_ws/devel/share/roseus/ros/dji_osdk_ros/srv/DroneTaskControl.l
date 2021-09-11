;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::DroneTaskControl)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'DroneTaskControl (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::DRONETASKCONTROL")
  (make-package "DJI_OSDK_ROS::DRONETASKCONTROL"))
(unless (find-package "DJI_OSDK_ROS::DRONETASKCONTROLREQUEST")
  (make-package "DJI_OSDK_ROS::DRONETASKCONTROLREQUEST"))
(unless (find-package "DJI_OSDK_ROS::DRONETASKCONTROLRESPONSE")
  (make-package "DJI_OSDK_ROS::DRONETASKCONTROLRESPONSE"))

(in-package "ROS")





(intern "*TASK_GOHOME*" (find-package "DJI_OSDK_ROS::DRONETASKCONTROLREQUEST"))
(shadow '*TASK_GOHOME* (find-package "DJI_OSDK_ROS::DRONETASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::DroneTaskControlRequest::*TASK_GOHOME* 1)
(intern "*TASK_TAKEOFF*" (find-package "DJI_OSDK_ROS::DRONETASKCONTROLREQUEST"))
(shadow '*TASK_TAKEOFF* (find-package "DJI_OSDK_ROS::DRONETASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::DroneTaskControlRequest::*TASK_TAKEOFF* 4)
(intern "*TASK_LAND*" (find-package "DJI_OSDK_ROS::DRONETASKCONTROLREQUEST"))
(shadow '*TASK_LAND* (find-package "DJI_OSDK_ROS::DRONETASKCONTROLREQUEST"))
(defconstant dji_osdk_ros::DroneTaskControlRequest::*TASK_LAND* 6)

(defun dji_osdk_ros::DroneTaskControlRequest-to-symbol (const)
  (cond
        ((= const 1) 'dji_osdk_ros::DroneTaskControlRequest::*TASK_GOHOME*)
        ((= const 4) 'dji_osdk_ros::DroneTaskControlRequest::*TASK_TAKEOFF*)
        ((= const 6) 'dji_osdk_ros::DroneTaskControlRequest::*TASK_LAND*)
        (t nil)))

(defclass dji_osdk_ros::DroneTaskControlRequest
  :super ros::object
  :slots (_task ))

(defmethod dji_osdk_ros::DroneTaskControlRequest
  (:init
   (&key
    ((:task __task) 0)
    )
   (send-super :init)
   (setq _task (round __task))
   self)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:serialization-length
   ()
   (+
    ;; uint8 _task
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _task
       (write-byte _task s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _task
     (setq _task (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::DroneTaskControlResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_osdk_ros::DroneTaskControlResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:cmd_set __cmd_set) 0)
    ((:cmd_id __cmd_id) 0)
    ((:ack_data __ack_data) 0)
    )
   (send-super :init)
   (setq _result __result)
   (setq _cmd_set (round __cmd_set))
   (setq _cmd_id (round __cmd_id))
   (setq _ack_data (round __ack_data))
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:cmd_set
   (&optional __cmd_set)
   (if __cmd_set (setq _cmd_set __cmd_set)) _cmd_set)
  (:cmd_id
   (&optional __cmd_id)
   (if __cmd_id (setq _cmd_id __cmd_id)) _cmd_id)
  (:ack_data
   (&optional __ack_data)
   (if __ack_data (setq _ack_data __ack_data)) _ack_data)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; uint8 _cmd_set
    1
    ;; uint8 _cmd_id
    1
    ;; uint32 _ack_data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _cmd_set
       (write-byte _cmd_set s)
     ;; uint8 _cmd_id
       (write-byte _cmd_id s)
     ;; uint32 _ack_data
       (write-long _ack_data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _cmd_set
     (setq _cmd_set (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd_id
     (setq _cmd_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _ack_data
     (setq _ack_data (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_osdk_ros::DroneTaskControl
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::DroneTaskControl :md5sum-) "ab91c4042653ca6868c5907bf22e4741")
(setf (get dji_osdk_ros::DroneTaskControl :datatype-) "dji_osdk_ros/DroneTaskControl")
(setf (get dji_osdk_ros::DroneTaskControl :request) dji_osdk_ros::DroneTaskControlRequest)
(setf (get dji_osdk_ros::DroneTaskControl :response) dji_osdk_ros::DroneTaskControlResponse)

(defmethod dji_osdk_ros::DroneTaskControlRequest
  (:response () (instance dji_osdk_ros::DroneTaskControlResponse :init)))

(setf (get dji_osdk_ros::DroneTaskControlRequest :md5sum-) "ab91c4042653ca6868c5907bf22e4741")
(setf (get dji_osdk_ros::DroneTaskControlRequest :datatype-) "dji_osdk_ros/DroneTaskControlRequest")
(setf (get dji_osdk_ros::DroneTaskControlRequest :definition-)
      "#constant for tasks
uint8 TASK_GOHOME = 1
uint8 TASK_TAKEOFF = 4
uint8 TASK_LAND = 6

#request
uint8 task    # see constants above for possible tasks
---
bool result
# for debugging usage
uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")

(setf (get dji_osdk_ros::DroneTaskControlResponse :md5sum-) "ab91c4042653ca6868c5907bf22e4741")
(setf (get dji_osdk_ros::DroneTaskControlResponse :datatype-) "dji_osdk_ros/DroneTaskControlResponse")
(setf (get dji_osdk_ros::DroneTaskControlResponse :definition-)
      "#constant for tasks
uint8 TASK_GOHOME = 1
uint8 TASK_TAKEOFF = 4
uint8 TASK_LAND = 6

#request
uint8 task    # see constants above for possible tasks
---
bool result
# for debugging usage
uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")



(provide :dji_osdk_ros/DroneTaskControl "ab91c4042653ca6868c5907bf22e4741")


