;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2AircraftControlActuatorFlying)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2AircraftControlActuatorFlying (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2AIRCRAFTCONTROLACTUATORFLYING")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2AIRCRAFTCONTROLACTUATORFLYING"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2AircraftControlActuatorFlying.msg.html


(defclass dji_osdk_ros::WaypointV2AircraftControlActuatorFlying
  :super ros::object
  :slots (_isStartFlying ))

(defmethod dji_osdk_ros::WaypointV2AircraftControlActuatorFlying
  (:init
   (&key
    ((:isStartFlying __isStartFlying) 0)
    )
   (send-super :init)
   (setq _isStartFlying (round __isStartFlying))
   self)
  (:isStartFlying
   (&optional __isStartFlying)
   (if __isStartFlying (setq _isStartFlying __isStartFlying)) _isStartFlying)
  (:serialization-length
   ()
   (+
    ;; uint8 _isStartFlying
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _isStartFlying
       (write-byte _isStartFlying s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _isStartFlying
     (setq _isStartFlying (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2AircraftControlActuatorFlying :md5sum-) "dc8731a524ee2cb9265a3e7483e070f3")
(setf (get dji_osdk_ros::WaypointV2AircraftControlActuatorFlying :datatype-) "dji_osdk_ros/WaypointV2AircraftControlActuatorFlying")
(setf (get dji_osdk_ros::WaypointV2AircraftControlActuatorFlying :definition-)
      "# This class defines if the aircraft starts or stops the flight.s.
uint8  isStartFlying  # Determines the aircraft start flying or stop flying.
                        # ``TRUE`` for the aircraft to start flying.
")



(provide :dji_osdk_ros/WaypointV2AircraftControlActuatorFlying "dc8731a524ee2cb9265a3e7483e070f3")


