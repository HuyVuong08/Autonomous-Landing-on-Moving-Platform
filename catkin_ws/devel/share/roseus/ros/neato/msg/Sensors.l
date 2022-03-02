;; Auto-generated. Do not edit!


(when (boundp 'neato::Sensors)
  (if (not (find-package "NEATO"))
    (make-package "NEATO"))
  (shadow 'Sensors (find-package "NEATO")))
(unless (find-package "NEATO::SENSORS")
  (make-package "NEATO::SENSORS"))

(in-package "ROS")
;;//! \htmlinclude Sensors.msg.html


(defclass neato::Sensors
  :super ros::object
  :slots (_WallSensorInMM _BatteryVoltageInmV _LeftDropInMM _RightDropInMM _LeftMagSensor _RightMagSensor _UIButtonInmV _VacuumCurrentInmA _ChargeVoltInmV _BatteryTemp0InC _BatteryTemp1InC _CurrentInmA _SideBrushCurrentInmA _VoltageReferenceInmV _AccelXInmG _AccelYInmG _AccelZInmG _SNSR_DC_JACK_CONNECT _SNSR_DUSTBIN_IS_IN _SNSR_LEFT_WHEEL_EXTENDED _SNSR_RIGHT_WHEEL_EXTENDED _LSIDEBIT _LFRONTBIT _RSIDEBIT _RFRONTBIT ))

(defmethod neato::Sensors
  (:init
   (&key
    ((:WallSensorInMM __WallSensorInMM) 0)
    ((:BatteryVoltageInmV __BatteryVoltageInmV) 0)
    ((:LeftDropInMM __LeftDropInMM) 0)
    ((:RightDropInMM __RightDropInMM) 0)
    ((:LeftMagSensor __LeftMagSensor) 0)
    ((:RightMagSensor __RightMagSensor) 0)
    ((:UIButtonInmV __UIButtonInmV) 0)
    ((:VacuumCurrentInmA __VacuumCurrentInmA) 0)
    ((:ChargeVoltInmV __ChargeVoltInmV) 0)
    ((:BatteryTemp0InC __BatteryTemp0InC) 0)
    ((:BatteryTemp1InC __BatteryTemp1InC) 0)
    ((:CurrentInmA __CurrentInmA) 0)
    ((:SideBrushCurrentInmA __SideBrushCurrentInmA) 0)
    ((:VoltageReferenceInmV __VoltageReferenceInmV) 0)
    ((:AccelXInmG __AccelXInmG) 0)
    ((:AccelYInmG __AccelYInmG) 0)
    ((:AccelZInmG __AccelZInmG) 0)
    ((:SNSR_DC_JACK_CONNECT __SNSR_DC_JACK_CONNECT) nil)
    ((:SNSR_DUSTBIN_IS_IN __SNSR_DUSTBIN_IS_IN) nil)
    ((:SNSR_LEFT_WHEEL_EXTENDED __SNSR_LEFT_WHEEL_EXTENDED) nil)
    ((:SNSR_RIGHT_WHEEL_EXTENDED __SNSR_RIGHT_WHEEL_EXTENDED) nil)
    ((:LSIDEBIT __LSIDEBIT) nil)
    ((:LFRONTBIT __LFRONTBIT) nil)
    ((:RSIDEBIT __RSIDEBIT) nil)
    ((:RFRONTBIT __RFRONTBIT) nil)
    )
   (send-super :init)
   (setq _WallSensorInMM (round __WallSensorInMM))
   (setq _BatteryVoltageInmV (round __BatteryVoltageInmV))
   (setq _LeftDropInMM (round __LeftDropInMM))
   (setq _RightDropInMM (round __RightDropInMM))
   (setq _LeftMagSensor (round __LeftMagSensor))
   (setq _RightMagSensor (round __RightMagSensor))
   (setq _UIButtonInmV (round __UIButtonInmV))
   (setq _VacuumCurrentInmA (round __VacuumCurrentInmA))
   (setq _ChargeVoltInmV (round __ChargeVoltInmV))
   (setq _BatteryTemp0InC (round __BatteryTemp0InC))
   (setq _BatteryTemp1InC (round __BatteryTemp1InC))
   (setq _CurrentInmA (round __CurrentInmA))
   (setq _SideBrushCurrentInmA (round __SideBrushCurrentInmA))
   (setq _VoltageReferenceInmV (round __VoltageReferenceInmV))
   (setq _AccelXInmG (round __AccelXInmG))
   (setq _AccelYInmG (round __AccelYInmG))
   (setq _AccelZInmG (round __AccelZInmG))
   (setq _SNSR_DC_JACK_CONNECT __SNSR_DC_JACK_CONNECT)
   (setq _SNSR_DUSTBIN_IS_IN __SNSR_DUSTBIN_IS_IN)
   (setq _SNSR_LEFT_WHEEL_EXTENDED __SNSR_LEFT_WHEEL_EXTENDED)
   (setq _SNSR_RIGHT_WHEEL_EXTENDED __SNSR_RIGHT_WHEEL_EXTENDED)
   (setq _LSIDEBIT __LSIDEBIT)
   (setq _LFRONTBIT __LFRONTBIT)
   (setq _RSIDEBIT __RSIDEBIT)
   (setq _RFRONTBIT __RFRONTBIT)
   self)
  (:WallSensorInMM
   (&optional __WallSensorInMM)
   (if __WallSensorInMM (setq _WallSensorInMM __WallSensorInMM)) _WallSensorInMM)
  (:BatteryVoltageInmV
   (&optional __BatteryVoltageInmV)
   (if __BatteryVoltageInmV (setq _BatteryVoltageInmV __BatteryVoltageInmV)) _BatteryVoltageInmV)
  (:LeftDropInMM
   (&optional __LeftDropInMM)
   (if __LeftDropInMM (setq _LeftDropInMM __LeftDropInMM)) _LeftDropInMM)
  (:RightDropInMM
   (&optional __RightDropInMM)
   (if __RightDropInMM (setq _RightDropInMM __RightDropInMM)) _RightDropInMM)
  (:LeftMagSensor
   (&optional __LeftMagSensor)
   (if __LeftMagSensor (setq _LeftMagSensor __LeftMagSensor)) _LeftMagSensor)
  (:RightMagSensor
   (&optional __RightMagSensor)
   (if __RightMagSensor (setq _RightMagSensor __RightMagSensor)) _RightMagSensor)
  (:UIButtonInmV
   (&optional __UIButtonInmV)
   (if __UIButtonInmV (setq _UIButtonInmV __UIButtonInmV)) _UIButtonInmV)
  (:VacuumCurrentInmA
   (&optional __VacuumCurrentInmA)
   (if __VacuumCurrentInmA (setq _VacuumCurrentInmA __VacuumCurrentInmA)) _VacuumCurrentInmA)
  (:ChargeVoltInmV
   (&optional __ChargeVoltInmV)
   (if __ChargeVoltInmV (setq _ChargeVoltInmV __ChargeVoltInmV)) _ChargeVoltInmV)
  (:BatteryTemp0InC
   (&optional __BatteryTemp0InC)
   (if __BatteryTemp0InC (setq _BatteryTemp0InC __BatteryTemp0InC)) _BatteryTemp0InC)
  (:BatteryTemp1InC
   (&optional __BatteryTemp1InC)
   (if __BatteryTemp1InC (setq _BatteryTemp1InC __BatteryTemp1InC)) _BatteryTemp1InC)
  (:CurrentInmA
   (&optional __CurrentInmA)
   (if __CurrentInmA (setq _CurrentInmA __CurrentInmA)) _CurrentInmA)
  (:SideBrushCurrentInmA
   (&optional __SideBrushCurrentInmA)
   (if __SideBrushCurrentInmA (setq _SideBrushCurrentInmA __SideBrushCurrentInmA)) _SideBrushCurrentInmA)
  (:VoltageReferenceInmV
   (&optional __VoltageReferenceInmV)
   (if __VoltageReferenceInmV (setq _VoltageReferenceInmV __VoltageReferenceInmV)) _VoltageReferenceInmV)
  (:AccelXInmG
   (&optional __AccelXInmG)
   (if __AccelXInmG (setq _AccelXInmG __AccelXInmG)) _AccelXInmG)
  (:AccelYInmG
   (&optional __AccelYInmG)
   (if __AccelYInmG (setq _AccelYInmG __AccelYInmG)) _AccelYInmG)
  (:AccelZInmG
   (&optional __AccelZInmG)
   (if __AccelZInmG (setq _AccelZInmG __AccelZInmG)) _AccelZInmG)
  (:SNSR_DC_JACK_CONNECT
   (&optional (__SNSR_DC_JACK_CONNECT :null))
   (if (not (eq __SNSR_DC_JACK_CONNECT :null)) (setq _SNSR_DC_JACK_CONNECT __SNSR_DC_JACK_CONNECT)) _SNSR_DC_JACK_CONNECT)
  (:SNSR_DUSTBIN_IS_IN
   (&optional (__SNSR_DUSTBIN_IS_IN :null))
   (if (not (eq __SNSR_DUSTBIN_IS_IN :null)) (setq _SNSR_DUSTBIN_IS_IN __SNSR_DUSTBIN_IS_IN)) _SNSR_DUSTBIN_IS_IN)
  (:SNSR_LEFT_WHEEL_EXTENDED
   (&optional (__SNSR_LEFT_WHEEL_EXTENDED :null))
   (if (not (eq __SNSR_LEFT_WHEEL_EXTENDED :null)) (setq _SNSR_LEFT_WHEEL_EXTENDED __SNSR_LEFT_WHEEL_EXTENDED)) _SNSR_LEFT_WHEEL_EXTENDED)
  (:SNSR_RIGHT_WHEEL_EXTENDED
   (&optional (__SNSR_RIGHT_WHEEL_EXTENDED :null))
   (if (not (eq __SNSR_RIGHT_WHEEL_EXTENDED :null)) (setq _SNSR_RIGHT_WHEEL_EXTENDED __SNSR_RIGHT_WHEEL_EXTENDED)) _SNSR_RIGHT_WHEEL_EXTENDED)
  (:LSIDEBIT
   (&optional (__LSIDEBIT :null))
   (if (not (eq __LSIDEBIT :null)) (setq _LSIDEBIT __LSIDEBIT)) _LSIDEBIT)
  (:LFRONTBIT
   (&optional (__LFRONTBIT :null))
   (if (not (eq __LFRONTBIT :null)) (setq _LFRONTBIT __LFRONTBIT)) _LFRONTBIT)
  (:RSIDEBIT
   (&optional (__RSIDEBIT :null))
   (if (not (eq __RSIDEBIT :null)) (setq _RSIDEBIT __RSIDEBIT)) _RSIDEBIT)
  (:RFRONTBIT
   (&optional (__RFRONTBIT :null))
   (if (not (eq __RFRONTBIT :null)) (setq _RFRONTBIT __RFRONTBIT)) _RFRONTBIT)
  (:serialization-length
   ()
   (+
    ;; uint16 _WallSensorInMM
    2
    ;; uint16 _BatteryVoltageInmV
    2
    ;; uint16 _LeftDropInMM
    2
    ;; uint16 _RightDropInMM
    2
    ;; int16 _LeftMagSensor
    2
    ;; int16 _RightMagSensor
    2
    ;; int16 _UIButtonInmV
    2
    ;; int16 _VacuumCurrentInmA
    2
    ;; uint16 _ChargeVoltInmV
    2
    ;; int8 _BatteryTemp0InC
    1
    ;; int8 _BatteryTemp1InC
    1
    ;; int16 _CurrentInmA
    2
    ;; int16 _SideBrushCurrentInmA
    2
    ;; int16 _VoltageReferenceInmV
    2
    ;; int16 _AccelXInmG
    2
    ;; int16 _AccelYInmG
    2
    ;; int16 _AccelZInmG
    2
    ;; bool _SNSR_DC_JACK_CONNECT
    1
    ;; bool _SNSR_DUSTBIN_IS_IN
    1
    ;; bool _SNSR_LEFT_WHEEL_EXTENDED
    1
    ;; bool _SNSR_RIGHT_WHEEL_EXTENDED
    1
    ;; bool _LSIDEBIT
    1
    ;; bool _LFRONTBIT
    1
    ;; bool _RSIDEBIT
    1
    ;; bool _RFRONTBIT
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _WallSensorInMM
       (write-word _WallSensorInMM s)
     ;; uint16 _BatteryVoltageInmV
       (write-word _BatteryVoltageInmV s)
     ;; uint16 _LeftDropInMM
       (write-word _LeftDropInMM s)
     ;; uint16 _RightDropInMM
       (write-word _RightDropInMM s)
     ;; int16 _LeftMagSensor
       (write-word _LeftMagSensor s)
     ;; int16 _RightMagSensor
       (write-word _RightMagSensor s)
     ;; int16 _UIButtonInmV
       (write-word _UIButtonInmV s)
     ;; int16 _VacuumCurrentInmA
       (write-word _VacuumCurrentInmA s)
     ;; uint16 _ChargeVoltInmV
       (write-word _ChargeVoltInmV s)
     ;; int8 _BatteryTemp0InC
       (write-byte _BatteryTemp0InC s)
     ;; int8 _BatteryTemp1InC
       (write-byte _BatteryTemp1InC s)
     ;; int16 _CurrentInmA
       (write-word _CurrentInmA s)
     ;; int16 _SideBrushCurrentInmA
       (write-word _SideBrushCurrentInmA s)
     ;; int16 _VoltageReferenceInmV
       (write-word _VoltageReferenceInmV s)
     ;; int16 _AccelXInmG
       (write-word _AccelXInmG s)
     ;; int16 _AccelYInmG
       (write-word _AccelYInmG s)
     ;; int16 _AccelZInmG
       (write-word _AccelZInmG s)
     ;; bool _SNSR_DC_JACK_CONNECT
       (if _SNSR_DC_JACK_CONNECT (write-byte -1 s) (write-byte 0 s))
     ;; bool _SNSR_DUSTBIN_IS_IN
       (if _SNSR_DUSTBIN_IS_IN (write-byte -1 s) (write-byte 0 s))
     ;; bool _SNSR_LEFT_WHEEL_EXTENDED
       (if _SNSR_LEFT_WHEEL_EXTENDED (write-byte -1 s) (write-byte 0 s))
     ;; bool _SNSR_RIGHT_WHEEL_EXTENDED
       (if _SNSR_RIGHT_WHEEL_EXTENDED (write-byte -1 s) (write-byte 0 s))
     ;; bool _LSIDEBIT
       (if _LSIDEBIT (write-byte -1 s) (write-byte 0 s))
     ;; bool _LFRONTBIT
       (if _LFRONTBIT (write-byte -1 s) (write-byte 0 s))
     ;; bool _RSIDEBIT
       (if _RSIDEBIT (write-byte -1 s) (write-byte 0 s))
     ;; bool _RFRONTBIT
       (if _RFRONTBIT (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _WallSensorInMM
     (setq _WallSensorInMM (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _BatteryVoltageInmV
     (setq _BatteryVoltageInmV (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _LeftDropInMM
     (setq _LeftDropInMM (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _RightDropInMM
     (setq _RightDropInMM (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _LeftMagSensor
     (setq _LeftMagSensor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _RightMagSensor
     (setq _RightMagSensor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _UIButtonInmV
     (setq _UIButtonInmV (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _VacuumCurrentInmA
     (setq _VacuumCurrentInmA (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ChargeVoltInmV
     (setq _ChargeVoltInmV (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _BatteryTemp0InC
     (setq _BatteryTemp0InC (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _BatteryTemp0InC 127) (setq _BatteryTemp0InC (- _BatteryTemp0InC 256)))
   ;; int8 _BatteryTemp1InC
     (setq _BatteryTemp1InC (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _BatteryTemp1InC 127) (setq _BatteryTemp1InC (- _BatteryTemp1InC 256)))
   ;; int16 _CurrentInmA
     (setq _CurrentInmA (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _SideBrushCurrentInmA
     (setq _SideBrushCurrentInmA (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _VoltageReferenceInmV
     (setq _VoltageReferenceInmV (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _AccelXInmG
     (setq _AccelXInmG (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _AccelYInmG
     (setq _AccelYInmG (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _AccelZInmG
     (setq _AccelZInmG (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _SNSR_DC_JACK_CONNECT
     (setq _SNSR_DC_JACK_CONNECT (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _SNSR_DUSTBIN_IS_IN
     (setq _SNSR_DUSTBIN_IS_IN (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _SNSR_LEFT_WHEEL_EXTENDED
     (setq _SNSR_LEFT_WHEEL_EXTENDED (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _SNSR_RIGHT_WHEEL_EXTENDED
     (setq _SNSR_RIGHT_WHEEL_EXTENDED (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _LSIDEBIT
     (setq _LSIDEBIT (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _LFRONTBIT
     (setq _LFRONTBIT (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RSIDEBIT
     (setq _RSIDEBIT (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _RFRONTBIT
     (setq _RFRONTBIT (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get neato::Sensors :md5sum-) "e1c7bd2ddcb3d5f803e6c67b3919c35f")
(setf (get neato::Sensors :datatype-) "neato/Sensors")
(setf (get neato::Sensors :definition-)
      "
#Analog Sensors
uint16  WallSensorInMM              #Example: 34585
uint16  BatteryVoltageInmV          #Example: 16348
uint16  LeftDropInMM                #Example: 0
uint16  RightDropInMM               #Example: 0
int16   LeftMagSensor               #Example: 32768
int16   RightMagSensor              #Example: 32768
int16   UIButtonInmV                #Example: 3330
int16   VacuumCurrentInmA           #Example: 0
uint16  ChargeVoltInmV              #Example: 24024
int8    BatteryTemp0InC             #Example: 30
int8    BatteryTemp1InC             #Example: 28
int16   CurrentInmA                 #Example: 40
int16   SideBrushCurrentInmA        #Example: 0
int16   VoltageReferenceInmV        #Example: 1225
int16   AccelXInmG                  #Example: 36
int16   AccelYInmG                  #Example: 16
int16   AccelZInmG                  #Example: 1008
# the ones below are not supported due to lack of compatibility
# int8    XTemp0InC                   #Example: 28
# int8    XTemp1InC                   #Example: 28
# int8    NotConnected1               #Example: 0 - unknown
# int8    NotConnected2               #Example: 0 - unknown
# int8    NotConnected3               #Example: 0 - unknown

#Digital sensors
bool    SNSR_DC_JACK_CONNECT        #Example: 0 
bool    SNSR_DUSTBIN_IS_IN          #Example: 1
bool    SNSR_LEFT_WHEEL_EXTENDED    #Example: 0
bool    SNSR_RIGHT_WHEEL_EXTENDED   #Example: 0
bool    LSIDEBIT                    #Example: 0 
bool    LFRONTBIT                   #Example: 0
bool    RSIDEBIT                    #Example: 0 
bool    RFRONTBIT                   #Example: 0 


")



(provide :neato/Sensors "e1c7bd2ddcb3d5f803e6c67b3919c35f")


