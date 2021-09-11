;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2AircraftControlActuatorRotateHeading)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2AircraftControlActuatorRotateHeading (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2AIRCRAFTCONTROLACTUATORROTATEHEADING")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2AIRCRAFTCONTROLACTUATORROTATEHEADING"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2AircraftControlActuatorRotateHeading.msg.html


(defclass dji_osdk_ros::WaypointV2AircraftControlActuatorRotateHeading
  :super ros::object
  :slots (_isRelative _yaw ))

(defmethod dji_osdk_ros::WaypointV2AircraftControlActuatorRotateHeading
  (:init
   (&key
    ((:isRelative __isRelative) 0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _isRelative (round __isRelative))
   (setq _yaw (float __yaw))
   self)
  (:isRelative
   (&optional __isRelative)
   (if __isRelative (setq _isRelative __isRelative)) _isRelative)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; uint8 _isRelative
    1
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _isRelative
       (write-byte _isRelative s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _isRelative
     (setq _isRelative (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2AircraftControlActuatorRotateHeading :md5sum-) "da5a91dc67eed375ef69186b861ceea1")
(setf (get dji_osdk_ros::WaypointV2AircraftControlActuatorRotateHeading :datatype-) "dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading")
(setf (get dji_osdk_ros::WaypointV2AircraftControlActuatorRotateHeading :definition-)
      "# This class defines how the aircraft rotates on the yaw axis.
  uint8 isRelative # Determines the aircraft rotate heading relative.
                     # if ``TRUE``, when the aircraft is rotating, relative to the current angle.
  float32 yaw # Determines the direction how aircraft changes its heading.
")



(provide :dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading "da5a91dc67eed375ef69186b861ceea1")


