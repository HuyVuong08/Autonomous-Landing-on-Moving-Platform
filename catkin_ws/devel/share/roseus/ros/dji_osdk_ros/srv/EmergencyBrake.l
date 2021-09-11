;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::EmergencyBrake)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'EmergencyBrake (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::EMERGENCYBRAKE")
  (make-package "DJI_OSDK_ROS::EMERGENCYBRAKE"))
(unless (find-package "DJI_OSDK_ROS::EMERGENCYBRAKEREQUEST")
  (make-package "DJI_OSDK_ROS::EMERGENCYBRAKEREQUEST"))
(unless (find-package "DJI_OSDK_ROS::EMERGENCYBRAKERESPONSE")
  (make-package "DJI_OSDK_ROS::EMERGENCYBRAKERESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::EmergencyBrakeRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::EmergencyBrakeRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass dji_osdk_ros::EmergencyBrakeResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::EmergencyBrakeResponse
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

(defclass dji_osdk_ros::EmergencyBrake
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::EmergencyBrake :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::EmergencyBrake :datatype-) "dji_osdk_ros/EmergencyBrake")
(setf (get dji_osdk_ros::EmergencyBrake :request) dji_osdk_ros::EmergencyBrakeRequest)
(setf (get dji_osdk_ros::EmergencyBrake :response) dji_osdk_ros::EmergencyBrakeResponse)

(defmethod dji_osdk_ros::EmergencyBrakeRequest
  (:response () (instance dji_osdk_ros::EmergencyBrakeResponse :init)))

(setf (get dji_osdk_ros::EmergencyBrakeRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::EmergencyBrakeRequest :datatype-) "dji_osdk_ros/EmergencyBrakeRequest")
(setf (get dji_osdk_ros::EmergencyBrakeRequest :definition-)
      "#request
---
#reponse
bool result
")

(setf (get dji_osdk_ros::EmergencyBrakeResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::EmergencyBrakeResponse :datatype-) "dji_osdk_ros/EmergencyBrakeResponse")
(setf (get dji_osdk_ros::EmergencyBrakeResponse :definition-)
      "#request
---
#reponse
bool result
")



(provide :dji_osdk_ros/EmergencyBrake "eb13ac1f1354ccecb7941ee8fa2192e8")


