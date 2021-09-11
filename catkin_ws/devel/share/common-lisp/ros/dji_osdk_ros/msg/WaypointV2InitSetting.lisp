; Auto-generated. Do not edit!


(cl:in-package dji_osdk_ros-msg)


;//! \htmlinclude WaypointV2InitSetting.msg.html

(cl:defclass <WaypointV2InitSetting> (roslisp-msg-protocol:ros-message)
  ((missionID
    :reader missionID
    :initarg :missionID
    :type cl:integer
    :initform 0)
   (missTotalLen
    :reader missTotalLen
    :initarg :missTotalLen
    :type cl:fixnum
    :initform 0)
   (repeatTimes
    :reader repeatTimes
    :initarg :repeatTimes
    :type cl:fixnum
    :initform 0)
   (finishedAction
    :reader finishedAction
    :initarg :finishedAction
    :type cl:fixnum
    :initform 0)
   (maxFlightSpeed
    :reader maxFlightSpeed
    :initarg :maxFlightSpeed
    :type cl:float
    :initform 0.0)
   (autoFlightSpeed
    :reader autoFlightSpeed
    :initarg :autoFlightSpeed
    :type cl:float
    :initform 0.0)
   (exitMissionOnRCSignalLost
    :reader exitMissionOnRCSignalLost
    :initarg :exitMissionOnRCSignalLost
    :type cl:fixnum
    :initform 0)
   (gotoFirstWaypointMode
    :reader gotoFirstWaypointMode
    :initarg :gotoFirstWaypointMode
    :type cl:fixnum
    :initform 0)
   (mission
    :reader mission
    :initarg :mission
    :type (cl:vector dji_osdk_ros-msg:WaypointV2)
   :initform (cl:make-array 0 :element-type 'dji_osdk_ros-msg:WaypointV2 :initial-element (cl:make-instance 'dji_osdk_ros-msg:WaypointV2))))
)

