;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SDKControlAuthority)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SDKControlAuthority (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SDKCONTROLAUTHORITY")
  (make-package "DJI_OSDK_ROS::SDKCONTROLAUTHORITY"))
(unless (find-package "DJI_OSDK_ROS::SDKCONTROLAUTHORITYREQUEST")
  (make-package "DJI_OSDK_ROS::SDKCONTROLAUTHORITYREQUEST"))
(unless (find-package "DJI_OSDK_ROS::SDKCONTROLAUTHORITYRESPONSE")
  (make-package "DJI_OSDK_ROS::SDKCONTROLAUTHORITYRESPONSE"))

(in-package "ROS")





(intern "*RELEASE_CONTROL*" (find-package "DJI_OSDK_ROS::SDKCONTROLAUTHORITYREQUEST"))
(shadow '*RELEASE_CONTROL* (find-package "DJI_OSDK_ROS::SDKCONTROLAUTHORITYREQUEST"))
(defconstant dji_osdk_ros::SDKControlAuthorityRequest::*RELEASE_CONTROL* 0)
(intern "*REQUEST_CONTROL*" (find-package "DJI_OSDK_ROS::SDKCONTROLAUTHORITYREQUEST"))
(shadow '*REQUEST_CONTROL* (find-package "DJI_OSDK_ROS::SDKCONTROLAUTHORITYREQUEST"))
(defconstant dji_osdk_ros::SDKControlAuthorityRequest::*REQUEST_CONTROL* 1)

(defun dji_osdk_ros::SDKControlAuthorityRequest-to-symbol (const)
  (cond
        ((= const 0) 'dji_osdk_ros::SDKControlAuthorityRequest::*RELEASE_CONTROL*)
        ((= const 1) 'dji_osdk_ros::SDKControlAuthorityRequest::*REQUEST_CONTROL*)
        (t nil)))

(defclass dji_osdk_ros::SDKControlAuthorityRequest
  :super ros::object
  :slots (_control_enable ))

(defmethod dji_osdk_ros::SDKControlAuthorityRequest
  (:init
   (&key
    ((:control_enable __control_enable) 0)
    )
   (send-super :init)
   (setq _control_enable (round __control_enable))
   self)
  (:control_enable
   (&optional __control_enable)
   (if __control_enable (setq _control_enable __control_enable)) _control_enable)
  (:serialization-length
   ()
   (+
    ;; uint8 _control_enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _control_enable
       (write-byte _control_enable s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _control_enable
     (setq _control_enable (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::SDKControlAuthorityResponse
  :super ros::object
  :slots (_result _cmd_set _cmd_id _ack_data ))

(defmethod dji_osdk_ros::SDKControlAuthorityResponse
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

(defclass dji_osdk_ros::SDKControlAuthority
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SDKControlAuthority :md5sum-) "ab9a31a36ad499da6a1bb989580360dd")
(setf (get dji_osdk_ros::SDKControlAuthority :datatype-) "dji_osdk_ros/SDKControlAuthority")
(setf (get dji_osdk_ros::SDKControlAuthority :request) dji_osdk_ros::SDKControlAuthorityRequest)
(setf (get dji_osdk_ros::SDKControlAuthority :response) dji_osdk_ros::SDKControlAuthorityResponse)

(defmethod dji_osdk_ros::SDKControlAuthorityRequest
  (:response () (instance dji_osdk_ros::SDKControlAuthorityResponse :init)))

(setf (get dji_osdk_ros::SDKControlAuthorityRequest :md5sum-) "ab9a31a36ad499da6a1bb989580360dd")
(setf (get dji_osdk_ros::SDKControlAuthorityRequest :datatype-) "dji_osdk_ros/SDKControlAuthorityRequest")
(setf (get dji_osdk_ros::SDKControlAuthorityRequest :definition-)
      "#constant for control_enable
uint8 RELEASE_CONTROL = 0
uint8 REQUEST_CONTROL = 1

#request
uint8 control_enable    # see constants above
---
bool result
# for debugging usage
uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")

(setf (get dji_osdk_ros::SDKControlAuthorityResponse :md5sum-) "ab9a31a36ad499da6a1bb989580360dd")
(setf (get dji_osdk_ros::SDKControlAuthorityResponse :datatype-) "dji_osdk_ros/SDKControlAuthorityResponse")
(setf (get dji_osdk_ros::SDKControlAuthorityResponse :definition-)
      "#constant for control_enable
uint8 RELEASE_CONTROL = 0
uint8 REQUEST_CONTROL = 1

#request
uint8 control_enable    # see constants above
---
bool result
# for debugging usage
uint8 cmd_set
uint8 cmd_id
uint32 ack_data

")



(provide :dji_osdk_ros/SDKControlAuthority "ab9a31a36ad499da6a1bb989580360dd")


