;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2TrajectoryTrigger)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2TrajectoryTrigger (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2TRAJECTORYTRIGGER")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2TRAJECTORYTRIGGER"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2TrajectoryTrigger.msg.html


(defclass dji_osdk_ros::WaypointV2TrajectoryTrigger
  :super ros::object
  :slots (_startIndex _endIndex ))

(defmethod dji_osdk_ros::WaypointV2TrajectoryTrigger
  (:init
   (&key
    ((:startIndex __startIndex) 0)
    ((:endIndex __endIndex) 0)
    )
   (send-super :init)
   (setq _startIndex (round __startIndex))
   (setq _endIndex (round __endIndex))
   self)
  (:startIndex
   (&optional __startIndex)
   (if __startIndex (setq _startIndex __startIndex)) _startIndex)
  (:endIndex
   (&optional __endIndex)
   (if __endIndex (setq _endIndex __endIndex)) _endIndex)
  (:serialization-length
   ()
   (+
    ;; uint16 _startIndex
    2
    ;; uint16 _endIndex
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _startIndex
     (setq _startIndex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _endIndex
     (setq _endIndex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2TrajectoryTrigger :md5sum-) "a990a2081bb526bf9f60173c3e6fc781")
(setf (get dji_osdk_ros::WaypointV2TrajectoryTrigger :datatype-) "dji_osdk_ros/WaypointV2TrajectoryTrigger")
(setf (get dji_osdk_ros::WaypointV2TrajectoryTrigger :definition-)
      "# This class represents a trajectory trigger action when should be trigger.

uint16 startIndex # It determines the index of the waypoint at which the trigger starts.
uint16 endIndex   # It determines the waypoint when the trigger stops.


")



(provide :dji_osdk_ros/WaypointV2TrajectoryTrigger "a990a2081bb526bf9f60173c3e6fc781")