(cl:defclass WaypointV2InitSetting (<WaypointV2InitSetting>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointV2InitSetting>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointV2InitSetting)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_osdk_ros-msg:<WaypointV2InitSetting> is deprecated: use dji_osdk_ros-msg:WaypointV2InitSetting instead.")))

(cl:ensure-generic-function 'missionID-val :lambda-list '(m))
(cl:defmethod missionID-val ((m <WaypointV2InitSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:missionID-val is deprecated.  Use dji_osdk_ros-msg:missionID instead.")
  (missionID m))

(cl:ensure-generic-function 'missTotalLen-val :lambda-list '(m))
(cl:defmethod missTotalLen-val ((m <WaypointV2InitSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:missTotalLen-val is deprecated.  Use dji_osdk_ros-msg:missTotalLen instead.")
  (missTotalLen m))

(cl:ensure-generic-function 'repeatTimes-val :lambda-list '(m))
(cl:defmethod repeatTimes-val ((m <WaypointV2InitSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:repeatTimes-val is deprecated.  Use dji_osdk_ros-msg:repeatTimes instead.")
  (repeatTimes m))

(cl:ensure-generic-function 'finishedAction-val :lambda-list '(m))
(cl:defmethod finishedAction-val ((m <WaypointV2InitSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:finishedAction-val is deprecated.  Use dji_osdk_ros-msg:finishedAction instead.")
  (finishedAction m))

(cl:ensure-generic-function 'maxFlightSpeed-val :lambda-list '(m))
(cl:defmethod maxFlightSpeed-val ((m <WaypointV2InitSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:maxFlightSpeed-val is deprecated.  Use dji_osdk_ros-msg:maxFlightSpeed instead.")
  (maxFlightSpeed m))

(cl:ensure-generic-function 'autoFlightSpeed-val :lambda-list '(m))
(cl:defmethod autoFlightSpeed-val ((m <WaypointV2InitSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:autoFlightSpeed-val is deprecated.  Use dji_osdk_ros-msg:autoFlightSpeed instead.")
  (autoFlightSpeed m))

(cl:ensure-generic-function 'exitMissionOnRCSignalLost-val :lambda-list '(m))
(cl:defmethod exitMissionOnRCSignalLost-val ((m <WaypointV2InitSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:exitMissionOnRCSignalLost-val is deprecated.  Use dji_osdk_ros-msg:exitMissionOnRCSignalLost instead.")
  (exitMissionOnRCSignalLost m))

(cl:ensure-generic-function 'gotoFirstWaypointMode-val :lambda-list '(m))
(cl:defmethod gotoFirstWaypointMode-val ((m <WaypointV2InitSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:gotoFirstWaypointMode-val is deprecated.  Use dji_osdk_ros-msg:gotoFirstWaypointMode instead.")
  (gotoFirstWaypointMode m))

(cl:ensure-generic-function 'mission-val :lambda-list '(m))
(cl:defmethod mission-val ((m <WaypointV2InitSetting>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_osdk_ros-msg:mission-val is deprecated.  Use dji_osdk_ros-msg:mission instead.")
  (mission m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointV2InitSetting>)))
    "Constants for message type '<WaypointV2InitSetting>"
  '((:DJIWAYPOINTV2MISSIONFINISHEDNOACTION . 0)
    (:DJIWAYPOINTV2MISSIONFINISHEDGOHOME . 1)
    (:DJIWAYPOINTV2MISSIONFINISHEDAUTOLANDING . 2)
    (:DJIWAYPOINTV2MISSIONFINISHEDGOTOFIRSTWAYPOINT . 3)
    (:DJIWAYPOINTV2MISSIONFINISHEDCONTINUEUNTILSTOP . 4)
    (:DJIWAYPOINTV2MISSIONGOTOFIRSTWAYPOINTMODESAFELY . 0)
    (:DJIWAYPOINTV2MISSIONGOTOFIRSTWAYPOINTMODEPOINTTOPOINT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointV2InitSetting)))
    "Constants for message type 'WaypointV2InitSetting"
  '((:DJIWAYPOINTV2MISSIONFINISHEDNOACTION . 0)
    (:DJIWAYPOINTV2MISSIONFINISHEDGOHOME . 1)
    (:DJIWAYPOINTV2MISSIONFINISHEDAUTOLANDING . 2)
    (:DJIWAYPOINTV2MISSIONFINISHEDGOTOFIRSTWAYPOINT . 3)
    (:DJIWAYPOINTV2MISSIONFINISHEDCONTINUEUNTILSTOP . 4)
    (:DJIWAYPOINTV2MISSIONGOTOFIRSTWAYPOINTMODESAFELY . 0)
    (:DJIWAYPOINTV2MISSIONGOTOFIRSTWAYPOINTMODEPOINTTOPOINT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointV2InitSetting>) ostream)
  "Serializes a message object of type '<WaypointV2InitSetting>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'missionID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'missionID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'missionID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'missionID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'missTotalLen)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'missTotalLen)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeatTimes)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'finishedAction)) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exitMissionOnRCSignalLost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gotoFirstWaypointMode)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mission))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mission))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointV2InitSetting>) istream)
  "Deserializes a message object of type '<WaypointV2InitSetting>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'missionID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'missionID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'missionID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'missionID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'missTotalLen)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'missTotalLen)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeatTimes)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'finishedAction)) (cl:read-byte istream))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exitMissionOnRCSignalLost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gotoFirstWaypointMode)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mission) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mission)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dji_osdk_ros-msg:WaypointV2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointV2InitSetting>)))
  "Returns string type for a message object of type '<WaypointV2InitSetting>"
  "dji_osdk_ros/WaypointV2InitSetting")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointV2InitSetting)))
  "Returns string type for a message object of type 'WaypointV2InitSetting"
  "dji_osdk_ros/WaypointV2InitSetting")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointV2InitSetting>)))
  "Returns md5sum for a message object of type '<WaypointV2InitSetting>"
  "fffdae5151f5e22d80b65f645433d20c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointV2InitSetting)))
  "Returns md5sum for a message object of type 'WaypointV2InitSetting"
  "fffdae5151f5e22d80b65f645433d20c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointV2InitSetting>)))
  "Returns full string definition for message of type '<WaypointV2InitSetting>"
  (cl:format cl:nil "# @brief Waypoint V2 Mission Initialization settings~%# @details This is one of the few structs in the OSDK codebase that~%# is used in both a sending and a receiving API.~%~%#constant for finishedAction~%uint8 DJIWaypointV2MissionFinishedNoAction = 0  # No further action will be taken.~%                                                # The aircraft can be controlled by the remote controller.~%uint8 DJIWaypointV2MissionFinishedGoHome = 1    # Goes home when the mission is finished. The aircraft will~%                                                # land directly if it is within 20 meters away from the home point.~%uint8 DJIWaypointV2MissionFinishedAutoLanding = 2  # The aircraft will land automatically at the last waypoint.~%uint8 DJIWaypointV2MissionFinishedGoToFirstWaypoint = 3  # The aircraft will go back to the first waypoint and hover.~%uint8 DJIWaypointV2MissionFinishedContinueUntilStop = 4  #  When the aircraft reaches its final waypoint, it will hover without ending the~%                                                         # mission. The joystick  can still be used to pull the aircraft back along its~%                                                         # previous waypoints. The only way this mission  can end is if stopMission is~%                                                         # called~%~%#constant for gotoFirstWaypintMode~%uint8 DJIWaypointV2MissionGotoFirstWaypointModeSafely = 0 # Go to the waypoint safely. The aircraft will rise to the same altitude of the~%                                                          # waypoint if the current  altitude is lower then the waypoint altitude. It then~%                                                          # goes to the waypoint coordinate from the current  altitude, and proceeds to the~%                                                          # altitude of the waypoint.~%uint8 DJIWaypointV2MissionGotoFirstWaypointModePointToPoint = 1 # Go to the waypoint from the current aircraft point to the waypoint directly.~%~%~%uint32 missionID    # The Mission ID. Use to distinguish　different mission~%uint16 missTotalLen # The Mission waypoint total length, could not exceed 65535~%uint8 repeatTimes   # Mission execution can be repeated more than once. A value of 0 means the mission~%                    # only executes once, and does not repeat. A value of 1 means the mission will~%                    # execute a total of two times.~%uint8 finishedAction # Action the aircraft will take when the waypoint mission is complete.~%~%# While the aircraft is travelling between waypoints, you can offset its speed by~%# using the throttle joystick  on the remote controller. `maxFlightSpeed` is this~%# offset when the joystick is pushed  to maximum deflection. For example, If~%# maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the  way up~%# will add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s~%# from the aircraft  speed. If the remote controller stick is not at maximum~%# deflection, then the offset speed will be  interpolated between [0,~%# `maxFlightSpeed`] with a resolution of 1000 steps. If the  offset speed is~%# negative, then the aircraft will fly backwards to previous waypoints. When it~%# reaches the  first waypoint, it will then hover in place until a positive speed~%# is  applied. `maxFlightSpeed` has a range of [2,15] m/s.~%# unit: m/s~%float32 maxFlightSpeed~%~%# The base automatic speed of the aircraft as it moves between waypoints with~%# range [-15, 15] m/s. The  aircraft's actual speed is a combination of the base~%# automatic speed, and the speed control given by  the throttle joystick on the~%# remote controller. If `autoFlightSpeed` >0: Actual  speed is `autoFlightSpeed` +~%# Joystick Speed (with combined max  of `maxFlightSpeed`) If `autoFlightSpeed` =0:~%# Actual speed is  controlled only by the remote controller joystick. If~%# `autoFlightSpeed` <0 and the  aircraft is at the first waypoint, the aircraft~%# will hover in place until the speed is made positive by  the remote controller~%# joystick.~%# unit: m/s~%float32 autoFlightSpeed~%~%uint8 exitMissionOnRCSignalLost    # Determines whether the mission should stop when connection between the  aircraft~%                                   # and remote controller is lost. Default is `NO`.~%~%uint8 gotoFirstWaypointMode        # Defines how the aircraft will go to the first waypoint from its current~%                                   # position. Default  is ``DJIWaypointV2MissionV2_DJIWaypointV2MissionGotoWaypointMode_Safely``.~%~%WaypointV2[] mission~%================================================================================~%MSG: dji_osdk_ros/WaypointV2~%# The struct represents a target point in the waypoint mission. For a waypoint~%~%#constant for flightpathMode~%uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurve = 0  #In the mission, the aircraft will go to the waypoint along a curve and fly past the waypoint.~%uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurveAndStop = 1 #In the mission, the aircraft will go to the waypoint along a curve and stop at the waypoint.~%uint8 DJIWaypointV2FlightPathModeGoToPointInAStraightLineAndStop = 2  #In the mission, the aircraft will go to the waypoint along a straight line and stop at the waypoint.~%uint8 DJIWaypointV2FlightPathModeCoordinateTurn = 3   #In the mission, the aircraft will fly from the previous waypoint to the next waypoint along a smooth curve without stopping at this waypoint.~%                                                      #the next in a curved motion,  adhering to the ``DJIWaypointV2_dampingDistance``, which is~%                                                      #set in ``DJIWaypointV2``.~%uint8 DJIWaypointV2FlightPathModeGoToFirstPointAlongAStraightLine = 4  # In the mission, the aircraft will go to the first waypoint along a straight line.~%                                                                       # This is only valid for the first waypoint.~%uint8 DJIWaypointV2FlightPathModeStraightOut = 5   # Straight exit the Last waypoint, Only valid for last waypoint.~%uint8 DJIWaypointV2FlightPathModeUnknown = 255    # Unknown~%~%#constant for headMode~%uint8 DJIWaypointV2HeadingModeAuto = 0    # Aircraft's heading will always be in the direction of flight.~%uint8 DJIWaypointV2HeadingFixed    = 1    # Aircraft's heading will be set to the heading when reaching the first waypoint.~%                                          # Before reaching the first waypoint, the aircraft's heading can be controlled by~%                                          # the remote controller. When the aircraft reaches the first waypoint, its~%                                          # heading will be fixed.~%uint8 DJIWaypointV2HeadingManual   = 2    # The aircraft's heading in the mission can be controlled by the remote controller.~%uint8 DJIWaypointV2HeadingWaypointCustom = 3  # In the mission, the aircraft's heading will change dynamically and adapt to the heading set at the next waypoint.~%                                               # See ``DJIWaypointV2_heading`` to preset the heading.~%uint8 DJIWaypointV2HeadingTowardPointOfInterest = 4 # Aircraft's heading will always toward point of interest.~%                                                    # using ``DJIWaypointV2_pointOfInterest`` setting point of interest coordiate and ``DJIWaypointV2_pointOfInterestAltitude``~%                                                    # setting point of interset altitute.~%uint8 DJIWaypointV2HeadingGimbalYawFollow  = 5   # The aircraft's heading rotate simultaneously with its gimbal's yaw.~%uint8 DJIWaypointV2HeadingUnknown = 255         # Unknown.~%~%#constant for turnMode~%uint8 DJIWaypointV2TurnModeClockwise = 0  # The aircraft's heading rotates clockwise.~%uint8 DJIWaypointV2TurnModeCounterClockwise = 1   # The aircraft's heading rotates counterclockwise.~%uint8 DJIWaypointV2TurnModeUnknown = 255    # Changes the heading of the aircraft by rotating the aircraft anti-clockwise.~%~%~%~%#  mission, a flight route  consists of multiple `WaypointV2` objects.~%float64 longitude  # waypoint position relative to WayPointV2InitSettings's reference point.unit: m~%float64 latitude~%float32 relativeHeight  # relative to takeoff height~%uint8   waypointType    # Waypoint flight path mode~%uint8   headingMode     # Represents current aircraft's heading mode on current waypoint.~%WaypointV2Config  config          # Represents current waypoint's speed config.~%uint16  dampingDistance~%float32 heading         # The heading to which the aircraft will rotate by the time it reaches the~%                        # waypoint. The aircraft heading  will gradually change between two waypoints with~%                        # different headings if the waypoint  mission's `headingMode` is set  to~%                        # 'DJIWaypointV2_DJIWaypointV2HeadingMode_WaypointCustom`. A heading has a range of~%                        # [-180, 180] degrees, where 0 represents True North.~%uint8 turnMode          # Determines whether the aircraft will turn clockwise or anticlockwise when~%                        # changing its heading.~%# Property is used when ``DJIWaypointV2_headingMode`` is~%# ``DJIWaypointV2_DJIWaypointV2HeadingMode_TowardPointOfInterest``.~%# Aircraft will always be heading to point while executing mission. Default is~%# \"kCLLocationCoordinate2DInvalid\".~%float32 positionX       # X distance to reference point, North is positive~%float32 positionY       # Y distance to reference point, East is positive~%float32 positionZ       # Z distance to reference point, UP is positive~%~%# While the aircraft is travelling between waypoints, you can offset its speed by~%# using the throttle joystick on the remote controller. \"maxFlightSpeed\" is this~%# offset when the joystick is pushed to maximum deflection. For example, If~%# maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the way up will~%# add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s from~%# the aircraft speed. If the remote controller stick is not at maximum deflection,~%# then the offset speed will be interpolated between \"[0, maxFlightSpeed]\"\" with a~%# resolution of 1000 steps. If the offset speed is negative, then the aircraft~%# will fly backwards to previous waypoints. When it reaches the first waypoint, it~%# will then hover in place until a positive speed is applied. \"maxFlightSpeed\" has~%# a range of [2,15] m/s.~%float32 maxFlightSpeed~%~%# The base automatic speed of the aircraft as it moves between waypoints with~%# range [-15, 15] m/s. The aircraft's actual speed is a combination of the base~%# automatic speed, and the speed control given by the throttle joystick on the~%# remote controller. If \"autoFlightSpeed >0\": Actual speed is \"autoFlightSpeed\" +~%# Joystick Speed (with combined max of \"maxFlightSpeed\") If \"autoFlightSpeed =0\":~%# Actual speed is controlled only by the remote controller joystick. If~%# autoFlightSpeed <0\" and the aircraft is at the first waypoint, the aircraft~%# will hover in place until the speed is made positive by the remote controller~%# joystick. In flight controller firmware 3.2.10.0 or above, different speeds~%# between individual waypoints can also be set in waypoint objects which will~%# overwrite \"autoFlightSpeed\".~%float32 autoFlightSpeed~%================================================================================~%MSG: dji_osdk_ros/WaypointV2Config~%# Represents current waypoint's speed config.~%# 0: set local waypoint's cruise speed,~%# 1: unset global waypoint's cruise speed*/~%uint8  useLocalCruiseVel~%# 0: set local waypoint's max speed,~%# 1: unset global waypoint's max speed*/~%uint8  useLocalMaxVel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointV2InitSetting)))
  "Returns full string definition for message of type 'WaypointV2InitSetting"
  (cl:format cl:nil "# @brief Waypoint V2 Mission Initialization settings~%# @details This is one of the few structs in the OSDK codebase that~%# is used in both a sending and a receiving API.~%~%#constant for finishedAction~%uint8 DJIWaypointV2MissionFinishedNoAction = 0  # No further action will be taken.~%                                                # The aircraft can be controlled by the remote controller.~%uint8 DJIWaypointV2MissionFinishedGoHome = 1    # Goes home when the mission is finished. The aircraft will~%                                                # land directly if it is within 20 meters away from the home point.~%uint8 DJIWaypointV2MissionFinishedAutoLanding = 2  # The aircraft will land automatically at the last waypoint.~%uint8 DJIWaypointV2MissionFinishedGoToFirstWaypoint = 3  # The aircraft will go back to the first waypoint and hover.~%uint8 DJIWaypointV2MissionFinishedContinueUntilStop = 4  #  When the aircraft reaches its final waypoint, it will hover without ending the~%                                                         # mission. The joystick  can still be used to pull the aircraft back along its~%                                                         # previous waypoints. The only way this mission  can end is if stopMission is~%                                                         # called~%~%#constant for gotoFirstWaypintMode~%uint8 DJIWaypointV2MissionGotoFirstWaypointModeSafely = 0 # Go to the waypoint safely. The aircraft will rise to the same altitude of the~%                                                          # waypoint if the current  altitude is lower then the waypoint altitude. It then~%                                                          # goes to the waypoint coordinate from the current  altitude, and proceeds to the~%                                                          # altitude of the waypoint.~%uint8 DJIWaypointV2MissionGotoFirstWaypointModePointToPoint = 1 # Go to the waypoint from the current aircraft point to the waypoint directly.~%~%~%uint32 missionID    # The Mission ID. Use to distinguish　different mission~%uint16 missTotalLen # The Mission waypoint total length, could not exceed 65535~%uint8 repeatTimes   # Mission execution can be repeated more than once. A value of 0 means the mission~%                    # only executes once, and does not repeat. A value of 1 means the mission will~%                    # execute a total of two times.~%uint8 finishedAction # Action the aircraft will take when the waypoint mission is complete.~%~%# While the aircraft is travelling between waypoints, you can offset its speed by~%# using the throttle joystick  on the remote controller. `maxFlightSpeed` is this~%# offset when the joystick is pushed  to maximum deflection. For example, If~%# maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the  way up~%# will add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s~%# from the aircraft  speed. If the remote controller stick is not at maximum~%# deflection, then the offset speed will be  interpolated between [0,~%# `maxFlightSpeed`] with a resolution of 1000 steps. If the  offset speed is~%# negative, then the aircraft will fly backwards to previous waypoints. When it~%# reaches the  first waypoint, it will then hover in place until a positive speed~%# is  applied. `maxFlightSpeed` has a range of [2,15] m/s.~%# unit: m/s~%float32 maxFlightSpeed~%~%# The base automatic speed of the aircraft as it moves between waypoints with~%# range [-15, 15] m/s. The  aircraft's actual speed is a combination of the base~%# automatic speed, and the speed control given by  the throttle joystick on the~%# remote controller. If `autoFlightSpeed` >0: Actual  speed is `autoFlightSpeed` +~%# Joystick Speed (with combined max  of `maxFlightSpeed`) If `autoFlightSpeed` =0:~%# Actual speed is  controlled only by the remote controller joystick. If~%# `autoFlightSpeed` <0 and the  aircraft is at the first waypoint, the aircraft~%# will hover in place until the speed is made positive by  the remote controller~%# joystick.~%# unit: m/s~%float32 autoFlightSpeed~%~%uint8 exitMissionOnRCSignalLost    # Determines whether the mission should stop when connection between the  aircraft~%                                   # and remote controller is lost. Default is `NO`.~%~%uint8 gotoFirstWaypointMode        # Defines how the aircraft will go to the first waypoint from its current~%                                   # position. Default  is ``DJIWaypointV2MissionV2_DJIWaypointV2MissionGotoWaypointMode_Safely``.~%~%WaypointV2[] mission~%================================================================================~%MSG: dji_osdk_ros/WaypointV2~%# The struct represents a target point in the waypoint mission. For a waypoint~%~%#constant for flightpathMode~%uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurve = 0  #In the mission, the aircraft will go to the waypoint along a curve and fly past the waypoint.~%uint8 DJIWaypointV2FlightPathModeGoToPointAlongACurveAndStop = 1 #In the mission, the aircraft will go to the waypoint along a curve and stop at the waypoint.~%uint8 DJIWaypointV2FlightPathModeGoToPointInAStraightLineAndStop = 2  #In the mission, the aircraft will go to the waypoint along a straight line and stop at the waypoint.~%uint8 DJIWaypointV2FlightPathModeCoordinateTurn = 3   #In the mission, the aircraft will fly from the previous waypoint to the next waypoint along a smooth curve without stopping at this waypoint.~%                                                      #the next in a curved motion,  adhering to the ``DJIWaypointV2_dampingDistance``, which is~%                                                      #set in ``DJIWaypointV2``.~%uint8 DJIWaypointV2FlightPathModeGoToFirstPointAlongAStraightLine = 4  # In the mission, the aircraft will go to the first waypoint along a straight line.~%                                                                       # This is only valid for the first waypoint.~%uint8 DJIWaypointV2FlightPathModeStraightOut = 5   # Straight exit the Last waypoint, Only valid for last waypoint.~%uint8 DJIWaypointV2FlightPathModeUnknown = 255    # Unknown~%~%#constant for headMode~%uint8 DJIWaypointV2HeadingModeAuto = 0    # Aircraft's heading will always be in the direction of flight.~%uint8 DJIWaypointV2HeadingFixed    = 1    # Aircraft's heading will be set to the heading when reaching the first waypoint.~%                                          # Before reaching the first waypoint, the aircraft's heading can be controlled by~%                                          # the remote controller. When the aircraft reaches the first waypoint, its~%                                          # heading will be fixed.~%uint8 DJIWaypointV2HeadingManual   = 2    # The aircraft's heading in the mission can be controlled by the remote controller.~%uint8 DJIWaypointV2HeadingWaypointCustom = 3  # In the mission, the aircraft's heading will change dynamically and adapt to the heading set at the next waypoint.~%                                               # See ``DJIWaypointV2_heading`` to preset the heading.~%uint8 DJIWaypointV2HeadingTowardPointOfInterest = 4 # Aircraft's heading will always toward point of interest.~%                                                    # using ``DJIWaypointV2_pointOfInterest`` setting point of interest coordiate and ``DJIWaypointV2_pointOfInterestAltitude``~%                                                    # setting point of interset altitute.~%uint8 DJIWaypointV2HeadingGimbalYawFollow  = 5   # The aircraft's heading rotate simultaneously with its gimbal's yaw.~%uint8 DJIWaypointV2HeadingUnknown = 255         # Unknown.~%~%#constant for turnMode~%uint8 DJIWaypointV2TurnModeClockwise = 0  # The aircraft's heading rotates clockwise.~%uint8 DJIWaypointV2TurnModeCounterClockwise = 1   # The aircraft's heading rotates counterclockwise.~%uint8 DJIWaypointV2TurnModeUnknown = 255    # Changes the heading of the aircraft by rotating the aircraft anti-clockwise.~%~%~%~%#  mission, a flight route  consists of multiple `WaypointV2` objects.~%float64 longitude  # waypoint position relative to WayPointV2InitSettings's reference point.unit: m~%float64 latitude~%float32 relativeHeight  # relative to takeoff height~%uint8   waypointType    # Waypoint flight path mode~%uint8   headingMode     # Represents current aircraft's heading mode on current waypoint.~%WaypointV2Config  config          # Represents current waypoint's speed config.~%uint16  dampingDistance~%float32 heading         # The heading to which the aircraft will rotate by the time it reaches the~%                        # waypoint. The aircraft heading  will gradually change between two waypoints with~%                        # different headings if the waypoint  mission's `headingMode` is set  to~%                        # 'DJIWaypointV2_DJIWaypointV2HeadingMode_WaypointCustom`. A heading has a range of~%                        # [-180, 180] degrees, where 0 represents True North.~%uint8 turnMode          # Determines whether the aircraft will turn clockwise or anticlockwise when~%                        # changing its heading.~%# Property is used when ``DJIWaypointV2_headingMode`` is~%# ``DJIWaypointV2_DJIWaypointV2HeadingMode_TowardPointOfInterest``.~%# Aircraft will always be heading to point while executing mission. Default is~%# \"kCLLocationCoordinate2DInvalid\".~%float32 positionX       # X distance to reference point, North is positive~%float32 positionY       # Y distance to reference point, East is positive~%float32 positionZ       # Z distance to reference point, UP is positive~%~%# While the aircraft is travelling between waypoints, you can offset its speed by~%# using the throttle joystick on the remote controller. \"maxFlightSpeed\" is this~%# offset when the joystick is pushed to maximum deflection. For example, If~%# maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the way up will~%# add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s from~%# the aircraft speed. If the remote controller stick is not at maximum deflection,~%# then the offset speed will be interpolated between \"[0, maxFlightSpeed]\"\" with a~%# resolution of 1000 steps. If the offset speed is negative, then the aircraft~%# will fly backwards to previous waypoints. When it reaches the first waypoint, it~%# will then hover in place until a positive speed is applied. \"maxFlightSpeed\" has~%# a range of [2,15] m/s.~%float32 maxFlightSpeed~%~%# The base automatic speed of the aircraft as it moves between waypoints with~%# range [-15, 15] m/s. The aircraft's actual speed is a combination of the base~%# automatic speed, and the speed control given by the throttle joystick on the~%# remote controller. If \"autoFlightSpeed >0\": Actual speed is \"autoFlightSpeed\" +~%# Joystick Speed (with combined max of \"maxFlightSpeed\") If \"autoFlightSpeed =0\":~%# Actual speed is controlled only by the remote controller joystick. If~%# autoFlightSpeed <0\" and the aircraft is at the first waypoint, the aircraft~%# will hover in place until the speed is made positive by the remote controller~%# joystick. In flight controller firmware 3.2.10.0 or above, different speeds~%# between individual waypoints can also be set in waypoint objects which will~%# overwrite \"autoFlightSpeed\".~%float32 autoFlightSpeed~%================================================================================~%MSG: dji_osdk_ros/WaypointV2Config~%# Represents current waypoint's speed config.~%# 0: set local waypoint's cruise speed,~%# 1: unset global waypoint's cruise speed*/~%uint8  useLocalCruiseVel~%# 0: set local waypoint's max speed,~%# 1: unset global waypoint's max speed*/~%uint8  useLocalMaxVel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointV2InitSetting>))
  (cl:+ 0
     4
     2
     1
     1
     4
     4
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mission) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointV2InitSetting>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointV2InitSetting
    (cl:cons ':missionID (missionID msg))
    (cl:cons ':missTotalLen (missTotalLen msg))
    (cl:cons ':repeatTimes (repeatTimes msg))
    (cl:cons ':finishedAction (finishedAction msg))
    (cl:cons ':maxFlightSpeed (maxFlightSpeed msg))
    (cl:cons ':autoFlightSpeed (autoFlightSpeed msg))
    (cl:cons ':exitMissionOnRCSignalLost (exitMissionOnRCSignalLost msg))
    (cl:cons ':gotoFirstWaypointMode (gotoFirstWaypointMode msg))
    (cl:cons ':mission (mission msg))
))
