;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::UploadWaypointV2Action)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'UploadWaypointV2Action (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::UPLOADWAYPOINTV2ACTION")
  (make-package "DJI_OSDK_ROS::UPLOADWAYPOINTV2ACTION"))
(unless (find-package "DJI_OSDK_ROS::UPLOADWAYPOINTV2ACTIONREQUEST")
  (make-package "DJI_OSDK_ROS::UPLOADWAYPOINTV2ACTIONREQUEST"))
(unless (find-package "DJI_OSDK_ROS::UPLOADWAYPOINTV2ACTIONRESPONSE")
  (make-package "DJI_OSDK_ROS::UPLOADWAYPOINTV2ACTIONRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::UploadWaypointV2ActionRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::UploadWaypointV2ActionRequest
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

(defclass dji_osdk_ros::UploadWaypointV2ActionResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::UploadWaypointV2ActionResponse
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

(defclass dji_osdk_ros::UploadWaypointV2Action
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::UploadWaypointV2Action :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::UploadWaypointV2Action :datatype-) "dji_osdk_ros/UploadWaypointV2Action")
(setf (get dji_osdk_ros::UploadWaypointV2Action :request) dji_osdk_ros::UploadWaypointV2ActionRequest)
(setf (get dji_osdk_ros::UploadWaypointV2Action :response) dji_osdk_ros::UploadWaypointV2ActionResponse)

(defmethod dji_osdk_ros::UploadWaypointV2ActionRequest
  (:response () (instance dji_osdk_ros::UploadWaypointV2ActionResponse :init)))

(setf (get dji_osdk_ros::UploadWaypointV2ActionRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::UploadWaypointV2ActionRequest :datatype-) "dji_osdk_ros/UploadWaypointV2ActionRequest")
(setf (get dji_osdk_ros::UploadWaypointV2ActionRequest :definition-)
      "#request
# WaypointV2Action[] actions
---
#response
bool result
")

(setf (get dji_osdk_ros::UploadWaypointV2ActionResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::UploadWaypointV2ActionResponse :datatype-) "dji_osdk_ros/UploadWaypointV2ActionResponse")
(setf (get dji_osdk_ros::UploadWaypointV2ActionResponse :definition-)
      "#request
# WaypointV2Action[] actions
---
#response
bool result
")



(provide :dji_osdk_ros/UploadWaypointV2Action "eb13ac1f1354ccecb7941ee8fa2192e8")


