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

class WaypointV2SampleReachPointTrigger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypointIndex = null;
      this.terminateNum = null;
    }
    else {
      if (initObj.hasOwnProperty('waypointIndex')) {
        this.waypointIndex = initObj.waypointIndex
      }
      else {
        this.waypointIndex = 0;
      }
      if (initObj.hasOwnProperty('terminateNum')) {
        this.terminateNum = initObj.terminateNum
      }
      else {
        this.terminateNum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2SampleReachPointTrigger
    // Serialize message field [waypointIndex]
    bufferOffset = _serializer.uint16(obj.waypointIndex, buffer, bufferOffset);
    // Serialize message field [terminateNum]
    bufferOffset = _serializer.uint16(obj.terminateNum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2SampleReachPointTrigger
    let len;
    let data = new WaypointV2SampleReachPointTrigger(null);
    // Deserialize message field [waypointIndex]
    data.waypointIndex = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [terminateNum]
    data.terminateNum = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2SampleReachPointTrigger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f587d7ef365928c01789a7ce4df11f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 waypointIndex # It determines the index of the waypoint at which the action will be triggered.
    uint16 terminateNum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2SampleReachPointTrigger(null);
    if (msg.waypointIndex !== undefined) {
      resolved.waypointIndex = msg.waypointIndex;
    }
    else {
      resolved.waypointIndex = 0
    }

    if (msg.terminateNum !== undefined) {
      resolved.terminateNum = msg.terminateNum;
    }
    else {
      resolved.terminateNum = 0
    }

    return resolved;
    }
};

module.exports = WaypointV2SampleReachPointTrigger;
