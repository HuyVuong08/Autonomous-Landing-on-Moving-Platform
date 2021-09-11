;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2 (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2.msg.html


(intern "*DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVE*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVE* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVE* 0)
(intern "*DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVEANDSTOP*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVEANDSTOP* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVEANDSTOP* 1)
(intern "*DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTINASTRAIGHTLINEANDSTOP*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTINASTRAIGHTLINEANDSTOP* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTINASTRAIGHTLINEANDSTOP* 2)
(intern "*DJIWAYPOINTV2FLIGHTPATHMODECOORDINATETURN*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2FLIGHTPATHMODECOORDINATETURN* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2FLIGHTPATHMODECOORDINATETURN* 3)
(intern "*DJIWAYPOINTV2FLIGHTPATHMODEGOTOFIRSTPOINTALONGASTRAIGHTLINE*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2FLIGHTPATHMODEGOTOFIRSTPOINTALONGASTRAIGHTLINE* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2FLIGHTPATHMODEGOTOFIRSTPOINTALONGASTRAIGHTLINE* 4)
(intern "*DJIWAYPOINTV2FLIGHTPATHMODESTRAIGHTOUT*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2FLIGHTPATHMODESTRAIGHTOUT* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2FLIGHTPATHMODESTRAIGHTOUT* 5)
(intern "*DJIWAYPOINTV2FLIGHTPATHMODEUNKNOWN*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2FLIGHTPATHMODEUNKNOWN* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2FLIGHTPATHMODEUNKNOWN* 255)
(intern "*DJIWAYPOINTV2HEADINGMODEAUTO*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2HEADINGMODEAUTO* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2HEADINGMODEAUTO* 0)
(intern "*DJIWAYPOINTV2HEADINGFIXED*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2HEADINGFIXED* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2HEADINGFIXED* 1)
(intern "*DJIWAYPOINTV2HEADINGMANUAL*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2HEADINGMANUAL* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2HEADINGMANUAL* 2)
(intern "*DJIWAYPOINTV2HEADINGWAYPOINTCUSTOM*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2HEADINGWAYPOINTCUSTOM* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2HEADINGWAYPOINTCUSTOM* 3)
(intern "*DJIWAYPOINTV2HEADINGTOWARDPOINTOFINTEREST*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2HEADINGTOWARDPOINTOFINTEREST* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2HEADINGTOWARDPOINTOFINTEREST* 4)
(intern "*DJIWAYPOINTV2HEADINGGIMBALYAWFOLLOW*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2HEADINGGIMBALYAWFOLLOW* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2HEADINGGIMBALYAWFOLLOW* 5)
(intern "*DJIWAYPOINTV2HEADINGUNKNOWN*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2HEADINGUNKNOWN* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2HEADINGUNKNOWN* 255)
(intern "*DJIWAYPOINTV2TURNMODECLOCKWISE*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2TURNMODECLOCKWISE* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2TURNMODECLOCKWISE* 0)
(intern "*DJIWAYPOINTV2TURNMODECOUNTERCLOCKWISE*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2TURNMODECOUNTERCLOCKWISE* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2TURNMODECOUNTERCLOCKWISE* 1)
(intern "*DJIWAYPOINTV2TURNMODEUNKNOWN*" (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(shadow '*DJIWAYPOINTV2TURNMODEUNKNOWN* (find-package "DJI_OSDK_ROS::WAYPOINTV2"))
(defconstant dji_osdk_ros::WaypointV2::*DJIWAYPOINTV2TURNMODEUNKNOWN* 255)

(defun dji_osdk_ros::WaypointV2-to-symbol (const)
  (cond
        ((= const 0) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2FlightPathModeGoToPointAlongACurve*)
        ((= const 1) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2FlightPathModeGoToPointAlongACurveAndStop*)
        ((= const 2) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2FlightPathModeGoToPointInAStraightLineAndStop*)
        ((= const 3) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2FlightPathModeCoordinateTurn*)
        ((= const 4) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2FlightPathModeGoToFirstPointAlongAStraightLine*)
        ((= const 5) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2FlightPathModeStraightOut*)
        ((= const 255) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2FlightPathModeUnknown*)
        ((= const 0) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2HeadingModeAuto*)
        ((= const 1) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2HeadingFixed*)
        ((= const 2) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2HeadingManual*)
        ((= const 3) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2HeadingWaypointCustom*)
        ((= const 4) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2HeadingTowardPointOfInterest*)
        ((= const 5) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2HeadingGimbalYawFollow*)
        ((= const 255) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2HeadingUnknown*)
        ((= const 0) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2TurnModeClockwise*)
        ((= const 1) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2TurnModeCounterClockwise*)
        ((= const 255) 'dji_osdk_ros::WaypointV2::*DJIWaypointV2TurnModeUnknown*)
        (t nil)))

(defclass dji_osdk_ros::WaypointV2
  :super ros::object
  :slots (_longitude _latitude _relativeHeight _waypointType _headingMode _config _dampingDistance _heading _turnMode _positionX _positionY _positionZ _maxFlightSpeed _autoFlightSpeed ))

(defmethod dji_osdk_ros::WaypointV2
  (:init
   (&key
    ((:longitude __longitude) 0.0)
    ((:latitude __latitude) 0.0)
    ((:relativeHeight __relativeHeight) 0.0)
    ((:waypointType __waypointType) 0)
    ((:headingMode __headingMode) 0)
    ((:config __config) (instance dji_osdk_ros::WaypointV2Config :init))
    ((:dampingDistance __dampingDistance) 0)
    ((:heading __heading) 0.0)
    ((:turnMode __turnMode) 0)
    ((:positionX __positionX) 0.0)
    ((:positionY __positionY) 0.0)
    ((:positionZ __positionZ) 0.0)
    ((:maxFlightSpeed __maxFlightSpeed) 0.0)
    ((:autoFlightSpeed __autoFlightSpeed) 0.0)
    )
   (send-super :init)
   (setq _longitude (float __longitude))
   (setq _latitude (float __latitude))
   (setq _relativeHeight (float __relativeHeight))
   (setq _waypointType (round __waypointType))
   (setq _headingMode (round __headingMode))
   (setq _config __config)
   (setq _dampingDistance (round __dampingDistance))
   (setq _heading (float __heading))
   (setq _turnMode (round __turnMode))
   (setq _positionX (float __positionX))
   (setq _positionY (float __positionY))
   (setq _positionZ (float __positionZ))
   (setq _maxFlightSpeed (float __maxFlightSpeed))
   (setq _autoFlightSpeed (float __autoFlightSpeed))
   self)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:relativeHeight
   (&optional __relativeHeight)
   (if __relativeHeight (setq _relativeHeight __relativeHeight)) _relativeHeight)
  (:waypointType
   (&optional __waypointType)
   (if __waypointType (setq _waypointType __waypointType)) _waypointType)
  (:headingMode
   (&optional __headingMode)
   (if __headingMode (setq _headingMode __headingMode)) _headingMode)
  (:config
   (&rest __config)
   (if (keywordp (car __config))
       (send* _config __config)
     (progn
       (if __config (setq _config (car __config)))
       _config)))
  (:dampingDistance
   (&optional __dampingDistance)
   (if __dampingDistance (setq _dampingDistance __dampingDistance)) _dampingDistance)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:turnMode
   (&optional __turnMode)
   (if __turnMode (setq _turnMode __turnMode)) _turnMode)
  (:positionX
   (&optional __positionX)
   (if __positionX (setq _positionX __positionX)) _positionX)
  (:positionY
   (&optional __positionY)
   (if __positionY (setq _positionY __positionY)) _positionY)
  (:positionZ
   (&optional __positionZ)
   (if __positionZ (setq _positionZ __positionZ)) _positionZ)
  (:maxFlightSpeed
   (&optional __maxFlightSpeed)
   (if __maxFlightSpeed (setq _maxFlightSpeed __maxFlightSpeed)) _maxFlightSpeed)
  (:autoFlightSpeed
   (&optional __autoFlightSpeed)
   (if __autoFlightSpeed (setq _autoFlightSpeed __autoFlightSpeed)) _autoFlightSpeed)
  (:serialization-length
   ()
   (+
    ;; float64 _longitude
    8
    ;; float64 _latitude
    8
    ;; float32 _relativeHeight
    4
    ;; uint8 _waypointType
    1
    ;; uint8 _headingMode
    1
    ;; dji_osdk_ros/WaypointV2Config _config
    (send _config :serialization-length)
    ;; uint16 _dampingDistance
    2
    ;; float32 _heading
    4
    ;; uint8 _turnMode
    1
    ;; float32 _positionX
    4
    ;; float32 _positionY
    4
    ;; float32 _positionZ
    4
    ;; float32 _maxFlightSpeed
    4
    ;; float32 _autoFlightSpeed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _relativeHeight
       (sys::poke _relativeHeight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _waypointType
       (write-byte _waypointType s)
     ;; uint8 _headingMode
       (write-byte _headingMode s)
     ;; dji_osdk_ros/WaypointV2Config _config
       (send _config :serialize s)
     ;; uint16 _dampingDistance
       (write-word _dampingDistance s)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _turnMode
       (write-byte _turnMode s)
     ;; float32 _positionX
       (sys::poke _positionX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _positionY
       (sys::poke _positionY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _positionZ
       (sys::poke _positionZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxFlightSpeed
       (sys::poke _maxFlightSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _autoFlightSpeed
       (sys::poke _autoFlightSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _relativeHeight
     (setq _relativeHeight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _waypointType
     (setq _waypointType (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _headingMode
     (setq _headingMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dji_osdk_ros/WaypointV2Config _config
     (send _config :deserialize buf ptr-) (incf ptr- (send _config :serialization-length))
   ;; uint16 _dampingDistance
     (setq _dampingDistance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _turnMode
     (setq _turnMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _positionX
     (setq _positionX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _positionY
     (setq _positionY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _positionZ
     (setq _positionZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxFlightSpeed
     (setq _maxFlightSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _autoFlightSpeed
     (setq _autoFlightSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2 :md5sum-) "389194e4db4c519440c6686894700c6a")
(setf (get dji_osdk_ros::WaypointV2 :datatype-) "dji_osdk_ros/WaypointV2")
(setf (get dji_osdk_ros::WaypointV2 :definition-)
      "# The struct represents a target point in the waypoint mission. For a waypoint

#constant for flightpathMode
uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurve = 0  #In the mission, the aircraft will go to the waypoint along a curve and fly past the waypoint.
uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurveAndStop = 1 #In the mission, the aircraft will go to the waypoint along a curve and stop at the waypoint.
uint8 DJIWaypointV2FlightPathModeGoToPointInAStraightLineAndStop = 2  #In the mission, the aircraft will go to the waypoint along a straight line and stop at the waypoint.
uint8 DJIWaypointV2FlightPathModeCoordinateTurn = 3   #In the mission, the aircraft will fly from the previous waypoint to the next waypoint along a smooth curve without stopping at this waypoint.
                                                      #the next in a curved motion,  adhering to the ``DJIWaypointV2_dampingDistance``, which is
                                                      #set in ``DJIWaypointV2``.
uint8 DJIWaypointV2FlightPathModeGoToFirstPointAlongAStraightLine = 4  # In the mission, the aircraft will go to the first waypoint along a straight line.
                                                                       # This is only valid for the first waypoint.
uint8 DJIWaypointV2FlightPathModeStraightOut = 5   # Straight exit the Last waypoint, Only valid for last waypoint.
uint8 DJIWaypointV2FlightPathModeUnknown = 255    # Unknown

#constant for headMode
uint8 DJIWaypointV2HeadingModeAuto = 0    # Aircraft's heading will always be in the direction of flight.
uint8 DJIWaypointV2HeadingFixed    = 1    # Aircraft's heading will be set to the heading when reaching the first waypoint.
                                          # Before reaching the first waypoint, the aircraft's heading can be controlled by
                                          # the remote controller. When the aircraft reaches the first waypoint, its
                                          # heading will be fixed.
uint8 DJIWaypointV2HeadingManual   = 2    # The aircraft's heading in the mission can be controlled by the remote controller.
uint8 DJIWaypointV2HeadingWaypointCustom = 3  # In the mission, the aircraft's heading will change dynamically and adapt to the heading set at the next waypoint.
                                               # See ``DJIWaypointV2_heading`` to preset the heading.
uint8 DJIWaypointV2HeadingTowardPointOfInterest = 4 # Aircraft's heading will always toward point of interest.
                                                    # using ``DJIWaypointV2_pointOfInterest`` setting point of interest coordiate and ``DJIWaypointV2_pointOfInterestAltitude``
                                                    # setting point of interset altitute.
uint8 DJIWaypointV2HeadingGimbalYawFollow  = 5   # The aircraft's heading rotate simultaneously with its gimbal's yaw.
uint8 DJIWaypointV2HeadingUnknown = 255         # Unknown.

#constant for turnMode
uint8 DJIWaypointV2TurnModeClockwise = 0  # The aircraft's heading rotates clockwise.
uint8 DJIWaypointV2TurnModeCounterClockwise = 1   # The aircraft's heading rotates counterclockwise.
uint8 DJIWaypointV2TurnModeUnknown = 255    # Changes the heading of the aircraft by rotating the aircraft anti-clockwise.



#  mission, a flight route  consists of multiple `WaypointV2` objects.
float64 longitude  # waypoint position relative to WayPointV2InitSettings's reference point.unit: m
float64 latitude
float32 relativeHeight  # relative to takeoff height
uint8   waypointType    # Waypoint flight path mode
uint8   headingMode     # Represents current aircraft's heading mode on current waypoint.
WaypointV2Config  config          # Represents current waypoint's speed config.
uint16  dampingDistance
float32 heading         # The heading to which the aircraft will rotate by the time it reaches the
                        # waypoint. The aircraft heading  will gradually change between two waypoints with
                        # different headings if the waypoint  mission's `headingMode` is set  to
                        # 'DJIWaypointV2_DJIWaypointV2HeadingMode_WaypointCustom`. A heading has a range of
                        # [-180, 180] degrees, where 0 represents True North.
uint8 turnMode          # Determines whether the aircraft will turn clockwise or anticlockwise when
                        # changing its heading.
# Property is used when ``DJIWaypointV2_headingMode`` is
# ``DJIWaypointV2_DJIWaypointV2HeadingMode_TowardPointOfInterest``.
# Aircraft will always be heading to point while executing mission. Default is
# \"kCLLocationCoordinate2DInvalid\".
float32 positionX       # X distance to reference point, North is positive
float32 positionY       # Y distance to reference point, East is positive
float32 positionZ       # Z distance to reference point, UP is positive

# While the aircraft is travelling between waypoints, you can offset its speed by
# using the throttle joystick on the remote controller. \"maxFlightSpeed\" is this
# offset when the joystick is pushed to maximum deflection. For example, If
# maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the way up will
# add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s from
# the aircraft speed. If the remote controller stick is not at maximum deflection,
# then the offset speed will be interpolated between \"[0, maxFlightSpeed]\"\" with a
# resolution of 1000 steps. If the offset speed is negative, then the aircraft
# will fly backwards to previous waypoints. When it reaches the first waypoint, it
# will then hover in place until a positive speed is applied. \"maxFlightSpeed\" has
# a range of [2,15] m/s.
float32 maxFlightSpeed

# The base automatic speed of the aircraft as it moves between waypoints with
# range [-15, 15] m/s. The aircraft's actual speed is a combination of the base
# automatic speed, and the speed control given by the throttle joystick on the
# remote controller. If \"autoFlightSpeed >0\": Actual speed is \"autoFlightSpeed\" +
# Joystick Speed (with combined max of \"maxFlightSpeed\") If \"autoFlightSpeed =0\":
# Actual speed is controlled only by the remote controller joystick. If
# autoFlightSpeed <0\" and the aircraft is at the first waypoint, the aircraft
# will hover in place until the speed is made positive by the remote controller
# joystick. In flight controller firmware 3.2.10.0 or above, different speeds
# between individual waypoints can also be set in waypoint objects which will
# overwrite \"autoFlightSpeed\".
float32 autoFlightSpeed
================================================================================
MSG: dji_osdk_ros/WaypointV2Config
# Represents current waypoint's speed config.
# 0: set local waypoint's cruise speed,
# 1: unset global waypoint's cruise speed*/
uint8  useLocalCruiseVel
# 0: set local waypoint's max speed,
# 1: unset global waypoint's max speed*/
uint8  useLocalMaxVel
")



(provide :dji_osdk_ros/WaypointV2 "389194e4db4c519440c6686894700c6a")


