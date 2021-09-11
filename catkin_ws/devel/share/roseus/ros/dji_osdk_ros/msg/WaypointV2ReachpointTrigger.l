;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2ReachpointTrigger)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2ReachpointTrigger (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2REACHPOINTTRIGGER")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2REACHPOINTTRIGGER"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2ReachpointTrigger.msg.html


(defclass dji_osdk_ros::WaypointV2ReachpointTrigger
  :super ros::object
  :slots (_startIndex _endIndex _intervalWPNum _waypointCountToTerminate ))

(defmethod dji_osdk_ros::WaypointV2ReachpointTrigger
  (:init
   (&key
    ((:startIndex __startIndex) 0)
    ((:endIndex __endIndex) 0)
    ((:intervalWPNum __intervalWPNum) 0)
    ((:waypointCountToTerminate __waypointCountToTerminate) 0)
    )
   (send-super :init)
   (setq _startIndex (round __startIndex))
   (setq _endIndex (round __endIndex))
   (setq _intervalWPNum (round __intervalWPNum))
   (setq _waypointCountToTerminate (round __waypointCountToTerminate))
   self)
  (:startIndex
   (&optional __startIndex)
   (if __startIndex (setq _startIndex __startIndex)) _startIndex)
  (:endIndex
   (&optional __endIndex)
   (if __endIndex (setq _endIndex __endIndex)) _endIndex)
  (:intervalWPNum
   (&optional __intervalWPNum)
   (if __intervalWPNum (setq _intervalWPNum __intervalWPNum)) _intervalWPNum)
  (:waypointCountToTerminate
   (&optional __waypointCountToTerminate)
   (if __waypointCountToTerminate (setq _waypointCountToTerminate __waypointCountToTerminate)) _waypointCountToTerminate)
  (:serialization-length
   ()
   (+
    ;; uint16 _startIndex
    2
    ;; uint16 _endIndex
    2
    ;; uint16 _intervalWPNum
    2
    ;; uint16 _waypointCountToTerminate
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _startIndex
       (write-word _startIndex s)
     ;; uint16 _endIndex
       (write-word _endIndex s)
     ;; uint16 _intervalWPNum
       (write-word _intervalWPNum s)
     ;; uint16 _waypointCountToTerminate
       (write-word _waypointCountToTerminate s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _startIndex
     (setq _startIndex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _endIndex
     (setq _endIndex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _intervalWPNum
     (setq _intervalWPNum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _waypointCountToTerminate
     (setq _waypointCountToTerminate (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2ReachpointTrigger :md5sum-) "97fe6c65510583177587ba40623a3408")
(setf (get dji_osdk_ros::WaypointV2ReachpointTrigger :datatype-) "dji_osdk_ros/WaypointV2ReachpointTrigger")
(setf (get dji_osdk_ros::WaypointV2ReachpointTrigger :definition-)
      "#  It describes an action will be triggered when the aircraft reach the certain waypoint.
  uint16 startIndex   # It determines the index of the waypoint at which the action will be triggered.
  uint16 endIndex
  uint16 intervalWPNum
  uint16 waypointCountToTerminate  # It determines the waypoint count till the action triggered stops.
")



(provide :dji_osdk_ros/WaypointV2ReachpointTrigger "97fe6c65510583177587ba40623a3408")


