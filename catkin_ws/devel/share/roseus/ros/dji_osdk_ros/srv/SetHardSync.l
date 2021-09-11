;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SetHardSync)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SetHardSync (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SETHARDSYNC")
  (make-package "DJI_OSDK_ROS::SETHARDSYNC"))
(unless (find-package "DJI_OSDK_ROS::SETHARDSYNCREQUEST")
  (make-package "DJI_OSDK_ROS::SETHARDSYNCREQUEST"))
(unless (find-package "DJI_OSDK_ROS::SETHARDSYNCRESPONSE")
  (make-package "DJI_OSDK_ROS::SETHARDSYNCRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::SetHardSyncRequest
  :super ros::object
  :slots (_frequency _tag ))

(defmethod dji_osdk_ros::SetHardSyncRequest
  (:init
   (&key
    ((:frequency __frequency) 0)
    ((:tag __tag) 0)
    )
   (send-super :init)
   (setq _frequency (round __frequency))
   (setq _tag (round __tag))
   self)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:tag
   (&optional __tag)
   (if __tag (setq _tag __tag)) _tag)
  (:serialization-length
   ()
   (+
    ;; uint32 _frequency
    4
    ;; uint16 _tag
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _frequency
       (write-long _frequency s)
     ;; uint16 _tag
       (write-word _tag s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _frequency
     (setq _frequency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _tag
     (setq _tag (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dji_osdk_ros::SetHardSyncResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::SetHardSyncResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass dji_osdk_ros::SetHardSync
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::SetHardSync :md5sum-) "11e826f14456b3511264f6a734868e08")
(setf (get dji_osdk_ros::SetHardSync :datatype-) "dji_osdk_ros/SetHardSync")
(setf (get dji_osdk_ros::SetHardSync :request) dji_osdk_ros::SetHardSyncRequest)
(setf (get dji_osdk_ros::SetHardSync :response) dji_osdk_ros::SetHardSyncResponse)

(defmethod dji_osdk_ros::SetHardSyncRequest
  (:response () (instance dji_osdk_ros::SetHardSyncResponse :init)))

(setf (get dji_osdk_ros::SetHardSyncRequest :md5sum-) "11e826f14456b3511264f6a734868e08")
(setf (get dji_osdk_ros::SetHardSyncRequest :datatype-) "dji_osdk_ros/SetHardSyncRequest")
(setf (get dji_osdk_ros::SetHardSyncRequest :definition-)
      "uint32 frequency  # frequency in Hz
uint16 tag        # the tag is to distinguish between different call
---
uint8 result

")

(setf (get dji_osdk_ros::SetHardSyncResponse :md5sum-) "11e826f14456b3511264f6a734868e08")
(setf (get dji_osdk_ros::SetHardSyncResponse :datatype-) "dji_osdk_ros/SetHardSyncResponse")
(setf (get dji_osdk_ros::SetHardSyncResponse :definition-)
      "uint32 frequency  # frequency in Hz
uint16 tag        # the tag is to distinguish between different call
---
uint8 result

")



(provide :dji_osdk_ros/SetHardSync "11e826f14456b3511264f6a734868e08")


