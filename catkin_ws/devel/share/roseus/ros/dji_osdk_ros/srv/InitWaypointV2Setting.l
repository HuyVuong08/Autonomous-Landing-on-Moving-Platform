;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::InitWaypointV2Setting)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'InitWaypointV2Setting (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::INITWAYPOINTV2SETTING")
  (make-package "DJI_OSDK_ROS::INITWAYPOINTV2SETTING"))
(unless (find-package "DJI_OSDK_ROS::INITWAYPOINTV2SETTINGREQUEST")
  (make-package "DJI_OSDK_ROS::INITWAYPOINTV2SETTINGREQUEST"))
(unless (find-package "DJI_OSDK_ROS::INITWAYPOINTV2SETTINGRESPONSE")
  (make-package "DJI_OSDK_ROS::INITWAYPOINTV2SETTINGRESPONSE"))

(in-package "ROS")





(defclass dji_osdk_ros::InitWaypointV2SettingRequest
  :super ros::object
  :slots (_waypointV2InitSettings _polygonNum _radius _actionNum ))

(defmethod dji_osdk_ros::InitWaypointV2SettingRequest
  (:init
   (&key
    ((:waypointV2InitSettings __waypointV2InitSettings) (instance dji_osdk_ros::WaypointV2InitSetting :init))
    ((:polygonNum __polygonNum) 0)
    ((:radius __radius) 0.0)
    ((:actionNum __actionNum) 0)
    )
   (send-super :init)
   (setq _waypointV2InitSettings __waypointV2InitSettings)
   (setq _polygonNum (round __polygonNum))
   (setq _radius (float __radius))
   (setq _actionNum (round __actionNum))
   self)
  (:waypointV2InitSettings
   (&rest __waypointV2InitSettings)
   (if (keywordp (car __waypointV2InitSettings))
       (send* _waypointV2InitSettings __waypointV2InitSettings)
     (progn
       (if __waypointV2InitSettings (setq _waypointV2InitSettings (car __waypointV2InitSettings)))
       _waypointV2InitSettings)))
  (:polygonNum
   (&optional __polygonNum)
   (if __polygonNum (setq _polygonNum __polygonNum)) _polygonNum)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:actionNum
   (&optional __actionNum)
   (if __actionNum (setq _actionNum __actionNum)) _actionNum)
  (:serialization-length
   ()
   (+
    ;; dji_osdk_ros/WaypointV2InitSetting _waypointV2InitSettings
    (send _waypointV2InitSettings :serialization-length)
    ;; uint16 _polygonNum
    2
    ;; float32 _radius
    4
    ;; uint16 _actionNum
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dji_osdk_ros/WaypointV2InitSetting _waypointV2InitSettings
       (send _waypointV2InitSettings :serialize s)
     ;; uint16 _polygonNum
       (write-word _polygonNum s)
     ;; float32 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _actionNum
       (write-word _actionNum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dji_osdk_ros/WaypointV2InitSetting _waypointV2InitSettings
     (send _waypointV2InitSettings :deserialize buf ptr-) (incf ptr- (send _waypointV2InitSettings :serialization-length))
   ;; uint16 _polygonNum
     (setq _polygonNum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _radius
     (setq _radius (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _actionNum
     (setq _actionNum (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass dji_osdk_ros::InitWaypointV2SettingResponse
  :super ros::object
  :slots (_result ))

(defmethod dji_osdk_ros::InitWaypointV2SettingResponse
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

(defclass dji_osdk_ros::InitWaypointV2Setting
  :super ros::object
  :slots ())

(setf (get dji_osdk_ros::InitWaypointV2Setting :md5sum-) "f07b42d879472cc58a4d50076253c8e6")
(setf (get dji_osdk_ros::InitWaypointV2Setting :datatype-) "dji_osdk_ros/InitWaypointV2Setting")
(setf (get dji_osdk_ros::InitWaypointV2Setting :request) dji_osdk_ros::InitWaypointV2SettingRequest)
(setf (get dji_osdk_ros::InitWaypointV2Setting :response) dji_osdk_ros::InitWaypointV2SettingResponse)

(defmethod dji_osdk_ros::InitWaypointV2SettingRequest
  (:response () (instance dji_osdk_ros::InitWaypointV2SettingResponse :init)))

(setf (get dji_osdk_ros::InitWaypointV2SettingRequest :md5sum-) "f07b42d879472cc58a4d50076253c8e6")
(setf (get dji_osdk_ros::InitWaypointV2SettingRequest :datatype-) "dji_osdk_ros/InitWaypointV2SettingRequest")
(setf (get dji_osdk_ros::InitWaypointV2SettingRequest :definition-)
      "#request
WaypointV2InitSetting waypointV2InitSettings
uint16 polygonNum
float32 radius
uint16 actionNum


================================================================================
MSG: dji_osdk_ros/WaypointV2InitSetting
# @brief Waypoint V2 Mission Initialization settings
# @details This is one of the few structs in the OSDK codebase that
# is used in both a sending and a receiving API.

#constant for finishedAction
uint8 DJIWaypointV2MissionFinishedNoAction = 0  # No further action will be taken.
                                                # The aircraft can be controlled by the remote controller.
uint8 DJIWaypointV2MissionFinishedGoHome = 1    # Goes home when the mission is finished. The aircraft will
                                                # land directly if it is within 20 meters away from the home point.
uint8 DJIWaypointV2MissionFinishedAutoLanding = 2  # The aircraft will land automatically at the last waypoint.
uint8 DJIWaypointV2MissionFinishedGoToFirstWaypoint = 3  # The aircraft will go back to the first waypoint and hover.
uint8 DJIWaypointV2MissionFinishedContinueUntilStop = 4  #  When the aircraft reaches its final waypoint, it will hover without ending the
                                                         # mission. The joystick  can still be used to pull the aircraft back along its
                                                         # previous waypoints. The only way this mission  can end is if stopMission is
                                                         # called

#constant for gotoFirstWaypintMode
uint8 DJIWaypointV2MissionGotoFirstWaypointModeSafely = 0 # Go to the waypoint safely. The aircraft will rise to the same altitude of the
                                                          # waypoint if the current  altitude is lower then the waypoint altitude. It then
                                                          # goes to the waypoint coordinate from the current  altitude, and proceeds to the
                                                          # altitude of the waypoint.
uint8 DJIWaypointV2MissionGotoFirstWaypointModePointToPoint = 1 # Go to the waypoint from the current aircraft point to the waypoint directly.


uint32 missionID    # The Mission ID. Use to distinguish　different mission
uint16 missTotalLen # The Mission waypoint total length, could not exceed 65535
uint8 repeatTimes   # Mission execution can be repeated more than once. A value of 0 means the mission
                    # only executes once, and does not repeat. A value of 1 means the mission will
                    # execute a total of two times.
uint8 finishedAction # Action the aircraft will take when the waypoint mission is complete.

# While the aircraft is travelling between waypoints, you can offset its speed by
# using the throttle joystick  on the remote controller. `maxFlightSpeed` is this
# offset when the joystick is pushed  to maximum deflection. For example, If
# maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the  way up
# will add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s
# from the aircraft  speed. If the remote controller stick is not at maximum
# deflection, then the offset speed will be  interpolated between [0,
# `maxFlightSpeed`] with a resolution of 1000 steps. If the  offset speed is
# negative, then the aircraft will fly backwards to previous waypoints. When it
# reaches the  first waypoint, it will then hover in place until a positive speed
# is  applied. `maxFlightSpeed` has a range of [2,15] m/s.
# unit: m/s
float32 maxFlightSpeed

# The base automatic speed of the aircraft as it moves between waypoints with
# range [-15, 15] m/s. The  aircraft's actual speed is a combination of the base
# automatic speed, and the speed control given by  the throttle joystick on the
# remote controller. If `autoFlightSpeed` >0: Actual  speed is `autoFlightSpeed` +
# Joystick Speed (with combined max  of `maxFlightSpeed`) If `autoFlightSpeed` =0:
# Actual speed is  controlled only by the remote controller joystick. If
# `autoFlightSpeed` <0 and the  aircraft is at the first waypoint, the aircraft
# will hover in place until the speed is made positive by  the remote controller
# joystick.
# unit: m/s
float32 autoFlightSpeed

uint8 exitMissionOnRCSignalLost    # Determines whether the mission should stop when connection between the  aircraft
                                   # and remote controller is lost. Default is `NO`.

uint8 gotoFirstWaypointMode        # Defines how the aircraft will go to the first waypoint from its current
                                   # position. Default  is ``DJIWaypointV2MissionV2_DJIWaypointV2MissionGotoWaypointMode_Safely``.

WaypointV2[] mission
================================================================================
MSG: dji_osdk_ros/WaypointV2
# The struct represents a target point in the waypoint mission. For a waypoint

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
---
bool result
")

(setf (get dji_osdk_ros::InitWaypointV2SettingResponse :md5sum-) "f07b42d879472cc58a4d50076253c8e6")
(setf (get dji_osdk_ros::InitWaypointV2SettingResponse :datatype-) "dji_osdk_ros/InitWaypointV2SettingResponse")
(setf (get dji_osdk_ros::InitWaypointV2SettingResponse :definition-)
      "#request
WaypointV2InitSetting waypointV2InitSettings
uint16 polygonNum
float32 radius
uint16 actionNum


================================================================================
MSG: dji_osdk_ros/WaypointV2InitSetting
# @brief Waypoint V2 Mission Initialization settings
# @details This is one of the few structs in the OSDK codebase that
# is used in both a sending and a receiving API.

#constant for finishedAction
uint8 DJIWaypointV2MissionFinishedNoAction = 0  # No further action will be taken.
                                                # The aircraft can be controlled by the remote controller.
uint8 DJIWaypointV2MissionFinishedGoHome = 1    # Goes home when the mission is finished. The aircraft will
                                                # land directly if it is within 20 meters away from the home point.
uint8 DJIWaypointV2MissionFinishedAutoLanding = 2  # The aircraft will land automatically at the last waypoint.
uint8 DJIWaypointV2MissionFinishedGoToFirstWaypoint = 3  # The aircraft will go back to the first waypoint and hover.
uint8 DJIWaypointV2MissionFinishedContinueUntilStop = 4  #  When the aircraft reaches its final waypoint, it will hover without ending the
                                                         # mission. The joystick  can still be used to pull the aircraft back along its
                                                         # previous waypoints. The only way this mission  can end is if stopMission is
                                                         # called

#constant for gotoFirstWaypintMode
uint8 DJIWaypointV2MissionGotoFirstWaypointModeSafely = 0 # Go to the waypoint safely. The aircraft will rise to the same altitude of the
                                                          # waypoint if the current  altitude is lower then the waypoint altitude. It then
                                                          # goes to the waypoint coordinate from the current  altitude, and proceeds to the
                                                          # altitude of the waypoint.
uint8 DJIWaypointV2MissionGotoFirstWaypointModePointToPoint = 1 # Go to the waypoint from the current aircraft point to the waypoint directly.


uint32 missionID    # The Mission ID. Use to distinguish　different mission
uint16 missTotalLen # The Mission waypoint total length, could not exceed 65535
uint8 repeatTimes   # Mission execution can be repeated more than once. A value of 0 means the mission
                    # only executes once, and does not repeat. A value of 1 means the mission will
                    # execute a total of two times.
uint8 finishedAction # Action the aircraft will take when the waypoint mission is complete.

# While the aircraft is travelling between waypoints, you can offset its speed by
# using the throttle joystick  on the remote controller. `maxFlightSpeed` is this
# offset when the joystick is pushed  to maximum deflection. For example, If
# maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the  way up
# will add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s
# from the aircraft  speed. If the remote controller stick is not at maximum
# deflection, then the offset speed will be  interpolated between [0,
# `maxFlightSpeed`] with a resolution of 1000 steps. If the  offset speed is
# negative, then the aircraft will fly backwards to previous waypoints. When it
# reaches the  first waypoint, it will then hover in place until a positive speed
# is  applied. `maxFlightSpeed` has a range of [2,15] m/s.
# unit: m/s
float32 maxFlightSpeed

# The base automatic speed of the aircraft as it moves between waypoints with
# range [-15, 15] m/s. The  aircraft's actual speed is a combination of the base
# automatic speed, and the speed control given by  the throttle joystick on the
# remote controller. If `autoFlightSpeed` >0: Actual  speed is `autoFlightSpeed` +
# Joystick Speed (with combined max  of `maxFlightSpeed`) If `autoFlightSpeed` =0:
# Actual speed is  controlled only by the remote controller joystick. If
# `autoFlightSpeed` <0 and the  aircraft is at the first waypoint, the aircraft
# will hover in place until the speed is made positive by  the remote controller
# joystick.
# unit: m/s
float32 autoFlightSpeed

uint8 exitMissionOnRCSignalLost    # Determines whether the mission should stop when connection between the  aircraft
                                   # and remote controller is lost. Default is `NO`.

uint8 gotoFirstWaypointMode        # Defines how the aircraft will go to the first waypoint from its current
                                   # position. Default  is ``DJIWaypointV2MissionV2_DJIWaypointV2MissionGotoWaypointMode_Safely``.

WaypointV2[] mission
================================================================================
MSG: dji_osdk_ros/WaypointV2
# The struct represents a target point in the waypoint mission. For a waypoint

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
---
bool result
")



(provide :dji_osdk_ros/InitWaypointV2Setting "f07b42d879472cc58a4d50076253c8e6")


