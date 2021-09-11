// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let WaypointV2 = require('../msg/WaypointV2.js');

//-----------------------------------------------------------

class DownloadWaypointV2MissionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DownloadWaypointV2MissionRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DownloadWaypointV2MissionRequest
    let len;
    let data = new DownloadWaypointV2MissionRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/DownloadWaypointV2MissionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DownloadWaypointV2MissionRequest(null);
    return resolved;
    }
};

class DownloadWaypointV2MissionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('mission')) {
        this.mission = initObj.mission
      }
      else {
        this.mission = [];
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DownloadWaypointV2MissionResponse
    // Serialize message field [mission]
    // Serialize the length for message field [mission]
    bufferOffset = _serializer.uint32(obj.mission.length, buffer, bufferOffset);
    obj.mission.forEach((val) => {
      bufferOffset = WaypointV2.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DownloadWaypointV2MissionResponse
    let len;
    let data = new DownloadWaypointV2MissionResponse(null);
    // Deserialize message field [mission]
    // Deserialize array length for message field [mission]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.mission = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.mission[i] = WaypointV2.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 51 * object.mission.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/DownloadWaypointV2MissionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b9a6e8c58bda1e8d747c69006bbc940';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    WaypointV2[] mission
    bool result
    
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
    const resolved = new DownloadWaypointV2MissionResponse(null);
    if (msg.mission !== undefined) {
      resolved.mission = new Array(msg.mission.length);
      for (let i = 0; i < resolved.mission.length; ++i) {
        resolved.mission[i] = WaypointV2.Resolve(msg.mission[i]);
      }
    }
    else {
      resolved.mission = []
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: DownloadWaypointV2MissionRequest,
  Response: DownloadWaypointV2MissionResponse,
  md5sum() { return '4b9a6e8c58bda1e8d747c69006bbc940'; },
  datatype() { return 'dji_osdk_ros/DownloadWaypointV2Mission'; }
};
