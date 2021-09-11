;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SetHomePoint)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SetHomePoint (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SETHOMEPOINT")
  (make-package "DJI_OSDK_ROS::SETHOMEPOINT"))
(unless (find-package "DJI_OSDK_ROS::SETHOMEPOINTREQUEST")
  (make-package "DJI_OSDK_ROS::SETHOMEPOINTREQUEST"))
(unless (find-package "DJI_OSDK_ROS::SETHOMEPOINTRESPONSE")
  (make-package "DJI_OSDK_ROS::SETHOMEPOINTRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::SetHomePointRequest
  :super ros::object
  :slots (_latitude _longitude ))

(defmethod dji_osdk_ros::SetHomePointRequest
  (:init
   (&key
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    )
   (send-super :init)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   self)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:serialization-length
   ()
   (+
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass dji_osdk_ros::SetHomePointResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::SetHomePointResponse
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

(defclass dji_osdk_ros::SetHomePoint
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SetHomePoint :md5sum-) "545e64b0ec120b3ef516b84c81d38856")
(setf (get dji_osdk_ros::SetHomePoint :datatype-) "dji_osdk_ros/SetHomePoint")
(setf (get dji_osdk_ros::SetHomePoint :request) dji_osdk_ros::SetHomePointRequest)
(setf (get dji_osdk_ros::SetHomePoint :response) dji_osdk_ros::SetHomePointResponse)

(defmethod dji_osdk_ros::SetHomePointRequest
  (:response () (instance dji_osdk_ros::SetHomePointResponse :init)))

(setf (get dji_osdk_ros::SetHomePointRequest :md5sum-) "545e64b0ec120b3ef516b84c81d38856")
(setf (get dji_osdk_ros::SetHomePointRequest :datatype-) "dji_osdk_ros/SetHomePointRequest")
(setf (get dji_osdk_ros::SetHomePointRequest :definition-)
      "#request
float64 latitude  #/*!< unit: rad */
float64 longitude #/*!< unit: rad */
---
#response
bool result
")

(setf (get dji_osdk_ros::SetHomePointResponse :md5sum-) "545e64b0ec120b3ef516b84c81d38856")
(setf (get dji_osdk_ros::SetHomePointResponse :datatype-) "dji_osdk_ros/SetHomePointResponse")
(setf (get dji_osdk_ros::SetHomePointResponse :definition-)
      "#request
float64 latitude  #/*!< unit: rad */
float64 longitude #/*!< unit: rad */
---
#response
bool result
")



(provide :dji_osdk_ros/SetHomePoint "545e64b0ec120b3ef516b84c81d38856")


