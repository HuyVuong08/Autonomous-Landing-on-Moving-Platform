; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2.msg.html

(cl:defclass <WaypointV2> (roslisp-msg-protocol:ros-message)
  ((longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (relativeHeight
    :reader relativeHeight
    :initarg :relativeHeight
    :type cl:float
    :initform 0.0)
   (waypointType
    :reader waypointType
    :initarg :waypointType
    :type cl:fixnum
    :initform 0)
   (headingMode
    :reader headingMode
    :initarg :headingMode
    :type cl:fixnum
    :initform 0)
   (config
    :reader config
    :initarg :config
    :type dji_osdk_ros-msg:WaypointV2Config
    :initform (cl:make-instance 'dji_osdk_ros-msg:WaypointV2Config))
   (dampingDistance
    :reader dampingDistance
    :initarg :dampingDistance
    :type cl:fixnum
    :initform 0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (turnMode
    :reader turnMode
    :initarg :turnMode
    :type cl:fixnum
    :initform 0)
   (positionX
    :reader positionX
    :initarg :positionX
    :type cl:float
    :initform 0.0)
   (positionY
    :reader positionY
    :initarg :positionY
    :type cl:float
    :initform 0.0)
   (positionZ
    :reader positionZ
    :initarg :positionZ
    :type cl:float
    :initform 0.0)
   (maxFlightSpeed
    :reader maxFlightSpeed
    :initarg :maxFlightSpeed
    :type cl:float
    :initform 0.0)
   (autoFlightSpeed
    :reader autoFlightSpeed
    :initarg :autoFlightSpeed
    :type cl:float
    :initform 0.0))
)

(cl:defclass WaypointV2 (<WaypointV2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2> is deprecated: use dji_osdk_ros-msg:WaypointV2 instead.")))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:longitude-val is deprecated.  Use dji_osdk_ros-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:latitude-val is deprecated.  Use dji_osdk_ros-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'relativeHeight-val :lambda-list '(m))
(cl:defmethod relativeHeight-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:relativeHeight-val is deprecated.  Use dji_osdk_ros-msg:relativeHeight instead.")
  (relativeHeight m))

(cl:ensure-generic-function 'waypointType-val :lambda-list '(m))
(cl:defmethod waypointType-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:waypointType-val is deprecated.  Use dji_osdk_ros-msg:waypointType instead.")
  (waypointType m))

(cl:ensure-generic-function 'headingMode-val :lambda-list '(m))
(cl:defmethod headingMode-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:headingMode-val is deprecated.  Use dji_osdk_ros-msg:headingMode instead.")
  (headingMode m))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:config-val is deprecated.  Use dji_osdk_ros-msg:config instead.")
  (config m))

(cl:ensure-generic-function 'dampingDistance-val :lambda-list '(m))
(cl:defmethod dampingDistance-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:dampingDistance-val is deprecated.  Use dji_osdk_ros-msg:dampingDistance instead.")
  (dampingDistance m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:heading-val is deprecated.  Use dji_osdk_ros-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'turnMode-val :lambda-list '(m))
(cl:defmethod turnMode-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:turnMode-val is deprecated.  Use dji_osdk_ros-msg:turnMode instead.")
  (turnMode m))

(cl:ensure-generic-function 'positionX-val :lambda-list '(m))
(cl:defmethod positionX-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:positionX-val is deprecated.  Use dji_osdk_ros-msg:positionX instead.")
  (positionX m))

(cl:ensure-generic-function 'positionY-val :lambda-list '(m))
(cl:defmethod positionY-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:positionY-val is deprecated.  Use dji_osdk_ros-msg:positionY instead.")
  (positionY m))

(cl:ensure-generic-function 'positionZ-val :lambda-list '(m))
(cl:defmethod positionZ-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:positionZ-val is deprecated.  Use dji_osdk_ros-msg:positionZ instead.")
  (positionZ m))

(cl:ensure-generic-function 'maxFlightSpeed-val :lambda-list '(m))
(cl:defmethod maxFlightSpeed-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:maxFlightSpeed-val is deprecated.  Use dji_osdk_ros-msg:maxFlightSpeed instead.")
  (maxFlightSpeed m))

(cl:ensure-generic-function 'autoFlightSpeed-val :lambda-list '(m))
(cl:defmethod autoFlightSpeed-val ((m <WaypointV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:autoFlightSpeed-val is deprecated.  Use dji_osdk_ros-msg:autoFlightSpeed instead.")
  (autoFlightSpeed m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointV2>)))
    "Constants for message type '<WaypointV2>"
  '((:DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVE . 0)
    (:DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVEANDSTOP . 1)
    (:DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTINASTRAIGHTLINEANDSTOP . 2)
    (:DJIWAYPOINTV2FLIGHTPATHMODECOORDINATETURN . 3)
    (:DJIWAYPOINTV2FLIGHTPATHMODEGOTOFIRSTPOINTALONGASTRAIGHTLINE . 4)
    (:DJIWAYPOINTV2FLIGHTPATHMODESTRAIGHTOUT . 5)
    (:DJIWAYPOINTV2FLIGHTPATHMODEUNKNOWN . 255)
    (:DJIWAYPOINTV2HEADINGMODEAUTO . 0)
    (:DJIWAYPOINTV2HEADINGFIXED . 1)
    (:DJIWAYPOINTV2HEADINGMANUAL . 2)
    (:DJIWAYPOINTV2HEADINGWAYPOINTCUSTOM . 3)
    (:DJIWAYPOINTV2HEADINGTOWARDPOINTOFINTEREST . 4)
    (:DJIWAYPOINTV2HEADINGGIMBALYAWFOLLOW . 5)
    (:DJIWAYPOINTV2HEADINGUNKNOWN . 255)
    (:DJIWAYPOINTV2TURNMODECLOCKWISE . 0)
    (:DJIWAYPOINTV2TURNMODECOUNTERCLOCKWISE . 1)
    (:DJIWAYPOINTV2TURNMODEUNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointV2)))
    "Constants for message type 'WaypointV2"
  '((:DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVE . 0)
    (:DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVEANDSTOP . 1)
    (:DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTINASTRAIGHTLINEANDSTOP . 2)
    (:DJIWAYPOINTV2FLIGHTPATHMODECOORDINATETURN . 3)
    (:DJIWAYPOINTV2FLIGHTPATHMODEGOTOFIRSTPOINTALONGASTRAIGHTLINE . 4)
    (:DJIWAYPOINTV2FLIGHTPATHMODESTRAIGHTOUT . 5)
    (:DJIWAYPOINTV2FLIGHTPATHMODEUNKNOWN . 255)
    (:DJIWAYPOINTV2HEADINGMODEAUTO . 0)
    (:DJIWAYPOINTV2HEADINGFIXED . 1)
    (:DJIWAYPOINTV2HEADINGMANUAL . 2)
    (:DJIWAYPOINTV2HEADINGWAYPOINTCUSTOM . 3)
    (:DJIWAYPOINTV2HEADINGTOWARDPOINTOFINTEREST . 4)
    (:DJIWAYPOINTV2HEADINGGIMBALYAWFOLLOW . 5)
    (:DJIWAYPOINTV2HEADINGUNKNOWN . 255)
    (:DJIWAYPOINTV2TURNMODECLOCKWISE . 0)
    (:DJIWAYPOINTV2TURNMODECOUNTERCLOCKWISE . 1)
    (:DJIWAYPOINTV2TURNMODEUNKNOWN . 255))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2>) ostream)
  "Serializes a message object of type '<WaypointV2>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'relativeHeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypointType)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'headingMode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'config) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dampingDistance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dampingDistance)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turnMode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'positionX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'positionY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'positionZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxFlightSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'autoFlightSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2>) istream)
  "Deserializes a message object of type '<WaypointV2>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'relativeHeight) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypointType)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'headingMode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'config) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dampingDistance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'dampingDistance)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turnMode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'positionX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'positionY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'positionZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxFlightSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'autoFlightSpeed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2>)))
  "Returns string type for a message object of type '<WaypointV2>"
  "dji_osdk_ros/WaypointV2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2)))
  "Returns string type for a message object of type 'WaypointV2"
  "dji_osdk_ros/WaypointV2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2>)))
  "Returns md5sum for a message object of type '<WaypointV2>"
  "389194e4db4c519440c6686894700c6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2)))
  "Returns md5sum for a message object of type 'WaypointV2"
  "389194e4db4c519440c6686894700c6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2>)))
  "Returns full string definition for message of type '<WaypointV2>"
  (cl:format cl:nil "# The struct represents a target point in the waypoint mission. For a waypoint~%~%#constant for flightpathMode~%uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurve = 0  #In the mission, the aircraft will go to the waypoint along a curve and fly past the waypoint.~%uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurveAndStop = 1 #In the mission, the aircraft will go to the waypoint along a curve and stop at the waypoint.~%uint8 DJIWaypointV2FlightPathModeGoToPointInAStraightLineAndStop = 2  #In the mission, the aircraft will go to the waypoint along a straight line and stop at the waypoint.~%uint8 DJIWaypointV2FlightPathModeCoordinateTurn = 3   #In the mission, the aircraft will fly from the previous waypoint to the next waypoint along a smooth curve without stopping at this waypoint.~%                                                      #the next in a curved motion,  adhering to the ``DJIWaypointV2_dampingDistance``, which is~%                                                      #set in ``DJIWaypointV2``.~%uint8 DJIWaypointV2FlightPathModeGoToFirstPointAlongAStraightLine = 4  # In the mission, the aircraft will go to the first waypoint along a straight line.~%                                                                       # This is only valid for the first waypoint.~%uint8 DJIWaypointV2FlightPathModeStraightOut = 5   # Straight exit the Last waypoint, Only valid for last waypoint.~%uint8 DJIWaypointV2FlightPathModeUnknown = 255    # Unknown~%~%#constant for headMode~%uint8 DJIWaypointV2HeadingModeAuto = 0    # Aircraft's heading will always be in the direction of flight.~%uint8 DJIWaypointV2HeadingFixed    = 1    # Aircraft's heading will be set to the heading when reaching the first waypoint.~%                                          # Before reaching the first waypoint, the aircraft's heading can be controlled by~%                                          # the remote controller. When the aircraft reaches the first waypoint, its~%                                          # heading will be fixed.~%uint8 DJIWaypointV2HeadingManual   = 2    # The aircraft's heading in the mission can be controlled by the remote controller.~%uint8 DJIWaypointV2HeadingWaypointCustom = 3  # In the mission, the aircraft's heading will change dynamically and adapt to the heading set at the next waypoint.~%                                               # See ``DJIWaypointV2_heading`` to preset the heading.~%uint8 DJIWaypointV2HeadingTowardPointOfInterest = 4 # Aircraft's heading will always toward point of interest.~%                                                    # using ``DJIWaypointV2_pointOfInterest`` setting point of interest coordiate and ``DJIWaypointV2_pointOfInterestAltitude``~%                                                    # setting point of interset altitute.~%uint8 DJIWaypointV2HeadingGimbalYawFollow  = 5   # The aircraft's heading rotate simultaneously with its gimbal's yaw.~%uint8 DJIWaypointV2HeadingUnknown = 255         # Unknown.~%~%#constant for turnMode~%uint8 DJIWaypointV2TurnModeClockwise = 0  # The aircraft's heading rotates clockwise.~%uint8 DJIWaypointV2TurnModeCounterClockwise = 1   # The aircraft's heading rotates counterclockwise.~%uint8 DJIWaypointV2TurnModeUnknown = 255    # Changes the heading of the aircraft by rotating the aircraft anti-clockwise.~%~%~%~%#  mission, a flight route  consists of multiple `WaypointV2` objects.~%float64 longitude  # waypoint position relative to WayPointV2InitSettings's reference point.unit: m~%float64 latitude~%float32 relativeHeight  # relative to takeoff height~%uint8   waypointType    # Waypoint flight path mode~%uint8   headingMode     # Represents current aircraft's heading mode on current waypoint.~%WaypointV2Config  config          # Represents current waypoint's speed config.~%uint16  dampingDistance~%float32 heading         # The heading to which the aircraft will rotate by the time it reaches the~%                        # waypoint. The aircraft heading  will gradually change between two waypoints with~%                        # different headings if the waypoint  mission's `headingMode` is set  to~%                        # 'DJIWaypointV2_DJIWaypointV2HeadingMode_WaypointCustom`. A heading has a range of~%                        # [-180, 180] degrees, where 0 represents True North.~%uint8 turnMode          # Determines whether the aircraft will turn clockwise or anticlockwise when~%                        # changing its heading.~%# Property is used when ``DJIWaypointV2_headingMode`` is~%# ``DJIWaypointV2_DJIWaypointV2HeadingMode_TowardPointOfInterest``.~%# Aircraft will always be heading to point while executing mission. Default is~%# \"kCLLocationCoordinate2DInvalid\".~%float32 positionX       # X distance to reference point, North is positive~%float32 positionY       # Y distance to reference point, East is positive~%float32 positionZ       # Z distance to reference point, UP is positive~%~%# While the aircraft is travelling between waypoints, you can offset its speed by~%# using the throttle joystick on the remote controller. \"maxFlightSpeed\" is this~%# offset when the joystick is pushed to maximum deflection. For example, If~%# maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the way up will~%# add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s from~%# the aircraft speed. If the remote controller stick is not at maximum deflection,~%# then the offset speed will be interpolated between \"[0, maxFlightSpeed]\"\" with a~%# resolution of 1000 steps. If the offset speed is negative, then the aircraft~%# will fly backwards to previous waypoints. When it reaches the first waypoint, it~%# will then hover in place until a positive speed is applied. \"maxFlightSpeed\" has~%# a range of [2,15] m/s.~%float32 maxFlightSpeed~%~%# The base automatic speed of the aircraft as it moves between waypoints with~%# range [-15, 15] m/s. The aircraft's actual speed is a combination of the base~%# automatic speed, and the speed control given by the throttle joystick on the~%# remote controller. If \"autoFlightSpeed >0\": Actual speed is \"autoFlightSpeed\" +~%# Joystick Speed (with combined max of \"maxFlightSpeed\") If \"autoFlightSpeed =0\":~%# Actual speed is controlled only by the remote controller joystick. If~%# autoFlightSpeed <0\" and the aircraft is at the first waypoint, the aircraft~%# will hover in place until the speed is made positive by the remote controller~%# joystick. In flight controller firmware 3.2.10.0 or above, different speeds~%# between individual waypoints can also be set in waypoint objects which will~%# overwrite \"autoFlightSpeed\".~%float32 autoFlightSpeed~%================================================================================~%MSG: dji_osdk_ros/WaypointV2Config~%# Represents current waypoint's speed config.~%# 0: set local waypoint's cruise speed,~%# 1: unset global waypoint's cruise speed*/~%uint8  useLocalCruiseVel~%# 0: set local waypoint's max speed,~%# 1: unset global waypoint's max speed*/~%uint8  useLocalMaxVel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2)))
  "Returns full string definition for message of type 'WaypointV2"
  (cl:format cl:nil "# The struct represents a target point in the waypoint mission. For a waypoint~%~%#constant for flightpathMode~%uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurve = 0  #In the mission, the aircraft will go to the waypoint along a curve and fly past the waypoint.~%uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurveAndStop = 1 #In the mission, the aircraft will go to the waypoint along a curve and stop at the waypoint.~%uint8 DJIWaypointV2FlightPathModeGoToPointInAStraightLineAndStop = 2  #In the mission, the aircraft will go to the waypoint along a straight line and stop at the waypoint.~%uint8 DJIWaypointV2FlightPathModeCoordinateTurn = 3   #In the mission, the aircraft will fly from the previous waypoint to the next waypoint along a smooth curve without stopping at this waypoint.~%                                                      #the next in a curved motion,  adhering to the ``DJIWaypointV2_dampingDistance``, which is~%                                                      #set in ``DJIWaypointV2``.~%uint8 DJIWaypointV2FlightPathModeGoToFirstPointAlongAStraightLine = 4  # In the mission, the aircraft will go to the first waypoint along a straight line.~%                                                                       # This is only valid for the first waypoint.~%uint8 DJIWaypointV2FlightPathModeStraightOut = 5   # Straight exit the Last waypoint, Only valid for last waypoint.~%uint8 DJIWaypointV2FlightPathModeUnknown = 255    # Unknown~%~%#constant for headMode~%uint8 DJIWaypointV2HeadingModeAuto = 0    # Aircraft's heading will always be in the direction of flight.~%uint8 DJIWaypointV2HeadingFixed    = 1    # Aircraft's heading will be set to the heading when reaching the first waypoint.~%                                          # Before reaching the first waypoint, the aircraft's heading can be controlled by~%                                          # the remote controller. When the aircraft reaches the first waypoint, its~%                                          # heading will be fixed.~%uint8 DJIWaypointV2HeadingManual   = 2    # The aircraft's heading in the mission can be controlled by the remote controller.~%uint8 DJIWaypointV2HeadingWaypointCustom = 3  # In the mission, the aircraft's heading will change dynamically and adapt to the heading set at the next waypoint.~%                                               # See ``DJIWaypointV2_heading`` to preset the heading.~%uint8 DJIWaypointV2HeadingTowardPointOfInterest = 4 # Aircraft's heading will always toward point of interest.~%                                                    # using ``DJIWaypointV2_pointOfInterest`` setting point of interest coordiate and ``DJIWaypointV2_pointOfInterestAltitude``~%                                                    # setting point of interset altitute.~%uint8 DJIWaypointV2HeadingGimbalYawFollow  = 5   # The aircraft's heading rotate simultaneously with its gimbal's yaw.~%uint8 DJIWaypointV2HeadingUnknown = 255         # Unknown.~%~%#constant for turnMode~%uint8 DJIWaypointV2TurnModeClockwise = 0  # The aircraft's heading rotates clockwise.~%uint8 DJIWaypointV2TurnModeCounterClockwise = 1   # The aircraft's heading rotates counterclockwise.~%uint8 DJIWaypointV2TurnModeUnknown = 255    # Changes the heading of the aircraft by rotating the aircraft anti-clockwise.~%~%~%~%#  mission, a flight route  consists of multiple `WaypointV2` objects.~%float64 longitude  # waypoint position relative to WayPointV2InitSettings's reference point.unit: m~%float64 latitude~%float32 relativeHeight  # relative to takeoff height~%uint8   waypointType    # Waypoint flight path mode~%uint8   headingMode     # Represents current aircraft's heading mode on current waypoint.~%WaypointV2Config  config          # Represents current waypoint's speed config.~%uint16  dampingDistance~%float32 heading         # The heading to which the aircraft will rotate by the time it reaches the~%                        # waypoint. The aircraft heading  will gradually change between two waypoints with~%                        # different headings if the waypoint  mission's `headingMode` is set  to~%                        # 'DJIWaypointV2_DJIWaypointV2HeadingMode_WaypointCustom`. A heading has a range of~%                        # [-180, 180] degrees, where 0 represents True North.~%uint8 turnMode          # Determines whether the aircraft will turn clockwise or anticlockwise when~%                        # changing its heading.~%# Property is used when ``DJIWaypointV2_headingMode`` is~%# ``DJIWaypointV2_DJIWaypointV2HeadingMode_TowardPointOfInterest``.~%# Aircraft will always be heading to point while executing mission. Default is~%# \"kCLLocationCoordinate2DInvalid\".~%float32 positionX       # X distance to reference point, North is positive~%float32 positionY       # Y distance to reference point, East is positive~%float32 positionZ       # Z distance to reference point, UP is positive~%~%# While the aircraft is travelling between waypoints, you can offset its speed by~%# using the throttle joystick on the remote controller. \"maxFlightSpeed\" is this~%# offset when the joystick is pushed to maximum deflection. For example, If~%# maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the way up will~%# add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s from~%# the aircraft speed. If the remote controller stick is not at maximum deflection,~%# then the offset speed will be interpolated between \"[0, maxFlightSpeed]\"\" with a~%# resolution of 1000 steps. If the offset speed is negative, then the aircraft~%# will fly backwards to previous waypoints. When it reaches the first waypoint, it~%# will then hover in place until a positive speed is applied. \"maxFlightSpeed\" has~%# a range of [2,15] m/s.~%float32 maxFlightSpeed~%~%# The base automatic speed of the aircraft as it moves between waypoints with~%# range [-15, 15] m/s. The aircraft's actual speed is a combination of the base~%# automatic speed, and the speed control given by the throttle joystick on the~%# remote controller. If \"autoFlightSpeed >0\": Actual speed is \"autoFlightSpeed\" +~%# Joystick Speed (with combined max of \"maxFlightSpeed\") If \"autoFlightSpeed =0\":~%# Actual speed is controlled only by the remote controller joystick. If~%# autoFlightSpeed <0\" and the aircraft is at the first waypoint, the aircraft~%# will hover in place until the speed is made positive by the remote controller~%# joystick. In flight controller firmware 3.2.10.0 or above, different speeds~%# between individual waypoints can also be set in waypoint objects which will~%# overwrite \"autoFlightSpeed\".~%float32 autoFlightSpeed~%================================================================================~%MSG: dji_osdk_ros/WaypointV2Config~%# Represents current waypoint's speed config.~%# 0: set local waypoint's cruise speed,~%# 1: unset global waypoint's cruise speed*/~%uint8  useLocalCruiseVel~%# 0: set local waypoint's max speed,~%# 1: unset global waypoint's max speed*/~%uint8  useLocalMaxVel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2>))
  (cl:+ 0
     8
     8
     4
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'config))
     2
     4
     1
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':relativeHeight (relativeHeight msg))
    (cl:cons ':waypointType (waypointType msg))
    (cl:cons ':headingMode (headingMode msg))
    (cl:cons ':config (config msg))
    (cl:cons ':dampingDistance (dampingDistance msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':turnMode (turnMode msg))
    (cl:cons ':positionX (positionX msg))
    (cl:cons ':positionY (positionY msg))
    (cl:cons ':positionZ (positionZ msg))
    (cl:cons ':maxFlightSpeed (maxFlightSpeed msg))
    (cl:cons ':autoFlightSpeed (autoFlightSpeed msg))
))
