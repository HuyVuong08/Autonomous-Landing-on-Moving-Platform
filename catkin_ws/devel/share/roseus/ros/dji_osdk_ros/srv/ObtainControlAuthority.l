;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::ObtainControlAuthority)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'ObtainControlAuthority (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::OBTAINCONTROLAUTHORITY")
  (make-package "DJI_OSDK_ROS::OBTAINCONTROLAUTHORITY"))
(unless (find-package "DJI_OSDK_ROS::OBTAINCONTROLAUTHORITYREQUEST")
  (make-package "DJI_OSDK_ROS::OBTAINCONTROLAUTHORITYREQUEST"))
(unless (find-package "DJI_OSDK_ROS::OBTAINCONTROLAUTHORITYRESPONSE")
  (make-package "DJI_OSDK_ROS::OBTAINCONTROLAUTHORITYRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::ObtainControlAuthorityRequest
  :super ros::object
  :slots (_enable_obtain ))

(defmethod dji_osdk_ros::ObtainControlAuthorityRequest
  (:init
   (&key
    ((:enable_obtain __enable_obtain) nil)
    )
   (send-super :init)
   (setq _enable_obtain __enable_obtain)
   self)
  (:enable_obtain
   (&optional (__enable_obtain :null))
   (if (not (eq __enable_obtain :null)) (setq _enable_obtain __enable_obtain)) _enable_obtain)
  (:serialization-length
   ()
   (+
    ;; bool _enable_obtain
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable_obtain
       (if _enable_obtain (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable_obtain
     (setq _enable_obtain (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::ObtainControlAuthorityResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::ObtainControlAuthorityResponse
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

(defclass dji_osdk_ros::ObtainControlAuthority
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::ObtainControlAuthority :md5sum-) "e82063bf828152ad11b7c5ce93e9a2dd")
(setf (get dji_osdk_ros::ObtainControlAuthority :datatype-) "dji_osdk_ros/ObtainControlAuthority")
(setf (get dji_osdk_ros::ObtainControlAuthority :request) dji_osdk_ros::ObtainControlAuthorityRequest)
(setf (get dji_osdk_ros::ObtainControlAuthority :response) dji_osdk_ros::ObtainControlAuthorityResponse)

(defmethod dji_osdk_ros::ObtainControlAuthorityRequest
  (:response () (instance dji_osdk_ros::ObtainControlAuthorityResponse :init)))

(setf (get dji_osdk_ros::ObtainControlAuthorityRequest :md5sum-) "e82063bf828152ad11b7c5ce93e9a2dd")
(setf (get dji_osdk_ros::ObtainControlAuthorityRequest :datatype-) "dji_osdk_ros/ObtainControlAuthorityRequest")
(setf (get dji_osdk_ros::ObtainControlAuthorityRequest :definition-)
      "#request
bool enable_obtain
---
#reponse
bool result
")

(setf (get dji_osdk_ros::ObtainControlAuthorityResponse :md5sum-) "e82063bf828152ad11b7c5ce93e9a2dd")
(setf (get dji_osdk_ros::ObtainControlAuthorityResponse :datatype-) "dji_osdk_ros/ObtainControlAuthorityResponse")
(setf (get dji_osdk_ros::ObtainControlAuthorityResponse :definition-)
      "#request
bool enable_obtain
---
#reponse
bool result
")



(provide :dji_osdk_ros/ObtainControlAuthority "e82063bf828152ad11b7c5ce93e9a2dd")


