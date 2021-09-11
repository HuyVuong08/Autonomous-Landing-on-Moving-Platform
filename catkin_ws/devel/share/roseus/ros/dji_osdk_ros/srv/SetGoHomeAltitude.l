;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SetGoHomeAltitude)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SetGoHomeAltitude (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SETGOHOMEALTITUDE")
  (make-package "DJI_OSDK_ROS::SETGOHOMEALTITUDE"))
(unless (find-package "DJI_OSDK_ROS::SETGOHOMEALTITUDEREQUEST")
  (make-package "DJI_OSDK_ROS::SETGOHOMEALTITUDEREQUEST"))
(unless (find-package "DJI_OSDK_ROS::SETGOHOMEALTITUDERESPONSE")
  (make-package "DJI_OSDK_ROS::SETGOHOMEALTITUDERESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::SetGoHomeAltitudeRequest
  :super ros::object
  :slots (_altitude ))

(defmethod dji_osdk_ros::SetGoHomeAltitudeRequest
  (:init
   (&key
    ((:altitude __altitude) 0)
    )
   (send-super :init)
   (setq _altitude (round __altitude))
   self)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; uint16 _altitude
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _altitude
       (write-word _altitude s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _altitude
     (setq _altitude (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dji_osdk_ros::SetGoHomeAltitudeResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::SetGoHomeAltitudeResponse
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

(defclass dji_osdk_ros::SetGoHomeAltitude
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SetGoHomeAltitude :md5sum-) "7721aec53d0b312409b16d98d1d8d77a")
(setf (get dji_osdk_ros::SetGoHomeAltitude :datatype-) "dji_osdk_ros/SetGoHomeAltitude")
(setf (get dji_osdk_ros::SetGoHomeAltitude :request) dji_osdk_ros::SetGoHomeAltitudeRequest)
(setf (get dji_osdk_ros::SetGoHomeAltitude :response) dji_osdk_ros::SetGoHomeAltitudeResponse)

(defmethod dji_osdk_ros::SetGoHomeAltitudeRequest
  (:response () (instance dji_osdk_ros::SetGoHomeAltitudeResponse :init)))

(setf (get dji_osdk_ros::SetGoHomeAltitudeRequest :md5sum-) "7721aec53d0b312409b16d98d1d8d77a")
(setf (get dji_osdk_ros::SetGoHomeAltitudeRequest :datatype-) "dji_osdk_ros/SetGoHomeAltitudeRequest")
(setf (get dji_osdk_ros::SetGoHomeAltitudeRequest :definition-)
      "uint16 altitude
---
bool result
")

(setf (get dji_osdk_ros::SetGoHomeAltitudeResponse :md5sum-) "7721aec53d0b312409b16d98d1d8d77a")
(setf (get dji_osdk_ros::SetGoHomeAltitudeResponse :datatype-) "dji_osdk_ros/SetGoHomeAltitudeResponse")
(setf (get dji_osdk_ros::SetGoHomeAltitudeResponse :definition-)
      "uint16 altitude
---
bool result
")



(provide :dji_osdk_ros/SetGoHomeAltitude "7721aec53d0b312409b16d98d1d8d77a")


