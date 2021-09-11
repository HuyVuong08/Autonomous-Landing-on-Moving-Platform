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

class WaypointV2ReachpointTrigger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.startIndex = null;
      this.endIndex = null;
      this.intervalWPNum = null;
      this.waypointCountToTerminate = null;
    }
    else {
      if (initObj.hasOwnProperty('startIndex')) {
        this.startIndex = initObj.startIndex
      }
      else {
        this.startIndex = 0;
      }
      if (initObj.hasOwnProperty('endIndex')) {
        this.endIndex = initObj.endIndex
      }
      else {
        this.endIndex = 0;
      }
      if (initObj.hasOwnProperty('intervalWPNum')) {
        this.intervalWPNum = initObj.intervalWPNum
      }
      else {
        this.intervalWPNum = 0;
      }
      if (initObj.hasOwnProperty('waypointCountToTerminate')) {
        this.waypointCountToTerminate = initObj.waypointCountToTerminate
      }
      else {
        this.waypointCountToTerminate = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2ReachpointTrigger
    // Serialize message field [startIndex]
    bufferOffset = _serializer.uint16(obj.startIndex, buffer, bufferOffset);
    // Serialize message field [endIndex]
    bufferOffset = _serializer.uint16(obj.endIndex, buffer, bufferOffset);
    // Serialize message field [intervalWPNum]
    bufferOffset = _serializer.uint16(obj.intervalWPNum, buffer, bufferOffset);
    // Serialize message field [waypointCountToTerminate]
    bufferOffset = _serializer.uint16(obj.waypointCountToTerminate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2ReachpointTrigger
    let len;
    let data = new WaypointV2ReachpointTrigger(null);
    // Deserialize message field [startIndex]
    data.startIndex = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [endIndex]
    data.endIndex = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [intervalWPNum]
    data.intervalWPNum = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [waypointCountToTerminate]
    data.waypointCountToTerminate = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2ReachpointTrigger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97fe6c65510583177587ba40623a3408';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #  It describes an action will be triggered when the aircraft reach the certain waypoint.
      uint16 startIndex   # It determines the index of the waypoint at which the action will be triggered.
      uint16 endIndex
      uint16 intervalWPNum
      uint16 waypointCountToTerminate  # It determines the waypoint count till the action triggered stops.
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2ReachpointTrigger(null);
    if (msg.startIndex !== undefined) {
      resolved.startIndex = msg.startIndex;
    }
    else {
      resolved.startIndex = 0
    }

    if (msg.endIndex !== undefined) {
      resolved.endIndex = msg.endIndex;
    }
    else {
      resolved.endIndex = 0
    }

    if (msg.intervalWPNum !== undefined) {
      resolved.intervalWPNum = msg.intervalWPNum;
    }
    else {
      resolved.intervalWPNum = 0
    }

    if (msg.waypointCountToTerminate !== undefined) {
      resolved.waypointCountToTerminate = msg.waypointCountToTerminate;
    }
    else {
      resolved.waypointCountToTerminate = 0
    }

    return resolved;
    }
};

module.exports = WaypointV2ReachpointTrigger;
