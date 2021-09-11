// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WaypointV2Config = require('./WaypointV2Config.js');

//-----------------------------------------------------------

class WaypointV2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.longitude = null;
      this.latitude = null;
      this.relativeHeight = null;
      this.waypointType = null;
      this.headingMode = null;
      this.config = null;
      this.dampingDistance = null;
      this.heading = null;
      this.turnMode = null;
      this.positionX = null;
      this.positionY = null;
      this.positionZ = null;
      this.maxFlightSpeed = null;
      this.autoFlightSpeed = null;
    }
    else {
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('relativeHeight')) {
        this.relativeHeight = initObj.relativeHeight
      }
      else {
        this.relativeHeight = 0.0;
      }
      if (initObj.hasOwnProperty('waypointType')) {
        this.waypointType = initObj.waypointType
      }
      else {
        this.waypointType = 0;
      }
      if (initObj.hasOwnProperty('headingMode')) {
        this.headingMode = initObj.headingMode
      }
      else {
        this.headingMode = 0;
      }
      if (initObj.hasOwnProperty('config')) {
        this.config = initObj.config
      }
      else {
        this.config = new WaypointV2Config();
      }
      if (initObj.hasOwnProperty('dampingDistance')) {
        this.dampingDistance = initObj.dampingDistance
      }
      else {
        this.dampingDistance = 0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('turnMode')) {
        this.turnMode = initObj.turnMode
      }
      else {
        this.turnMode = 0;
      }
      if (initObj.hasOwnProperty('positionX')) {
        this.positionX = initObj.positionX
      }
      else {
        this.positionX = 0.0;
      }
      if (initObj.hasOwnProperty('positionY')) {
        this.positionY = initObj.positionY
      }
      else {
        this.positionY = 0.0;
      }
      if (initObj.hasOwnProperty('positionZ')) {
        this.positionZ = initObj.positionZ
      }
      else {
        this.positionZ = 0.0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [relativeHeight]
    bufferOffset = _serializer.float32(obj.relativeHeight, buffer, bufferOffset);
    // Serialize message field [waypointType]
    bufferOffset = _serializer.uint8(obj.waypointType, buffer, bufferOffset);
    // Serialize message field [headingMode]
    bufferOffset = _serializer.uint8(obj.headingMode, buffer, bufferOffset);
    // Serialize message field [config]
    bufferOffset = WaypointV2Config.serialize(obj.config, buffer, bufferOffset);
    // Serialize message field [dampingDistance]
    bufferOffset = _serializer.uint16(obj.dampingDistance, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [turnMode]
    bufferOffset = _serializer.uint8(obj.turnMode, buffer, bufferOffset);
    // Serialize message field [positionX]
    bufferOffset = _serializer.float32(obj.positionX, buffer, bufferOffset);
    // Serialize message field [positionY]
    bufferOffset = _serializer.float32(obj.positionY, buffer, bufferOffset);
    // Serialize message field [positionZ]
    bufferOffset = _serializer.float32(obj.positionZ, buffer, bufferOffset);
    // Serialize message field [maxFlightSpeed]
    bufferOffset = _serializer.float32(obj.maxFlightSpeed, buffer, bufferOffset);
    // Serialize message field [autoFlightSpeed]
    bufferOffset = _serializer.float32(obj.autoFlightSpeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2
    let len;
    let data = new WaypointV2(null);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relativeHeight]
    data.relativeHeight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [waypointType]
    data.waypointType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [headingMode]
    data.headingMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [config]
    data.config = WaypointV2Config.deserialize(buffer, bufferOffset);
    // Deserialize message field [dampingDistance]
    data.dampingDistance = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [turnMode]
    data.turnMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [positionX]
    data.positionX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [positionY]
    data.positionY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [positionZ]
    data.positionZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [maxFlightSpeed]
    data.maxFlightSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [autoFlightSpeed]
    data.autoFlightSpeed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 51;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '389194e4db4c519440c6686894700c6a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new WaypointV2(null);
    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.relativeHeight !== undefined) {
      resolved.relativeHeight = msg.relativeHeight;
    }
    else {
      resolved.relativeHeight = 0.0
    }

    if (msg.waypointType !== undefined) {
      resolved.waypointType = msg.waypointType;
    }
    else {
      resolved.waypointType = 0
    }

    if (msg.headingMode !== undefined) {
      resolved.headingMode = msg.headingMode;
    }
    else {
      resolved.headingMode = 0
    }

    if (msg.config !== undefined) {
      resolved.config = WaypointV2Config.Resolve(msg.config)
    }
    else {
      resolved.config = new WaypointV2Config()
    }

    if (msg.dampingDistance !== undefined) {
      resolved.dampingDistance = msg.dampingDistance;
    }
    else {
      resolved.dampingDistance = 0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.turnMode !== undefined) {
      resolved.turnMode = msg.turnMode;
    }
    else {
      resolved.turnMode = 0
    }

    if (msg.positionX !== undefined) {
      resolved.positionX = msg.positionX;
    }
    else {
      resolved.positionX = 0.0
    }

    if (msg.positionY !== undefined) {
      resolved.positionY = msg.positionY;
    }
    else {
      resolved.positionY = 0.0
    }

    if (msg.positionZ !== undefined) {
      resolved.positionZ = msg.positionZ;
    }
    else {
      resolved.positionZ = 0.0
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

    return resolved;
    }
};

// Constants for message
WaypointV2.Constants = {
  DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVE: 0,
  DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTALONGACURVEANDSTOP: 1,
  DJIWAYPOINTV2FLIGHTPATHMODEGOTOPOINTINASTRAIGHTLINEANDSTOP: 2,
  DJIWAYPOINTV2FLIGHTPATHMODECOORDINATETURN: 3,
  DJIWAYPOINTV2FLIGHTPATHMODEGOTOFIRSTPOINTALONGASTRAIGHTLINE: 4,
  DJIWAYPOINTV2FLIGHTPATHMODESTRAIGHTOUT: 5,
  DJIWAYPOINTV2FLIGHTPATHMODEUNKNOWN: 255,
  DJIWAYPOINTV2HEADINGMODEAUTO: 0,
  DJIWAYPOINTV2HEADINGFIXED: 1,
  DJIWAYPOINTV2HEADINGMANUAL: 2,
  DJIWAYPOINTV2HEADINGWAYPOINTCUSTOM: 3,
  DJIWAYPOINTV2HEADINGTOWARDPOINTOFINTEREST: 4,
  DJIWAYPOINTV2HEADINGGIMBALYAWFOLLOW: 5,
  DJIWAYPOINTV2HEADINGUNKNOWN: 255,
  DJIWAYPOINTV2TURNMODECLOCKWISE: 0,
  DJIWAYPOINTV2TURNMODECOUNTERCLOCKWISE: 1,
  DJIWAYPOINTV2TURNMODEUNKNOWN: 255,
}

module.exports = WaypointV2;
