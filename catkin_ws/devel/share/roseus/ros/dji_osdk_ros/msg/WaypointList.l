;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointList)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointList (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTLIST")
  (make-package "DJI_OSDK_ROS::WAYPOINTLIST"))

(in-package "ROS")
;;//! \htmlinclude WaypointList.msg.html


(defclass dji_osdk_ros::WaypointList
  :super ros::object
  :slots (_waypoint_list ))

(defmethod dji_osdk_ros::WaypointList
  (:init
   (&key
    ((:waypoint_list __waypoint_list) ())
    )
   (send-super :init)
   (setq _waypoint_list __waypoint_list)
   self)
  (:waypoint_list
   (&rest __waypoint_list)
   (if (keywordp (car __waypoint_list))
       (send* _waypoint_list __waypoint_list)
     (progn
       (if __waypoint_list (setq _waypoint_list (car __waypoint_list)))
       _waypoint_list)))
  (:serialization-length
   ()
   (+
    ;; dji_osdk_ros/Waypoint[] _waypoint_list
    (apply #'+ (send-all _waypoint_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_osdk_ros/Waypoint[] _waypoint_list
     (write-long (length _waypoint_list) s)
     (dolist (elem _waypoint_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_osdk_ros/Waypoint[] _waypoint_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoint_list (let (r) (dotimes (i n) (push (instance dji_osdk_ros::Waypoint :init) r)) r))
     (dolist (elem- _waypoint_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointList :md5sum-) "284386e6fe0f355bdea1db93ead90084")
(setf (get dji_osdk_ros::WaypointList :datatype-) "dji_osdk_ros/WaypointList")
(setf (get dji_osdk_ros::WaypointList :definition-)
      "Waypoint[] waypoint_list

================================================================================
MSG: dji_osdk_ros/Waypoint
float64 latitude      # in degree
float64 longitude     # in degree
float32 altitude
int16 heading         #heading is in [-180,180]
uint16 staytime       # in second


")



(provide :dji_osdk_ros/WaypointList "284386e6fe0f355bdea1db93ead90084")


