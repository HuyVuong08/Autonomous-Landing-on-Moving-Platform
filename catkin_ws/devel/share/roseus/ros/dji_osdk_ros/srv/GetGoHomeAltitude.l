;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::GetGoHomeAltitude)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'GetGoHomeAltitude (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::GETGOHOMEALTITUDE")
  (make-package "DJI_OSDK_ROS::GETGOHOMEALTITUDE"))
(unless (find-package "DJI_OSDK_ROS::GETGOHOMEALTITUDEREQUEST")
  (make-package "DJI_OSDK_ROS::GETGOHOMEALTITUDEREQUEST"))
(unless (find-package "DJI_OSDK_ROS::GETGOHOMEALTITUDERESPONSE")
  (make-package "DJI_OSDK_ROS::GETGOHOMEALTITUDERESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::GetGoHomeAltitudeRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::GetGoHomeAltitudeRequest
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

(defclass dji_osdk_ros::GetGoHomeAltitudeResponse
  :super ros::object
  :slots (_result _altitude ))

(defmethod dji_osdk_ros::GetGoHomeAltitudeResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:altitude __altitude) 0)
    )
   (send-super :init)
   (setq _result __result)
   (setq _altitude (round __altitude))
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; uint16 _altitude
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _altitude
       (write-word _altitude s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _altitude
     (setq _altitude (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dji_osdk_ros::GetGoHomeAltitude
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::GetGoHomeAltitude :md5sum-) "481d1603c31c25eb38ff6abb0129e8bf")
(setf (get dji_osdk_ros::GetGoHomeAltitude :datatype-) "dji_osdk_ros/GetGoHomeAltitude")
(setf (get dji_osdk_ros::GetGoHomeAltitude :request) dji_osdk_ros::GetGoHomeAltitudeRequest)
(setf (get dji_osdk_ros::GetGoHomeAltitude :response) dji_osdk_ros::GetGoHomeAltitudeResponse)

(defmethod dji_osdk_ros::GetGoHomeAltitudeRequest
  (:response () (instance dji_osdk_ros::GetGoHomeAltitudeResponse :init)))

(setf (get dji_osdk_ros::GetGoHomeAltitudeRequest :md5sum-) "481d1603c31c25eb38ff6abb0129e8bf")
(setf (get dji_osdk_ros::GetGoHomeAltitudeRequest :datatype-) "dji_osdk_ros/GetGoHomeAltitudeRequest")
(setf (get dji_osdk_ros::GetGoHomeAltitudeRequest :definition-)
      "#request
---
#response
bool result
uint16 altitude
")

(setf (get dji_osdk_ros::GetGoHomeAltitudeResponse :md5sum-) "481d1603c31c25eb38ff6abb0129e8bf")
(setf (get dji_osdk_ros::GetGoHomeAltitudeResponse :datatype-) "dji_osdk_ros/GetGoHomeAltitudeResponse")
(setf (get dji_osdk_ros::GetGoHomeAltitudeResponse :definition-)
      "#request
---
#response
bool result
uint16 altitude
")



(provide :dji_osdk_ros/GetGoHomeAltitude "481d1603c31c25eb38ff6abb0129e8bf")


