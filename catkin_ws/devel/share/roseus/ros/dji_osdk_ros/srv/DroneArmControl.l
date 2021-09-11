;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::DroneArmControl)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'DroneArmControl (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::DRONEARMCONTROL")
  (make-package "DJI_OSDK_ROS::DRONEARMCONTROL"))
(unless (find-package "DJI_OSDK_ROS::DRONEARMCONTROLREQUEST")
  (make-package "DJI_OSDK_ROS::DRONEARMCONTROLREQUEST"))
(unless (find-package "DJI_OSDK_ROS::DRONEARMCONTROLRESPONSE")
  (make-package "DJI_OSDK_ROS::DRONEARMCONTROLRESPONSE"))

(in-package "ROS")





(intern "*DISARM_COMMAND*" (find-package "DJI_OSDK_ROS::DRONEARMCONTROLREQUEST"))
(shadow '*DISARM_COMMAND* (find-package "DJI_OSDK_ROS::DRONEARMCONTROLREQUEST"))
(defconstant dji_osdk_ros::DroneArmControlRequest::*DISARM_COMMAND* 0)
(intern "*ARM_COMMAND*" (find-package "DJI_OSDK_ROS::DRONEARMCONTROLREQUEST"))
(shadow '*ARM_COMMAND* (find-package "DJI_OSDK_ROS::DRONEARMCONTROLREQUEST"))
(defconstant dji_osdk_ros::DroneArmControlRequest::*ARM_COMMAND* 1)

(defun dji_osdk_ros::DroneArmControlRequest-to-symbol (const)
  (cond
        ((= const 0) 'dji_osdk_ros::DroneArmControlRequest::*DISARM_COMMAND*)
        ((= const 1) 'dji_osdk_ros::DroneArmControlRequest::*ARM_COMMAND*)
        (t nil)))

(defclass dji_osdk_ros::DroneArmControlRequest
  :super ros::object
  :slots (_arm ))

(defmethod dji_osdk_ros::DroneArmControlRequest
  (:init
   (&key
    ((:arm __arm) 0)
    )
   (send-super :init)
   (setq _arm (round __arm))
   self)
  (:arm
   (&optional __arm)
   (if __arm (setq _arm __arm)) _arm)
  (:serialization-length
   ()
   (+
    ;; uint8 _arm
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _arm
       (write-byte _arm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _arm
     (setq _arm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::DroneArmControlResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_osdk_ros::DroneArmControlResponse
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

(defclass dji_osdk_ros::DroneArmControl
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::DroneArmControl :md5sum-) "0a8071a11c3d6b34ba24869e069f733c")
(setf (get dji_osdk_ros::DroneArmControl :datatype-) "dji_osdk_ros/DroneArmControl")
(setf (get dji_osdk_ros::DroneArmControl :request) dji_osdk_ros::DroneArmControlRequest)
(setf (get dji_osdk_ros::DroneArmControl :response) dji_osdk_ros::DroneArmControlResponse)

(defmethod dji_osdk_ros::DroneArmControlRequest
  (:response () (instance dji_osdk_ros::DroneArmControlResponse :init)))

(setf (get dji_osdk_ros::DroneArmControlRequest :md5sum-) "0a8071a11c3d6b34ba24869e069f733c")
(setf (get dji_osdk_ros::DroneArmControlRequest :datatype-) "dji_osdk_ros/DroneArmControlRequest")
(setf (get dji_osdk_ros::DroneArmControlRequest :definition-)
      "#constant for arm
uint8 DISARM_COMMAND = 0
uint8 ARM_COMMAND    = 1

#request
uint8 arm    # see constants
---
bool result
# for debugging usage
uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")

(setf (get dji_osdk_ros::DroneArmControlResponse :md5sum-) "0a8071a11c3d6b34ba24869e069f733c")
(setf (get dji_osdk_ros::DroneArmControlResponse :datatype-) "dji_osdk_ros/DroneArmControlResponse")
(setf (get dji_osdk_ros::DroneArmControlResponse :definition-)
      "#constant for arm
uint8 DISARM_COMMAND = 0
uint8 ARM_COMMAND    = 1

#request
uint8 arm    # see constants
---
bool result
# for debugging usage
uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")



(provide :dji_osdk_ros/DroneArmControl "0a8071a11c3d6b34ba24869e069f733c")


