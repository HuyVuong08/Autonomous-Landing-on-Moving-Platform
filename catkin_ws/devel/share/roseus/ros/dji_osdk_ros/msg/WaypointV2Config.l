;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2Config)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2Config (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2CONFIG")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2CONFIG"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2Config.msg.html


(defclass dji_osdk_ros::WaypointV2Config
  :super ros::object
  :slots (_useLocalCruiseVel _useLocalMaxVel ))

(defmethod dji_osdk_ros::WaypointV2Config
  (:init
   (&key
    ((:useLocalCruiseVel __useLocalCruiseVel) 0)
    ((:useLocalMaxVel __useLocalMaxVel) 0)
    )
   (send-super :init)
   (setq _useLocalCruiseVel (round __useLocalCruiseVel))
   (setq _useLocalMaxVel (round __useLocalMaxVel))
   self)
  (:useLocalCruiseVel
   (&optional __useLocalCruiseVel)
   (if __useLocalCruiseVel (setq _useLocalCruiseVel __useLocalCruiseVel)) _useLocalCruiseVel)
  (:useLocalMaxVel
   (&optional __useLocalMaxVel)
   (if __useLocalMaxVel (setq _useLocalMaxVel __useLocalMaxVel)) _useLocalMaxVel)
  (:serialization-length
   ()
   (+
    ;; uint8 _useLocalCruiseVel
    1
    ;; uint8 _useLocalMaxVel
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _useLocalCruiseVel
       (write-byte _useLocalCruiseVel s)
     ;; uint8 _useLocalMaxVel
       (write-byte _useLocalMaxVel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _useLocalCruiseVel
     (setq _useLocalCruiseVel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _useLocalMaxVel
     (setq _useLocalMaxVel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2Config :md5sum-) "32f75247c8f43b9a30c17e7ebb7bf75b")
(setf (get dji_osdk_ros::WaypointV2Config :datatype-) "dji_osdk_ros/WaypointV2Config")
(setf (get dji_osdk_ros::WaypointV2Config :definition-)
      "# Represents current waypoint's speed config.
# 0: set local waypoint's cruise speed,
# 1: unset global waypoint's cruise speed*/
uint8  useLocalCruiseVel
# 0: set local waypoint's max speed,
# 1: unset global waypoint's max speed*/
uint8  useLocalMaxVel
")



(provide :dji_osdk_ros/WaypointV2Config "32f75247c8f43b9a30c17e7ebb7bf75b")


