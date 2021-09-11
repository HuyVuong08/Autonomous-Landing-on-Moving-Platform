;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2SampleReachPointTrigger)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2SampleReachPointTrigger (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2SAMPLEREACHPOINTTRIGGER")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2SAMPLEREACHPOINTTRIGGER"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2SampleReachPointTrigger.msg.html


(defclass dji_osdk_ros::WaypointV2SampleReachPointTrigger
  :super ros::object
  :slots (_waypointIndex _terminateNum ))

(defmethod dji_osdk_ros::WaypointV2SampleReachPointTrigger
  (:init
   (&key
    ((:waypointIndex __waypointIndex) 0)
    ((:terminateNum __terminateNum) 0)
    )
   (send-super :init)
   (setq _waypointIndex (round __waypointIndex))
   (setq _terminateNum (round __terminateNum))
   self)
  (:waypointIndex
   (&optional __waypointIndex)
   (if __waypointIndex (setq _waypointIndex __waypointIndex)) _waypointIndex)
  (:terminateNum
   (&optional __terminateNum)
   (if __terminateNum (setq _terminateNum __terminateNum)) _terminateNum)
  (:serialization-length
   ()
   (+
    ;; uint16 _waypointIndex
    2
    ;; uint16 _terminateNum
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _waypointIndex
       (write-word _waypointIndex s)
     ;; uint16 _terminateNum
       (write-word _terminateNum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _waypointIndex
     (setq _waypointIndex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _terminateNum
     (setq _terminateNum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2SampleReachPointTrigger :md5sum-) "3f587d7ef365928c01789a7ce4df11f8")
(setf (get dji_osdk_ros::WaypointV2SampleReachPointTrigger :datatype-) "dji_osdk_ros/WaypointV2SampleReachPointTrigger")
(setf (get dji_osdk_ros::WaypointV2SampleReachPointTrigger :definition-)
      "uint16 waypointIndex # It determines the index of the waypoint at which the action will be triggered.
uint16 terminateNum

")



(provide :dji_osdk_ros/WaypointV2SampleReachPointTrigger "3f587d7ef365928c01789a7ce4df11f8")


