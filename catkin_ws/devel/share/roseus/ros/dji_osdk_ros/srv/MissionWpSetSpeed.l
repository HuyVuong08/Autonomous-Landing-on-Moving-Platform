;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::MissionWpSetSpeed)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'MissionWpSetSpeed (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::MISSIONWPSETSPEED")
  (make-package "DJI_OSDK_ROS::MISSIONWPSETSPEED"))
(unless (find-package "DJI_OSDK_ROS::MISSIONWPSETSPEEDREQUEST")
  (make-package "DJI_OSDK_ROS::MISSIONWPSETSPEEDREQUEST"))
(unless (find-package "DJI_OSDK_ROS::MISSIONWPSETSPEEDRESPONSE")
  (make-package "DJI_OSDK_ROS::MISSIONWPSETSPEEDRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::MissionWpSetSpeedRequest
  :super ros::object
  :slots (_speed ))

(defmethod dji_osdk_ros::MissionWpSetSpeedRequest
  (:init
   (&key
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _speed (float __speed))
   self)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass dji_osdk_ros::MissionWpSetSpeedResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::MissionWpSetSpeedResponse
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

(defclass dji_osdk_ros::MissionWpSetSpeed
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::MissionWpSetSpeed :md5sum-) "b087da1f6984d35b6029aa78841b05a6")
(setf (get dji_osdk_ros::MissionWpSetSpeed :datatype-) "dji_osdk_ros/MissionWpSetSpeed")
(setf (get dji_osdk_ros::MissionWpSetSpeed :request) dji_osdk_ros::MissionWpSetSpeedRequest)
(setf (get dji_osdk_ros::MissionWpSetSpeed :response) dji_osdk_ros::MissionWpSetSpeedResponse)

(defmethod dji_osdk_ros::MissionWpSetSpeedRequest
  (:response () (instance dji_osdk_ros::MissionWpSetSpeedResponse :init)))

(setf (get dji_osdk_ros::MissionWpSetSpeedRequest :md5sum-) "b087da1f6984d35b6029aa78841b05a6")
(setf (get dji_osdk_ros::MissionWpSetSpeedRequest :datatype-) "dji_osdk_ros/MissionWpSetSpeedRequest")
(setf (get dji_osdk_ros::MissionWpSetSpeedRequest :definition-)
      "float32 speed
---
bool result
")

(setf (get dji_osdk_ros::MissionWpSetSpeedResponse :md5sum-) "b087da1f6984d35b6029aa78841b05a6")
(setf (get dji_osdk_ros::MissionWpSetSpeedResponse :datatype-) "dji_osdk_ros/MissionWpSetSpeedResponse")
(setf (get dji_osdk_ros::MissionWpSetSpeedResponse :definition-)
      "float32 speed
---
bool result
")



(provide :dji_osdk_ros/MissionWpSetSpeed "b087da1f6984d35b6029aa78841b05a6")


