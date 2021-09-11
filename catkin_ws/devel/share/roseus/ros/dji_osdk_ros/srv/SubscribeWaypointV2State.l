;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SubscribeWaypointV2State)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SubscribeWaypointV2State (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SUBSCRIBEWAYPOINTV2STATE")
  (make-package "DJI_OSDK_ROS::SUBSCRIBEWAYPOINTV2STATE"))
(unless (find-package "DJI_OSDK_ROS::SUBSCRIBEWAYPOINTV2STATEREQUEST")
  (make-package "DJI_OSDK_ROS::SUBSCRIBEWAYPOINTV2STATEREQUEST"))
(unless (find-package "DJI_OSDK_ROS::SUBSCRIBEWAYPOINTV2STATERESPONSE")
  (make-package "DJI_OSDK_ROS::SUBSCRIBEWAYPOINTV2STATERESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::SubscribeWaypointV2StateRequest
  :super ros::object
  :slots (_enable_sub ))

(defmethod dji_osdk_ros::SubscribeWaypointV2StateRequest
  (:init
   (&key
    ((:enable_sub __enable_sub) nil)
    )
   (send-super :init)
   (setq _enable_sub __enable_sub)
   self)
  (:enable_sub
   (&optional (__enable_sub :null))
   (if (not (eq __enable_sub :null)) (setq _enable_sub __enable_sub)) _enable_sub)
  (:serialization-length
   ()
   (+
    ;; bool _enable_sub
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable_sub
       (if _enable_sub (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable_sub
     (setq _enable_sub (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::SubscribeWaypointV2StateResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::SubscribeWaypointV2StateResponse
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

(defclass dji_osdk_ros::SubscribeWaypointV2State
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SubscribeWaypointV2State :md5sum-) "ea66dd5532fa92b8b44324072cac57bf")
(setf (get dji_osdk_ros::SubscribeWaypointV2State :datatype-) "dji_osdk_ros/SubscribeWaypointV2State")
(setf (get dji_osdk_ros::SubscribeWaypointV2State :request) dji_osdk_ros::SubscribeWaypointV2StateRequest)
(setf (get dji_osdk_ros::SubscribeWaypointV2State :response) dji_osdk_ros::SubscribeWaypointV2StateResponse)

(defmethod dji_osdk_ros::SubscribeWaypointV2StateRequest
  (:response () (instance dji_osdk_ros::SubscribeWaypointV2StateResponse :init)))

(setf (get dji_osdk_ros::SubscribeWaypointV2StateRequest :md5sum-) "ea66dd5532fa92b8b44324072cac57bf")
(setf (get dji_osdk_ros::SubscribeWaypointV2StateRequest :datatype-) "dji_osdk_ros/SubscribeWaypointV2StateRequest")
(setf (get dji_osdk_ros::SubscribeWaypointV2StateRequest :definition-)
      "#request
bool enable_sub
---
#response
bool result
")

(setf (get dji_osdk_ros::SubscribeWaypointV2StateResponse :md5sum-) "ea66dd5532fa92b8b44324072cac57bf")
(setf (get dji_osdk_ros::SubscribeWaypointV2StateResponse :datatype-) "dji_osdk_ros/SubscribeWaypointV2StateResponse")
(setf (get dji_osdk_ros::SubscribeWaypointV2StateResponse :definition-)
      "#request
bool enable_sub
---
#response
bool result
")



(provide :dji_osdk_ros/SubscribeWaypointV2State "ea66dd5532fa92b8b44324072cac57bf")


