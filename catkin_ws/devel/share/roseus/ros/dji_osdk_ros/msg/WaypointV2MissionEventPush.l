;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2MissionEventPush)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2MissionEventPush (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2MISSIONEVENTPUSH")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2MISSIONEVENTPUSH"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2MissionEventPush.msg.html


(defclass dji_osdk_ros::WaypointV2MissionEventPush
  :super ros::object
  :slots (_event _FCTimestamp _interruptReason _recoverProcess _finishReason _waypointIndex _currentMissionExecNum _finishedAllExecNum ))

(defmethod dji_osdk_ros::WaypointV2MissionEventPush
  (:init
   (&key
    ((:event __event) 0)
    ((:FCTimestamp __FCTimestamp) 0)
    ((:interruptReason __interruptReason) 0)
    ((:recoverProcess __recoverProcess) 0)
    ((:finishReason __finishReason) 0)
    ((:waypointIndex __waypointIndex) 0)
    ((:currentMissionExecNum __currentMissionExecNum) 0)
    ((:finishedAllExecNum __finishedAllExecNum) 0)
    )
   (send-super :init)
   (setq _event (round __event))
   (setq _FCTimestamp (round __FCTimestamp))
   (setq _interruptReason (round __interruptReason))
   (setq _recoverProcess (round __recoverProcess))
   (setq _finishReason (round __finishReason))
   (setq _waypointIndex (round __waypointIndex))
   (setq _currentMissionExecNum (round __currentMissionExecNum))
   (setq _finishedAllExecNum (round __finishedAllExecNum))
   self)
  (:event
   (&optional __event)
   (if __event (setq _event __event)) _event)
  (:FCTimestamp
   (&optional __FCTimestamp)
   (if __FCTimestamp (setq _FCTimestamp __FCTimestamp)) _FCTimestamp)
  (:interruptReason
   (&optional __interruptReason)
   (if __interruptReason (setq _interruptReason __interruptReason)) _interruptReason)
  (:recoverProcess
   (&optional __recoverProcess)
   (if __recoverProcess (setq _recoverProcess __recoverProcess)) _recoverProcess)
  (:finishReason
   (&optional __finishReason)
   (if __finishReason (setq _finishReason __finishReason)) _finishReason)
  (:waypointIndex
   (&optional __waypointIndex)
   (if __waypointIndex (setq _waypointIndex __waypointIndex)) _waypointIndex)
  (:currentMissionExecNum
   (&optional __currentMissionExecNum)
   (if __currentMissionExecNum (setq _currentMissionExecNum __currentMissionExecNum)) _currentMissionExecNum)
  (:finishedAllExecNum
   (&optional __finishedAllExecNum)
   (if __finishedAllExecNum (setq _finishedAllExecNum __finishedAllExecNum)) _finishedAllExecNum)
  (:serialization-length
   ()
   (+
    ;; uint8 _event
    1
    ;; uint32 _FCTimestamp
    4
    ;; uint8 _interruptReason
    1
    ;; uint8 _recoverProcess
    1
    ;; uint8 _finishReason
    1
    ;; uint16 _waypointIndex
    2
    ;; uint8 _currentMissionExecNum
    1
    ;; uint8 _finishedAllExecNum
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _event
       (write-byte _event s)
     ;; uint32 _FCTimestamp
       (write-long _FCTimestamp s)
     ;; uint8 _interruptReason
       (write-byte _interruptReason s)
     ;; uint8 _recoverProcess
       (write-byte _recoverProcess s)
     ;; uint8 _finishReason
       (write-byte _finishReason s)
     ;; uint16 _waypointIndex
       (write-word _waypointIndex s)
     ;; uint8 _currentMissionExecNum
       (write-byte _currentMissionExecNum s)
     ;; uint8 _finishedAllExecNum
       (write-byte _finishedAllExecNum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _event
     (setq _event (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _FCTimestamp
     (setq _FCTimestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _interruptReason
     (setq _interruptReason (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _recoverProcess
     (setq _recoverProcess (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _finishReason
     (setq _finishReason (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _waypointIndex
     (setq _waypointIndex (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _currentMissionExecNum
     (setq _currentMissionExecNum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _finishedAllExecNum
     (setq _finishedAllExecNum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2MissionEventPush :md5sum-) "c77093b1b7454aae16109cab2468e222")
(setf (get dji_osdk_ros::WaypointV2MissionEventPush :datatype-) "dji_osdk_ros/WaypointV2MissionEventPush")
(setf (get dji_osdk_ros::WaypointV2MissionEventPush :definition-)
      "uint8 event
uint32 FCTimestamp
#ID:0x01
uint8 interruptReason #0x00:rc triggered interrupt

#ID:0x02
uint8 recoverProcess #0x00:finished pause recover

#ID:0x03
uint8 finishReason #0x00:finished normally; 0x10:External user trigger ended successfully

#ID:0x10
uint16 waypointIndex

#ID:0x11
uint8 currentMissionExecNum
uint8 finishedAllExecNum  #0:not finished; 1:finished all exec num
")



(provide :dji_osdk_ros/WaypointV2MissionEventPush "c77093b1b7454aae16109cab2468e222")


