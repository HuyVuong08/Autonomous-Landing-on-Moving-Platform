// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WaypointV2 = require('./WaypointV2.js');

//-----------------------------------------------------------

class WaypointV2InitSetting {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.missionID = null;
      this.missTotalLen = null;
      this.repeatTimes = null;
      this.finishedAction = null;
      this.maxFlightSpeed = null;
      this.autoFlightSpeed = null;
      this.exitMissionOnRCSignalLost = null;
      this.gotoFirstWaypointMode = null;
      this.mission = null;
    }
    else {
      if (initObj.hasOwnProperty('missionID')) {
        this.missionID = initObj.missionID
      }
      else {
        this.missionID = 0;
      }
      if (initObj.hasOwnProperty('missTotalLen')) {
        this.missTotalLen = initObj.missTotalLen
      }
      else {
        this.missTotalLen = 0;
      }
      if (initObj.hasOwnProperty('repeatTimes')) {
        this.repeatTimes = initObj.repeatTimes
      }
      else {
        this.repeatTimes = 0;
      }
      if (initObj.hasOwnProperty('finishedAction')) {
        this.finishedAction = initObj.finishedAction
      }
      else {
        this.finishedAction = 0;
      }
      if (initObj.hasOwnProperty('maxFlightSpeed')) {
        this.maxFlightSpeed = initObj.maxFlightSpeed
      }
      else {
        this.maxFlightSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('autoFlightSpeed')) {
        this.autoFlightSpeed = initObj.autoFlightSpeed
      }
      else {
        this.autoFlightSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('exitMissionOnRCSignalLost')) {
        this.exitMissionOnRCSignalLost = initObj.exitMissionOnRCSignalLost
      }
      else {
        this.exitMissionOnRCSignalLost = 0;
      }
      if (initObj.hasOwnProperty('gotoFirstWaypointMode')) {
        this.gotoFirstWaypointMode = initObj.gotoFirstWaypointMode
      }
      else {
        this.gotoFirstWaypointMode = 0;
      }
      if (initObj.hasOwnProperty('mission')) {
        this.mission = initObj.mission
      }
      else {
        this.mission = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2InitSetting
    // Serialize message field [missionID]
    bufferOffset = _serializer.uint32(obj.missionID, buffer, bufferOffset);
    // Serialize message field [missTotalLen]
    bufferOffset = _serializer.uint16(obj.missTotalLen, buffer, bufferOffset);
    // Serialize message field [repeatTimes]
    bufferOffset = _serializer.uint8(obj.repeatTimes, buffer, bufferOffset);
    // Serialize message field [finishedAction]
    bufferOffset = _serializer.uint8(obj.finishedAction, buffer, bufferOffset);
    // Serialize message field [maxFlightSpeed]
    bufferOffset = _serializer.float32(obj.maxFlightSpeed, buffer, bufferOffset);
    // Serialize message field [autoFlightSpeed]
    bufferOffset = _serializer.float32(obj.autoFlightSpeed, buffer, bufferOffset);
    // Serialize message field [exitMissionOnRCSignalLost]
    bufferOffset = _serializer.uint8(obj.exitMissionOnRCSignalLost, buffer, bufferOffset);
    // Serialize message field [gotoFirstWaypointMode]
    bufferOffset = _serializer.uint8(obj.gotoFirstWaypointMode, buffer, bufferOffset);
    // Serialize message field [mission]
    // Serialize the length for message field [mission]
    bufferOffset = _serializer.uint32(obj.mission.length, buffer, bufferOffset);
    obj.mission.forEach((val) => {
      bufferOffset = WaypointV2.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2InitSetting
    let len;
    let data = new WaypointV2InitSetting(null);
    // Deserialize message field [missionID]
    data.missionID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [missTotalLen]
    data.missTotalLen = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [repeatTimes]
    data.repeatTimes = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [finishedAction]
    data.finishedAction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [maxFlightSpeed]
    data.maxFlightSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [autoFlightSpeed]
    data.autoFlightSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [exitMissionOnRCSignalLost]
    data.exitMissionOnRCSignalLost = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gotoFirstWaypointMode]
    data.gotoFirstWaypointMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mission]
    // Deserialize array length for message field [mission]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.mission = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.mission[i] = WaypointV2.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 51 * object.mission.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2InitSetting';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fffdae5151f5e22d80b65f645433d20c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    # "kCLLocationCoordinate2DInvalid".
    float32 positionX       # X distance to reference point, North is positive
    float32 positionY       # Y distance to reference point, East is positive
    float32 positionZ       # Z distance to reference point, UP is positive
    
    # While the aircraft is travelling between waypoints, you can offset its speed by
    # using the throttle joystick on the remote controller. "maxFlightSpeed" is this
    # offset when the joystick is pushed to maximum deflection. For example, If
    # maxFlightSpeed is 10 m/s, then pushing the throttle joystick all the way up will
    # add 10 m/s to the aircraft speed, while pushing down will subtract 10 m/s from
    # the aircraft speed. If the remote controller stick is not at maximum deflection,
    # then the offset speed will be interpolated between "[0, maxFlightSpeed]"" with a
    # resolution of 1000 steps. If the offset speed is negative, then the aircraft
    # will fly backwards to previous waypoints. When it reaches the first waypoint, it
    # will then hover in place until a positive speed is applied. "maxFlightSpeed" has
    # a range of [2,15] m/s.
    float32 maxFlightSpeed
    
    # The base automatic speed of the aircraft as it moves between waypoints with
    # range [-15, 15] m/s. The aircraft's actual speed is a combination of the base
    # automatic speed, and the speed control given by the throttle joystick on the
    # remote controller. If "autoFlightSpeed >0": Actual speed is "autoFlightSpeed" +
    # Joystick Speed (with combined max of "maxFlightSpeed") If "autoFlightSpeed =0":
    # Actual speed is controlled only by the remote controller joystick. If
    # autoFlightSpeed <0" and the aircraft is at the first waypoint, the aircraft
    # will hover in place until the speed is made positive by the remote controller
    # joystick. In flight controller firmware 3.2.10.0 or above, different speeds
    # between individual waypoints can also be set in waypoint objects which will
    # overwrite "autoFlightSpeed".
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2InitSetting(null);
    if (msg.missionID !== undefined) {
      resolved.missionID = msg.missionID;
    }
    else {
      resolved.missionID = 0
    }

    if (msg.missTotalLen !== undefined) {
      resolved.missTotalLen = msg.missTotalLen;
    }
    else {
      resolved.missTotalLen = 0
    }

    if (msg.repeatTimes !== undefined) {
      resolved.repeatTimes = msg.repeatTimes;
    }
    else {
      resolved.repeatTimes = 0
    }

    if (msg.finishedAction !== undefined) {
      resolved.finishedAction = msg.finishedAction;
    }
    else {
      resolved.finishedAction = 0
    }

    if (msg.maxFlightSpeed !== undefined) {
      resolved.maxFlightSpeed = msg.maxFlightSpeed;
    }
    else {
      resolved.maxFlightSpeed = 0.0
    }

    if (msg.autoFlightSpeed !== undefined) {
      resolved.autoFlightSpeed = msg.autoFlightSpeed;
    }
    else {
      resolved.autoFlightSpeed = 0.0
    }

    if (msg.exitMissionOnRCSignalLost !== undefined) {
      resolved.exitMissionOnRCSignalLost = msg.exitMissionOnRCSignalLost;
    }
    else {
      resolved.exitMissionOnRCSignalLost = 0
    }

    if (msg.gotoFirstWaypointMode !== undefined) {
      resolved.gotoFirstWaypointMode = msg.gotoFirstWaypointMode;
    }
    else {
      resolved.gotoFirstWaypointMode = 0
    }

    if (msg.mission !== undefined) {
      resolved.mission = new Array(msg.mission.length);
      for (let i = 0; i < resolved.mission.length; ++i) {
        resolved.mission[i] = WaypointV2.Resolve(msg.mission[i]);
      }
    }
    else {
      resolved.mission = []
    }

    return resolved;
    }
};

// Constants for message
WaypointV2InitSetting.Constants = {
  DJIWAYPOINTV2MISSIONFINISHEDNOACTION: 0,
  DJIWAYPOINTV2MISSIONFINISHEDGOHOME: 1,
  DJIWAYPOINTV2MISSIONFINISHEDAUTOLANDING: 2,
  DJIWAYPOINTV2MISSIONFINISHEDGOTOFIRSTWAYPOINT: 3,
  DJIWAYPOINTV2MISSIONFINISHEDCONTINUEUNTILSTOP: 4,
  DJIWAYPOINTV2MISSIONGOTOFIRSTWAYPOINTMODESAFELY: 0,
  DJIWAYPOINTV2MISSIONGOTOFIRSTWAYPOINTMODEPOINTTOPOINT: 1,
}

module.exports = WaypointV2InitSetting;
