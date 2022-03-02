; Auto-generated. Do not edit!


(cl:in-package neato-msg)


;//! \htmlinclude Sensors.msg.html

(cl:defclass <Sensors> (roslisp-msg-protocol:ros-message)
  ((WallSensorInMM
    :reader WallSensorInMM
    :initarg :WallSensorInMM
    :type cl:fixnum
    :initform 0)
   (BatteryVoltageInmV
    :reader BatteryVoltageInmV
    :initarg :BatteryVoltageInmV
    :type cl:fixnum
    :initform 0)
   (LeftDropInMM
    :reader LeftDropInMM
    :initarg :LeftDropInMM
    :type cl:fixnum
    :initform 0)
   (RightDropInMM
    :reader RightDropInMM
    :initarg :RightDropInMM
    :type cl:fixnum
    :initform 0)
   (LeftMagSensor
    :reader LeftMagSensor
    :initarg :LeftMagSensor
    :type cl:fixnum
    :initform 0)
   (RightMagSensor
    :reader RightMagSensor
    :initarg :RightMagSensor
    :type cl:fixnum
    :initform 0)
   (UIButtonInmV
    :reader UIButtonInmV
    :initarg :UIButtonInmV
    :type cl:fixnum
    :initform 0)
   (VacuumCurrentInmA
    :reader VacuumCurrentInmA
    :initarg :VacuumCurrentInmA
    :type cl:fixnum
    :initform 0)
   (ChargeVoltInmV
    :reader ChargeVoltInmV
    :initarg :ChargeVoltInmV
    :type cl:fixnum
    :initform 0)
   (BatteryTemp0InC
    :reader BatteryTemp0InC
    :initarg :BatteryTemp0InC
    :type cl:fixnum
    :initform 0)
   (BatteryTemp1InC
    :reader BatteryTemp1InC
    :initarg :BatteryTemp1InC
    :type cl:fixnum
    :initform 0)
   (CurrentInmA
    :reader CurrentInmA
    :initarg :CurrentInmA
    :type cl:fixnum
    :initform 0)
   (SideBrushCurrentInmA
    :reader SideBrushCurrentInmA
    :initarg :SideBrushCurrentInmA
    :type cl:fixnum
    :initform 0)
   (VoltageReferenceInmV
    :reader VoltageReferenceInmV
    :initarg :VoltageReferenceInmV
    :type cl:fixnum
    :initform 0)
   (AccelXInmG
    :reader AccelXInmG
    :initarg :AccelXInmG
    :type cl:fixnum
    :initform 0)
   (AccelYInmG
    :reader AccelYInmG
    :initarg :AccelYInmG
    :type cl:fixnum
    :initform 0)
   (AccelZInmG
    :reader AccelZInmG
    :initarg :AccelZInmG
    :type cl:fixnum
    :initform 0)
   (SNSR_DC_JACK_CONNECT
    :reader SNSR_DC_JACK_CONNECT
    :initarg :SNSR_DC_JACK_CONNECT
    :type cl:boolean
    :initform cl:nil)
   (SNSR_DUSTBIN_IS_IN
    :reader SNSR_DUSTBIN_IS_IN
    :initarg :SNSR_DUSTBIN_IS_IN
    :type cl:boolean
    :initform cl:nil)
   (SNSR_LEFT_WHEEL_EXTENDED
    :reader SNSR_LEFT_WHEEL_EXTENDED
    :initarg :SNSR_LEFT_WHEEL_EXTENDED
    :type cl:boolean
    :initform cl:nil)
   (SNSR_RIGHT_WHEEL_EXTENDED
    :reader SNSR_RIGHT_WHEEL_EXTENDED
    :initarg :SNSR_RIGHT_WHEEL_EXTENDED
    :type cl:boolean
    :initform cl:nil)
   (LSIDEBIT
    :reader LSIDEBIT
    :initarg :LSIDEBIT
    :type cl:boolean
    :initform cl:nil)
   (LFRONTBIT
    :reader LFRONTBIT
    :initarg :LFRONTBIT
    :type cl:boolean
    :initform cl:nil)
   (RSIDEBIT
    :reader RSIDEBIT
    :initarg :RSIDEBIT
    :type cl:boolean
    :initform cl:nil)
   (RFRONTBIT
    :reader RFRONTBIT
    :initarg :RFRONTBIT
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Sensors (<Sensors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sensors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sensors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name neato-msg:<Sensors> is deprecated: use neato-msg:Sensors instead.")))

(cl:ensure-generic-function 'WallSensorInMM-val :lambda-list '(m))
(cl:defmethod WallSensorInMM-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:WallSensorInMM-val is deprecated.  Use neato-msg:WallSensorInMM instead.")
  (WallSensorInMM m))

(cl:ensure-generic-function 'BatteryVoltageInmV-val :lambda-list '(m))
(cl:defmethod BatteryVoltageInmV-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:BatteryVoltageInmV-val is deprecated.  Use neato-msg:BatteryVoltageInmV instead.")
  (BatteryVoltageInmV m))

(cl:ensure-generic-function 'LeftDropInMM-val :lambda-list '(m))
(cl:defmethod LeftDropInMM-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:LeftDropInMM-val is deprecated.  Use neato-msg:LeftDropInMM instead.")
  (LeftDropInMM m))

(cl:ensure-generic-function 'RightDropInMM-val :lambda-list '(m))
(cl:defmethod RightDropInMM-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:RightDropInMM-val is deprecated.  Use neato-msg:RightDropInMM instead.")
  (RightDropInMM m))

(cl:ensure-generic-function 'LeftMagSensor-val :lambda-list '(m))
(cl:defmethod LeftMagSensor-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:LeftMagSensor-val is deprecated.  Use neato-msg:LeftMagSensor instead.")
  (LeftMagSensor m))

(cl:ensure-generic-function 'RightMagSensor-val :lambda-list '(m))
(cl:defmethod RightMagSensor-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:RightMagSensor-val is deprecated.  Use neato-msg:RightMagSensor instead.")
  (RightMagSensor m))

(cl:ensure-generic-function 'UIButtonInmV-val :lambda-list '(m))
(cl:defmethod UIButtonInmV-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:UIButtonInmV-val is deprecated.  Use neato-msg:UIButtonInmV instead.")
  (UIButtonInmV m))

(cl:ensure-generic-function 'VacuumCurrentInmA-val :lambda-list '(m))
(cl:defmethod VacuumCurrentInmA-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:VacuumCurrentInmA-val is deprecated.  Use neato-msg:VacuumCurrentInmA instead.")
  (VacuumCurrentInmA m))

(cl:ensure-generic-function 'ChargeVoltInmV-val :lambda-list '(m))
(cl:defmethod ChargeVoltInmV-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:ChargeVoltInmV-val is deprecated.  Use neato-msg:ChargeVoltInmV instead.")
  (ChargeVoltInmV m))

(cl:ensure-generic-function 'BatteryTemp0InC-val :lambda-list '(m))
(cl:defmethod BatteryTemp0InC-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:BatteryTemp0InC-val is deprecated.  Use neato-msg:BatteryTemp0InC instead.")
  (BatteryTemp0InC m))

(cl:ensure-generic-function 'BatteryTemp1InC-val :lambda-list '(m))
(cl:defmethod BatteryTemp1InC-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:BatteryTemp1InC-val is deprecated.  Use neato-msg:BatteryTemp1InC instead.")
  (BatteryTemp1InC m))

(cl:ensure-generic-function 'CurrentInmA-val :lambda-list '(m))
(cl:defmethod CurrentInmA-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:CurrentInmA-val is deprecated.  Use neato-msg:CurrentInmA instead.")
  (CurrentInmA m))

(cl:ensure-generic-function 'SideBrushCurrentInmA-val :lambda-list '(m))
(cl:defmethod SideBrushCurrentInmA-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:SideBrushCurrentInmA-val is deprecated.  Use neato-msg:SideBrushCurrentInmA instead.")
  (SideBrushCurrentInmA m))

(cl:ensure-generic-function 'VoltageReferenceInmV-val :lambda-list '(m))
(cl:defmethod VoltageReferenceInmV-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:VoltageReferenceInmV-val is deprecated.  Use neato-msg:VoltageReferenceInmV instead.")
  (VoltageReferenceInmV m))

(cl:ensure-generic-function 'AccelXInmG-val :lambda-list '(m))
(cl:defmethod AccelXInmG-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:AccelXInmG-val is deprecated.  Use neato-msg:AccelXInmG instead.")
  (AccelXInmG m))

(cl:ensure-generic-function 'AccelYInmG-val :lambda-list '(m))
(cl:defmethod AccelYInmG-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:AccelYInmG-val is deprecated.  Use neato-msg:AccelYInmG instead.")
  (AccelYInmG m))

(cl:ensure-generic-function 'AccelZInmG-val :lambda-list '(m))
(cl:defmethod AccelZInmG-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:AccelZInmG-val is deprecated.  Use neato-msg:AccelZInmG instead.")
  (AccelZInmG m))

(cl:ensure-generic-function 'SNSR_DC_JACK_CONNECT-val :lambda-list '(m))
(cl:defmethod SNSR_DC_JACK_CONNECT-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:SNSR_DC_JACK_CONNECT-val is deprecated.  Use neato-msg:SNSR_DC_JACK_CONNECT instead.")
  (SNSR_DC_JACK_CONNECT m))

(cl:ensure-generic-function 'SNSR_DUSTBIN_IS_IN-val :lambda-list '(m))
(cl:defmethod SNSR_DUSTBIN_IS_IN-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:SNSR_DUSTBIN_IS_IN-val is deprecated.  Use neato-msg:SNSR_DUSTBIN_IS_IN instead.")
  (SNSR_DUSTBIN_IS_IN m))

(cl:ensure-generic-function 'SNSR_LEFT_WHEEL_EXTENDED-val :lambda-list '(m))
(cl:defmethod SNSR_LEFT_WHEEL_EXTENDED-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:SNSR_LEFT_WHEEL_EXTENDED-val is deprecated.  Use neato-msg:SNSR_LEFT_WHEEL_EXTENDED instead.")
  (SNSR_LEFT_WHEEL_EXTENDED m))

(cl:ensure-generic-function 'SNSR_RIGHT_WHEEL_EXTENDED-val :lambda-list '(m))
(cl:defmethod SNSR_RIGHT_WHEEL_EXTENDED-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:SNSR_RIGHT_WHEEL_EXTENDED-val is deprecated.  Use neato-msg:SNSR_RIGHT_WHEEL_EXTENDED instead.")
  (SNSR_RIGHT_WHEEL_EXTENDED m))

(cl:ensure-generic-function 'LSIDEBIT-val :lambda-list '(m))
(cl:defmethod LSIDEBIT-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:LSIDEBIT-val is deprecated.  Use neato-msg:LSIDEBIT instead.")
  (LSIDEBIT m))

(cl:ensure-generic-function 'LFRONTBIT-val :lambda-list '(m))
(cl:defmethod LFRONTBIT-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:LFRONTBIT-val is deprecated.  Use neato-msg:LFRONTBIT instead.")
  (LFRONTBIT m))

(cl:ensure-generic-function 'RSIDEBIT-val :lambda-list '(m))
(cl:defmethod RSIDEBIT-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:RSIDEBIT-val is deprecated.  Use neato-msg:RSIDEBIT instead.")
  (RSIDEBIT m))

(cl:ensure-generic-function 'RFRONTBIT-val :lambda-list '(m))
(cl:defmethod RFRONTBIT-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader neato-msg:RFRONTBIT-val is deprecated.  Use neato-msg:RFRONTBIT instead.")
  (RFRONTBIT m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sensors>) ostream)
  "Serializes a message object of type '<Sensors>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WallSensorInMM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WallSensorInMM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BatteryVoltageInmV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'BatteryVoltageInmV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftDropInMM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftDropInMM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightDropInMM)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightDropInMM)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'LeftMagSensor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'RightMagSensor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'UIButtonInmV)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'VacuumCurrentInmA)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ChargeVoltInmV)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ChargeVoltInmV)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'BatteryTemp0InC)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'BatteryTemp1InC)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'CurrentInmA)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'SideBrushCurrentInmA)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'VoltageReferenceInmV)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AccelXInmG)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AccelYInmG)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'AccelZInmG)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SNSR_DC_JACK_CONNECT) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SNSR_DUSTBIN_IS_IN) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SNSR_LEFT_WHEEL_EXTENDED) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'SNSR_RIGHT_WHEEL_EXTENDED) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LSIDEBIT) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'LFRONTBIT) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RSIDEBIT) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RFRONTBIT) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sensors>) istream)
  "Deserializes a message object of type '<Sensors>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'WallSensorInMM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'WallSensorInMM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'BatteryVoltageInmV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'BatteryVoltageInmV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LeftDropInMM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LeftDropInMM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'RightDropInMM)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'RightDropInMM)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'LeftMagSensor) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'RightMagSensor) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'UIButtonInmV) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'VacuumCurrentInmA) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ChargeVoltInmV)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ChargeVoltInmV)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BatteryTemp0InC) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'BatteryTemp1InC) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CurrentInmA) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SideBrushCurrentInmA) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'VoltageReferenceInmV) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AccelXInmG) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AccelYInmG) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'AccelZInmG) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'SNSR_DC_JACK_CONNECT) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'SNSR_DUSTBIN_IS_IN) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'SNSR_LEFT_WHEEL_EXTENDED) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'SNSR_RIGHT_WHEEL_EXTENDED) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'LSIDEBIT) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'LFRONTBIT) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'RSIDEBIT) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'RFRONTBIT) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sensors>)))
  "Returns string type for a message object of type '<Sensors>"
  "neato/Sensors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sensors)))
  "Returns string type for a message object of type 'Sensors"
  "neato/Sensors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sensors>)))
  "Returns md5sum for a message object of type '<Sensors>"
  "e1c7bd2ddcb3d5f803e6c67b3919c35f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sensors)))
  "Returns md5sum for a message object of type 'Sensors"
  "e1c7bd2ddcb3d5f803e6c67b3919c35f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sensors>)))
  "Returns full string definition for message of type '<Sensors>"
  (cl:format cl:nil "~%#Analog Sensors~%uint16  WallSensorInMM              #Example: 34585~%uint16  BatteryVoltageInmV          #Example: 16348~%uint16  LeftDropInMM                #Example: 0~%uint16  RightDropInMM               #Example: 0~%int16   LeftMagSensor               #Example: 32768~%int16   RightMagSensor              #Example: 32768~%int16   UIButtonInmV                #Example: 3330~%int16   VacuumCurrentInmA           #Example: 0~%uint16  ChargeVoltInmV              #Example: 24024~%int8    BatteryTemp0InC             #Example: 30~%int8    BatteryTemp1InC             #Example: 28~%int16   CurrentInmA                 #Example: 40~%int16   SideBrushCurrentInmA        #Example: 0~%int16   VoltageReferenceInmV        #Example: 1225~%int16   AccelXInmG                  #Example: 36~%int16   AccelYInmG                  #Example: 16~%int16   AccelZInmG                  #Example: 1008~%# the ones below are not supported due to lack of compatibility~%# int8    XTemp0InC                   #Example: 28~%# int8    XTemp1InC                   #Example: 28~%# int8    NotConnected1               #Example: 0 - unknown~%# int8    NotConnected2               #Example: 0 - unknown~%# int8    NotConnected3               #Example: 0 - unknown~%~%#Digital sensors~%bool    SNSR_DC_JACK_CONNECT        #Example: 0 ~%bool    SNSR_DUSTBIN_IS_IN          #Example: 1~%bool    SNSR_LEFT_WHEEL_EXTENDED    #Example: 0~%bool    SNSR_RIGHT_WHEEL_EXTENDED   #Example: 0~%bool    LSIDEBIT                    #Example: 0 ~%bool    LFRONTBIT                   #Example: 0~%bool    RSIDEBIT                    #Example: 0 ~%bool    RFRONTBIT                   #Example: 0 ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sensors)))
  "Returns full string definition for message of type 'Sensors"
  (cl:format cl:nil "~%#Analog Sensors~%uint16  WallSensorInMM              #Example: 34585~%uint16  BatteryVoltageInmV          #Example: 16348~%uint16  LeftDropInMM                #Example: 0~%uint16  RightDropInMM               #Example: 0~%int16   LeftMagSensor               #Example: 32768~%int16   RightMagSensor              #Example: 32768~%int16   UIButtonInmV                #Example: 3330~%int16   VacuumCurrentInmA           #Example: 0~%uint16  ChargeVoltInmV              #Example: 24024~%int8    BatteryTemp0InC             #Example: 30~%int8    BatteryTemp1InC             #Example: 28~%int16   CurrentInmA                 #Example: 40~%int16   SideBrushCurrentInmA        #Example: 0~%int16   VoltageReferenceInmV        #Example: 1225~%int16   AccelXInmG                  #Example: 36~%int16   AccelYInmG                  #Example: 16~%int16   AccelZInmG                  #Example: 1008~%# the ones below are not supported due to lack of compatibility~%# int8    XTemp0InC                   #Example: 28~%# int8    XTemp1InC                   #Example: 28~%# int8    NotConnected1               #Example: 0 - unknown~%# int8    NotConnected2               #Example: 0 - unknown~%# int8    NotConnected3               #Example: 0 - unknown~%~%#Digital sensors~%bool    SNSR_DC_JACK_CONNECT        #Example: 0 ~%bool    SNSR_DUSTBIN_IS_IN          #Example: 1~%bool    SNSR_LEFT_WHEEL_EXTENDED    #Example: 0~%bool    SNSR_RIGHT_WHEEL_EXTENDED   #Example: 0~%bool    LSIDEBIT                    #Example: 0 ~%bool    LFRONTBIT                   #Example: 0~%bool    RSIDEBIT                    #Example: 0 ~%bool    RFRONTBIT                   #Example: 0 ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sensors>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     2
     2
     1
     1
     2
     2
     2
     2
     2
     2
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sensors>))
  "Converts a ROS message object to a list"
  (cl:list 'Sensors
    (cl:cons ':WallSensorInMM (WallSensorInMM msg))
    (cl:cons ':BatteryVoltageInmV (BatteryVoltageInmV msg))
    (cl:cons ':LeftDropInMM (LeftDropInMM msg))
    (cl:cons ':RightDropInMM (RightDropInMM msg))
    (cl:cons ':LeftMagSensor (LeftMagSensor msg))
    (cl:cons ':RightMagSensor (RightMagSensor msg))
    (cl:cons ':UIButtonInmV (UIButtonInmV msg))
    (cl:cons ':VacuumCurrentInmA (VacuumCurrentInmA msg))
    (cl:cons ':ChargeVoltInmV (ChargeVoltInmV msg))
    (cl:cons ':BatteryTemp0InC (BatteryTemp0InC msg))
    (cl:cons ':BatteryTemp1InC (BatteryTemp1InC msg))
    (cl:cons ':CurrentInmA (CurrentInmA msg))
    (cl:cons ':SideBrushCurrentInmA (SideBrushCurrentInmA msg))
    (cl:cons ':VoltageReferenceInmV (VoltageReferenceInmV msg))
    (cl:cons ':AccelXInmG (AccelXInmG msg))
    (cl:cons ':AccelYInmG (AccelYInmG msg))
    (cl:cons ':AccelZInmG (AccelZInmG msg))
    (cl:cons ':SNSR_DC_JACK_CONNECT (SNSR_DC_JACK_CONNECT msg))
    (cl:cons ':SNSR_DUSTBIN_IS_IN (SNSR_DUSTBIN_IS_IN msg))
    (cl:cons ':SNSR_LEFT_WHEEL_EXTENDED (SNSR_LEFT_WHEEL_EXTENDED msg))
    (cl:cons ':SNSR_RIGHT_WHEEL_EXTENDED (SNSR_RIGHT_WHEEL_EXTENDED msg))
    (cl:cons ':LSIDEBIT (LSIDEBIT msg))
    (cl:cons ':LFRONTBIT (LFRONTBIT msg))
    (cl:cons ':RSIDEBIT (RSIDEBIT msg))
    (cl:cons ':RFRONTBIT (RFRONTBIT msg))
))
