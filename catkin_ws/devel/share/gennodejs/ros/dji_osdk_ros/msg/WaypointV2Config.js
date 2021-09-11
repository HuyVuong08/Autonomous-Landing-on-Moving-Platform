// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WaypointV2Config {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.useLocalCruiseVel = null;
      this.useLocalMaxVel = null;
    }
    else {
      if (initObj.hasOwnProperty('useLocalCruiseVel')) {
        this.useLocalCruiseVel = initObj.useLocalCruiseVel
      }
      else {
        this.useLocalCruiseVel = 0;
      }
      if (initObj.hasOwnProperty('useLocalMaxVel')) {
        this.useLocalMaxVel = initObj.useLocalMaxVel
      }
      else {
        this.useLocalMaxVel = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2Config
    // Serialize message field [useLocalCruiseVel]
    bufferOffset = _serializer.uint8(obj.useLocalCruiseVel, buffer, bufferOffset);
    // Serialize message field [useLocalMaxVel]
    bufferOffset = _serializer.uint8(obj.useLocalMaxVel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2Config
    let len;
    let data = new WaypointV2Config(null);
    // Deserialize message field [useLocalCruiseVel]
    data.useLocalCruiseVel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [useLocalMaxVel]
    data.useLocalMaxVel = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2Config';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32f75247c8f43b9a30c17e7ebb7bf75b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new WaypointV2Config(null);
    if (msg.useLocalCruiseVel !== undefined) {
      resolved.useLocalCruiseVel = msg.useLocalCruiseVel;
    }
    else {
      resolved.useLocalCruiseVel = 0
    }

    if (msg.useLocalMaxVel !== undefined) {
      resolved.useLocalMaxVel = msg.useLocalMaxVel;
    }
    else {
      resolved.useLocalMaxVel = 0
    }

    return resolved;
    }
};

module.exports = WaypointV2Config;
