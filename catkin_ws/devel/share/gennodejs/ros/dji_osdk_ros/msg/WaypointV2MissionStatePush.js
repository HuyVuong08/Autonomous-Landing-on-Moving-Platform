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

class WaypointV2MissionStatePush {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.commonDataVersion = null;
      this.commonDataLen = null;
      this.curWaypointIndex = null;
      this.state = null;
      this.velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('commonDataVersion')) {
        this.commonDataVersion = initObj.commonDataVersion
      }
      else {
        this.commonDataVersion = 0;
      }
      if (initObj.hasOwnProperty('commonDataLen')) {
        this.commonDataLen = initObj.commonDataLen
      }
      else {
        this.commonDataLen = 0;
      }
      if (initObj.hasOwnProperty('curWaypointIndex')) {
        this.curWaypointIndex = initObj.curWaypointIndex
      }
      else {
        this.curWaypointIndex = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2MissionStatePush
    // Serialize message field [commonDataVersion]
    bufferOffset = _serializer.int8(obj.commonDataVersion, buffer, bufferOffset);
    // Serialize message field [commonDataLen]
    bufferOffset = _serializer.uint16(obj.commonDataLen, buffer, bufferOffset);
    // Serialize message field [curWaypointIndex]
    bufferOffset = _serializer.uint16(obj.curWaypointIndex, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.uint16(obj.velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2MissionStatePush
    let len;
    let data = new WaypointV2MissionStatePush(null);
    // Deserialize message field [commonDataVersion]
    data.commonDataVersion = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [commonDataLen]
    data.commonDataLen = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [curWaypointIndex]
    data.curWaypointIndex = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2MissionStatePush';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8f0a910f9304e8d0a921ad51a303b666';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8   commonDataVersion
    uint16 commonDataLen
    uint16 curWaypointIndex
    uint8  state  #0x0:ground station not start. 0x1:mission prepared. 0x2:enter mission.
                   #0x3:execute flying route mission.
                   #0x4:pause state. 0x5:enter mission after ending pause.
                   #0x6:exit mission.
    uint16 velocity #uint:0.01m/s
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2MissionStatePush(null);
    if (msg.commonDataVersion !== undefined) {
      resolved.commonDataVersion = msg.commonDataVersion;
    }
    else {
      resolved.commonDataVersion = 0
    }

    if (msg.commonDataLen !== undefined) {
      resolved.commonDataLen = msg.commonDataLen;
    }
    else {
      resolved.commonDataLen = 0
    }

    if (msg.curWaypointIndex !== undefined) {
      resolved.curWaypointIndex = msg.curWaypointIndex;
    }
    else {
      resolved.curWaypointIndex = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0
    }

    return resolved;
    }
};

module.exports = WaypointV2MissionStatePush;
