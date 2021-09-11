;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::SmartBatteryState)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'SmartBatteryState (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::SMARTBATTERYSTATE")
  (make-package "DJI_OSDK_ROS::SMARTBATTERYSTATE"))

(in-package "ROS")
;;//! \htmlinclude SmartBatteryState.msg.html


(defclass dji_osdk_ros::SmartBatteryState
  :super ros::object
  :slots (_cellBreak _selfCheckError _batteryClosedReason _batSOHState _maxCycleLimit _batteryCommunicationAbnormal _hasCellBreak _heatState ))

(defmethod dji_osdk_ros::SmartBatteryState
  (:init
   (&key
    ((:cellBreak __cellBreak) 0)
    ((:selfCheckError __selfCheckError) 0)
    ((:batteryClosedReason __batteryClosedReason) 0)
    ((:batSOHState __batSOHState) 0)
    ((:maxCycleLimit __maxCycleLimit) 0)
    ((:batteryCommunicationAbnormal __batteryCommunicationAbnormal) 0)
    ((:hasCellBreak __hasCellBreak) 0)
    ((:heatState __heatState) 0)
    )
   (send-super :init)
   (setq _cellBreak (round __cellBreak))
   (setq _selfCheckError (round __selfCheckError))
   (setq _batteryClosedReason (round __batteryClosedReason))
   (setq _batSOHState (round __batSOHState))
   (setq _maxCycleLimit (round __maxCycleLimit))
   (setq _batteryCommunicationAbnormal (round __batteryCommunicationAbnormal))
   (setq _hasCellBreak (round __hasCellBreak))
   (setq _heatState (round __heatState))
   self)
  (:cellBreak
   (&optional __cellBreak)
   (if __cellBreak (setq _cellBreak __cellBreak)) _cellBreak)
  (:selfCheckError
   (&optional __selfCheckError)
   (if __selfCheckError (setq _selfCheckError __selfCheckError)) _selfCheckError)
  (:batteryClosedReason
   (&optional __batteryClosedReason)
   (if __batteryClosedReason (setq _batteryClosedReason __batteryClosedReason)) _batteryClosedReason)
  (:batSOHState
   (&optional __batSOHState)
   (if __batSOHState (setq _batSOHState __batSOHState)) _batSOHState)
  (:maxCycleLimit
   (&optional __maxCycleLimit)
   (if __maxCycleLimit (setq _maxCycleLimit __maxCycleLimit)) _maxCycleLimit)
  (:batteryCommunicationAbnormal
   (&optional __batteryCommunicationAbnormal)
   (if __batteryCommunicationAbnormal (setq _batteryCommunicationAbnormal __batteryCommunicationAbnormal)) _batteryCommunicationAbnormal)
  (:hasCellBreak
   (&optional __hasCellBreak)
   (if __hasCellBreak (setq _hasCellBreak __hasCellBreak)) _hasCellBreak)
  (:heatState
   (&optional __heatState)
   (if __heatState (setq _heatState __heatState)) _heatState)
  (:serialization-length
   ()
   (+
    ;; uint8 _cellBreak
    1
    ;; uint8 _selfCheckError
    1
    ;; uint8 _batteryClosedReason
    1
    ;; uint8 _batSOHState
    1
    ;; uint8 _maxCycleLimit
    1
    ;; uint8 _batteryCommunicationAbnormal
    1
    ;; uint8 _hasCellBreak
    1
    ;; uint8 _heatState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cellBreak
       (write-byte _cellBreak s)
     ;; uint8 _selfCheckError
       (write-byte _selfCheckError s)
     ;; uint8 _batteryClosedReason
       (write-byte _batteryClosedReason s)
     ;; uint8 _batSOHState
       (write-byte _batSOHState s)
     ;; uint8 _maxCycleLimit
       (write-byte _maxCycleLimit s)
     ;; uint8 _batteryCommunicationAbnormal
       (write-byte _batteryCommunicationAbnormal s)
     ;; uint8 _hasCellBreak
       (write-byte _hasCellBreak s)
     ;; uint8 _heatState
       (write-byte _heatState s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cellBreak
     (setq _cellBreak (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _selfCheckError
     (setq _selfCheckError (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _batteryClosedReason
     (setq _batteryClosedReason (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _batSOHState
     (setq _batSOHState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _maxCycleLimit
     (setq _maxCycleLimit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _batteryCommunicationAbnormal
     (setq _batteryCommunicationAbnormal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hasCellBreak
     (setq _hasCellBreak (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _heatState
     (setq _heatState (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dji_osdk_ros::SmartBatteryState :md5sum-) "2a0ddaf2e9bc1f4b0e5e1567435f698e")
(setf (get dji_osdk_ros::SmartBatteryState :datatype-) "dji_osdk_ros/SmartBatteryState")
(setf (get dji_osdk_ros::SmartBatteryState :definition-)
      "uint8 cellBreak                  # 0:normal;other:Undervoltage core index(0x01-0x1F)
uint8 selfCheckError             # enum-type: DJISmartBatterySelfCheck
uint8 batteryClosedReason        # enum-type: DJI_BETTERY_CLOSED_REASON
uint8 batSOHState                # enum-type: DJISmartBatterySohState*/
uint8 maxCycleLimit              # APP:cycle_limit*10*/
uint8 batteryCommunicationAbnormal
uint8 hasCellBreak
uint8 heatState                  # enum-type: DJISmartBatteryHeatState
")



(provide :dji_osdk_ros/SmartBatteryState "2a0ddaf2e9bc1f4b0e5e1567435f698e")


