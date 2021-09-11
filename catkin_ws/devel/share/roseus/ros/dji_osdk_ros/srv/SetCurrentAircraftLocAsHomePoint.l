;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SetCurrentAircraftLocAsHomePoint)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SetCurrentAircraftLocAsHomePoint (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SETCURRENTAIRCRAFTLOCASHOMEPOINT")
  (make-package "DJI_OSDK_ROS::SETCURRENTAIRCRAFTLOCASHOMEPOINT"))
(unless (find-package "DJI_OSDK_ROS::SETCURRENTAIRCRAFTLOCASHOMEPOINTREQUEST")
  (make-package "DJI_OSDK_ROS::SETCURRENTAIRCRAFTLOCASHOMEPOINTREQUEST"))
(unless (find-package "DJI_OSDK_ROS::SETCURRENTAIRCRAFTLOCASHOMEPOINTRESPONSE")
  (make-package "DJI_OSDK_ROS::SETCURRENTAIRCRAFTLOCASHOMEPOINTRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest
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

(defclass dji_osdk_ros::SetCurrentAircraftLocAsHomePointResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::SetCurrentAircraftLocAsHomePointResponse
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

(defclass dji_osdk_ros::SetCurrentAircraftLocAsHomePoint
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SetCurrentAircraftLocAsHomePoint :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::SetCurrentAircraftLocAsHomePoint :datatype-) "dji_osdk_ros/SetCurrentAircraftLocAsHomePoint")
(setf (get dji_osdk_ros::SetCurrentAircraftLocAsHomePoint :request) dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest)
(setf (get dji_osdk_ros::SetCurrentAircraftLocAsHomePoint :response) dji_osdk_ros::SetCurrentAircraftLocAsHomePointResponse)

(defmethod dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest
  (:response () (instance dji_osdk_ros::SetCurrentAircraftLocAsHomePointResponse :init)))

(setf (get dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest :datatype-) "dji_osdk_ros/SetCurrentAircraftLocAsHomePointRequest")
(setf (get dji_osdk_ros::SetCurrentAircraftLocAsHomePointRequest :definition-)
      "---
bool result
")

(setf (get dji_osdk_ros::SetCurrentAircraftLocAsHomePointResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::SetCurrentAircraftLocAsHomePointResponse :datatype-) "dji_osdk_ros/SetCurrentAircraftLocAsHomePointResponse")
(setf (get dji_osdk_ros::SetCurrentAircraftLocAsHomePointResponse :definition-)
      "---
bool result
")



(provide :dji_osdk_ros/SetCurrentAircraftLocAsHomePoint "eb13ac1f1354ccecb7941ee8fa2192e8")


