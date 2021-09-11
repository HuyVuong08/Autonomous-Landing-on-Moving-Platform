;; Auto-generated. Do not edit!


(when (boundp 'dji_osdk_ros::WaypointV2InitSetting)
  (if (not (find-package "DJI_OSDK_ROS"))
    (make-package "DJI_OSDK_ROS"))
  (shadow 'WaypointV2InitSetting (find-package "DJI_OSDK_ROS")))
(unless (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING")
  (make-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))

(in-package "ROS")
;;//! \htmlinclude WaypointV2InitSetting.msg.html


(intern "*DJIWAYPOINTV2MISSIONFINISHEDNOACTION*" (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(shadow '*DJIWAYPOINTV2MISSIONFINISHEDNOACTION* (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(defconstant dji_osdk_ros::WaypointV2InitSetting::*DJIWAYPOINTV2MISSIONFINISHEDNOACTION* 0)
(intern "*DJIWAYPOINTV2MISSIONFINISHEDGOHOME*" (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(shadow '*DJIWAYPOINTV2MISSIONFINISHEDGOHOME* (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(defconstant dji_osdk_ros::WaypointV2InitSetting::*DJIWAYPOINTV2MISSIONFINISHEDGOHOME* 1)
(intern "*DJIWAYPOINTV2MISSIONFINISHEDAUTOLANDING*" (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(shadow '*DJIWAYPOINTV2MISSIONFINISHEDAUTOLANDING* (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(defconstant dji_osdk_ros::WaypointV2InitSetting::*DJIWAYPOINTV2MISSIONFINISHEDAUTOLANDING* 2)
(intern "*DJIWAYPOINTV2MISSIONFINISHEDGOTOFIRSTWAYPOINT*" (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(shadow '*DJIWAYPOINTV2MISSIONFINISHEDGOTOFIRSTWAYPOINT* (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(defconstant dji_osdk_ros::WaypointV2InitSetting::*DJIWAYPOINTV2MISSIONFINISHEDGOTOFIRSTWAYPOINT* 3)
(intern "*DJIWAYPOINTV2MISSIONFINISHEDCONTINUEUNTILSTOP*" (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(shadow '*DJIWAYPOINTV2MISSIONFINISHEDCONTINUEUNTILSTOP* (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(defconstant dji_osdk_ros::WaypointV2InitSetting::*DJIWAYPOINTV2MISSIONFINISHEDCONTINUEUNTILSTOP* 4)
(intern "*DJIWAYPOINTV2MISSIONGOTOFIRSTWAYPOINTMODESAFELY*" (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(shadow '*DJIWAYPOINTV2MISSIONGOTOFIRSTWAYPOINTMODESAFELY* (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(defconstant dji_osdk_ros::WaypointV2InitSetting::*DJIWAYPOINTV2MISSIONGOTOFIRSTWAYPOINTMODESAFELY* 0)
(intern "*DJIWAYPOINTV2MISSIONGOTOFIRSTWAYPOINTMODEPOINTTOPOINT*" (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(shadow '*DJIWAYPOINTV2MISSIONGOTOFIRSTWAYPOINTMODEPOINTTOPOINT* (find-package "DJI_OSDK_ROS::WAYPOINTV2INITSETTING"))
(defconstant dji_osdk_ros::WaypointV2InitSetting::*DJIWAYPOINTV2MISSIONGOTOFIRSTWAYPOINTMODEPOINTTOPOINT* 1)

(defun dji_osdk_ros::WaypointV2InitSetting-to-symbol (const)
  (cond
        ((= const 0) 'dji_osdk_ros::WaypointV2InitSetting::*DJIWaypointV2MissionFinishedNoAction*)
        ((= const 1) 'dji_osdk_ros::WaypointV2InitSetting::*DJIWaypointV2MissionFinishedGoHome*)
        ((= const 2) 'dji_osdk_ros::WaypointV2InitSetting::*DJIWaypointV2MissionFinishedAutoLanding*)
        ((= const 3) 'dji_osdk_ros::WaypointV2InitSetting::*DJIWaypointV2MissionFinishedGoToFirstWaypoint*)
        ((= const 4) 'dji_osdk_ros::WaypointV2InitSetting::*DJIWaypointV2MissionFinishedContinueUntilStop*)
        ((= const 0) 'dji_osdk_ros::WaypointV2InitSetting::*DJIWaypointV2MissionGotoFirstWaypointModeSafely*)
        ((= const 1) 'dji_osdk_ros::WaypointV2InitSetting::*DJIWaypointV2MissionGotoFirstWaypointModePointToPoint*)
        (t nil)))

(defclass dji_osdk_ros::WaypointV2InitSetting
  :super ros::object
  :slots (_missionID _missTotalLen _repeatTimes _finishedAction _maxFlightSpeed _autoFlightSpeed _exitMissionOnRCSignalLost _gotoFirstWaypointMode _mission ))

(defmethod dji_osdk_ros::WaypointV2InitSetting
  (:init
   (&key
    ((:missionID __missionID) 0)
    ((:missTotalLen __missTotalLen) 0)
    ((:repeatTimes __repeatTimes) 0)
    ((:finishedAction __finishedAction) 0)
    ((:maxFlightSpeed __maxFlightSpeed) 0.0)
    ((:autoFlightSpeed __autoFlightSpeed) 0.0)
    ((:exitMissionOnRCSignalLost __exitMissionOnRCSignalLost) 0)
    ((:gotoFirstWaypointMode __gotoFirstWaypointMode) 0)
    ((:mission __mission) ())
    )
   (send-super :init)
   (setq _missionID (round __missionID))
   (setq _missTotalLen (round __missTotalLen))
   (setq _repeatTimes (round __repeatTimes))
   (setq _finishedAction (round __finishedAction))
   (setq _maxFlightSpeed (float __maxFlightSpeed))
   (setq _autoFlightSpeed (float __autoFlightSpeed))
   (setq _exitMissionOnRCSignalLost (round __exitMissionOnRCSignalLost))
   (setq _gotoFirstWaypointMode (round __gotoFirstWaypointMode))
   (setq _mission __mission)
   self)
  (:missionID
   (&optional __missionID)
   (if __missionID (setq _missionID __missionID)) _missionID)
  (:missTotalLen
   (&optional __missTotalLen)
   (if __missTotalLen (setq _missTotalLen __missTotalLen)) _missTotalLen)
  (:repeatTimes
   (&optional __repeatTimes)
   (if __repeatTimes (setq _repeatTimes __repeatTimes)) _repeatTimes)
  (:finishedAction
   (&optional __finishedAction)
   (if __finishedAction (setq _finishedAction __finishedAction)) _finishedAction)
  (:maxFlightSpeed
   (&optional __maxFlightSpeed)
   (if __maxFlightSpeed (setq _maxFlightSpeed __maxFlightSpeed)) _maxFlightSpeed)
  (:autoFlightSpeed
   (&optional __autoFlightSpeed)
   (if __autoFlightSpeed (setq _autoFlightSpeed __autoFlightSpeed)) _autoFlightSpeed)
  (:exitMissionOnRCSignalLost
   (&optional __exitMissionOnRCSignalLost)
   (if __exitMissionOnRCSignalLost (setq _exitMissionOnRCSignalLost __exitMissionOnRCSignalLost)) _exitMissionOnRCSignalLost)
  (:gotoFirstWaypointMode
   (&optional __gotoFirstWaypointMode)
   (if __gotoFirstWaypointMode (setq _gotoFirstWaypointMode __gotoFirstWaypointMode)) _gotoFirstWaypointMode)
  (:mission
   (&rest __mission)
   (if (keywordp (car __mission))
       (send* _mission __mission)
     (progn
       (if __mission (setq _mission (car __mission)))
       _mission)))
  (:serialization-length
   ()
   (+
    ;; uint32 _missionID
    4
    ;; uint16 _missTotalLen
    2
    ;; uint8 _repeatTimes
    1
    ;; uint8 _finishedAction
    1
    ;; float32 _maxFlightSpeed
    4
    ;; float32 _autoFlightSpeed
    4
    ;; uint8 _exitMissionOnRCSignalLost
    1
    ;; uint8 _gotoFirstWaypointMode
    1
    ;; dji_osdk_ros/WaypointV2[] _mission
    (apply #'+ (send-all _mission :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _missionID
       (write-long _missionID s)
     ;; uint16 _missTotalLen
       (write-word _missTotalLen s)
     ;; uint8 _repeatTimes
       (write-byte _repeatTimes s)
     ;; uint8 _finishedAction
       (write-byte _finishedAction s)
     ;; float32 _maxFlightSpeed
       (sys::poke _maxFlightSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _autoFlightSpeed
       (sys::poke _autoFlightSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _exitMissionOnRCSignalLost
       (write-byte _exitMissionOnRCSignalLost s)
     ;; uint8 _gotoFirstWaypointMode
       (write-byte _gotoFirstWaypointMode s)
     ;; dji_osdk_ros/WaypointV2[] _mission
     (write-long (length _mission) s)
     (dolist (elem _mission)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _missionID
     (setq _missionID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _missTotalLen
     (setq _missTotalLen (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _repeatTimes
     (setq _repeatTimes (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _finishedAction
     (setq _finishedAction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _maxFlightSpeed
     (setq _maxFlightSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _autoFlightSpeed
     (setq _autoFlightSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _exitMissionOnRCSignalLost
     (setq _exitMissionOnRCSignalLost (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gotoFirstWaypointMode
     (setq _gotoFirstWaypointMode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dji_osdk_ros/WaypointV2[] _mission
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mission (let (r) (dotimes (i n) (push (instance dji_osdk_ros::WaypointV2 :init) r)) r))
     (dolist (elem- _mission)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dji_osdk_ros::WaypointV2InitSetting :md5sum-) "fffdae5151f5e22d80b65f645433d20c")
(setf (get dji_osdk_ros::WaypointV2InitSetting :datatype-) "dji_osdk_ros/WaypointV2InitSetting")
(setf (get dji_osdk_ros::WaypointV2InitSetting :definition-)
      "# @brief Waypoint V2 Mission Initialization settings
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
uint8  useLocalMaxVel
")



(provide :dji_osdk_ros/WaypointV2InitSetting "fffdae5151f5e22d80b65f645433d20c")


