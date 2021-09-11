;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::GetM300StereoParams)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'GetM300StereoParams (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::GETM300STEREOPARAMS")
  (make-package "DJI_OSDK_ROS::GETM300STEREOPARAMS"))
(unless (find-package "DJI_OSDK_ROS::GETM300STEREOPARAMSREQUEST")
  (make-package "DJI_OSDK_ROS::GETM300STEREOPARAMSREQUEST"))
(unless (find-package "DJI_OSDK_ROS::GETM300STEREOPARAMSRESPONSE")
  (make-package "DJI_OSDK_ROS::GETM300STEREOPARAMSRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::GetM300StereoParamsRequest
  :super ros::object
  :slots ())

(defmethod dji_osdk_ros::GetM300StereoParamsRequest
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

(defclass dji_osdk_ros::GetM300StereoParamsResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::GetM300StereoParamsResponse
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

(defclass dji_osdk_ros::GetM300StereoParams
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::GetM300StereoParams :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::GetM300StereoParams :datatype-) "dji_osdk_ros/GetM300StereoParams")
(setf (get dji_osdk_ros::GetM300StereoParams :request) dji_osdk_ros::GetM300StereoParamsRequest)
(setf (get dji_osdk_ros::GetM300StereoParams :response) dji_osdk_ros::GetM300StereoParamsResponse)

(defmethod dji_osdk_ros::GetM300StereoParamsRequest
  (:response () (instance dji_osdk_ros::GetM300StereoParamsResponse :init)))

(setf (get dji_osdk_ros::GetM300StereoParamsRequest :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::GetM300StereoParamsRequest :datatype-) "dji_osdk_ros/GetM300StereoParamsRequest")
(setf (get dji_osdk_ros::GetM300StereoParamsRequest :definition-)
      "#request
---
#response
bool result
")

(setf (get dji_osdk_ros::GetM300StereoParamsResponse :md5sum-) "eb13ac1f1354ccecb7941ee8fa2192e8")
(setf (get dji_osdk_ros::GetM300StereoParamsResponse :datatype-) "dji_osdk_ros/GetM300StereoParamsResponse")
(setf (get dji_osdk_ros::GetM300StereoParamsResponse :definition-)
      "#request
---
#response
bool result
")



(provide :dji_osdk_ros/GetM300StereoParams "eb13ac1f1354ccecb7941ee8fa2192e8")


