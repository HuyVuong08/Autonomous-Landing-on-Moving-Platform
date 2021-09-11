;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2MissionStatePush)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2MissionStatePush (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2MISSIONSTATEPUSH")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2MISSIONSTATEPUSH"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2MissionStatePush.msg.html


(defclass dji_osdk_ros::WaypointV2MissionStatePush
  :super ros::object
  :slots (_commonDataVersion _commonDataLen _curWaypointIndex _state _velocity ))

(defmethod dji_osdk_ros::WaypointV2MissionStatePush
  (:init
   (&key
    ((:commonDataVersion __commonDataVersion) 0)
    ((:commonDataLen __commonDataLen) 0)
    ((:curWaypointIndex __curWaypointIndex) 0)
    ((:state __state) 0)
    ((:velocity __velocity) 0)
    )
   (send-super :init)
   (setq _commonDataVersion (round __commonDataVersion))
   (setq _commonDataLen (round __commonDataLen))
   (setq _curWaypointIndex (round __curWaypointIndex))
   (setq _state (round __state))
   (setq _velocity (round __velocity))
   self)
  (:commonDataVersion
   (&optional __commonDataVersion)
   (if __commonDataVersion (setq _commonDataVersion __commonDataVersion)) _commonDataVersion)
  (:commonDataLen
   (&optional __commonDataLen)
   (if __commonDataLen (setq _commonDataLen __commonDataLen)) _commonDataLen)
  (:curWaypointIndex
   (&optional __curWaypointIndex)
   (if __curWaypointIndex (setq _curWaypointIndex __curWaypointIndex)) _curWaypointIndex)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; int8 _commonDataVersion
    1
    ;; uint16 _commonDataLen
    2
    ;; uint16 _curWaypointIndex
    2
    ;; uint8 _state
    1
    ;; uint16 _velocity
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _commonDataVersion
       (write-byte _commonDataVersion s)
     ;; uint16 _commonDataLen
       (write-word _commonDataLen s)
     ;; uint16 _curWaypointIndex
       (write-word _curWaypointIndex s)
     ;; uint8 _state
       (write-byte _state s)
     ;; uint16 _velocity
       (write-word _velocity s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _commonDataVersion
     (setq _commonDataVersion (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _commonDataVersion 127) (setq _commonDataVersion (- _commonDataVersion 256)))
   ;; uint16 _commonDataLen
     (setq _commonDataLen (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _curWaypointIndex
     (setq _curWaypointIndex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _velocity
     (setq _velocity (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2MissionStatePush :md5sum-) "8f0a910f9304e8d0a921ad51a303b666")
(setf (get dji_osdk_ros::WaypointV2MissionStatePush :datatype-) "dji_osdk_ros/WaypointV2MissionStatePush")
(setf (get dji_osdk_ros::WaypointV2MissionStatePush :definition-)
      "int8   commonDataVersion
uint16 commonDataLen
uint16 curWaypointIndex
uint8  state  #0x0:ground station not start. 0x1:mission prepared. 0x2:enter mission.
               #0x3:execute flying route mission.
               #0x4:pause state. 0x5:enter mission after ending pause.
               #0x6:exit mission.
uint16 velocity #uint:0.01m/s
")



(provide :dji_osdk_ros/WaypointV2MissionStatePush "8f0a910f9304e8d0a921ad51a303b666")


