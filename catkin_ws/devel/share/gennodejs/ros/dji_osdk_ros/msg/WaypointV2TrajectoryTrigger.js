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

class WaypointV2TrajectoryTrigger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.startIndex = null;
      this.endIndex = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2TrajectoryTrigger
    // Serialize message field [startIndex]
    bufferOffset = _serializer.uint16(obj.startIndex, buffer, bufferOffset);
    // Serialize message field [endIndex]
    bufferOffset = _serializer.uint16(obj.endIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2TrajectoryTrigger
    let len;
    let data = new WaypointV2TrajectoryTrigger(null);
    // Deserialize message field [startIndex]
    data.startIndex = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [endIndex]
    data.endIndex = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2TrajectoryTrigger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a990a2081bb526bf9f60173c3e6fc781';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This class represents a trajectory trigger action when should be trigger.
    
    uint16 startIndex # It determines the index of the waypoint at which the trigger starts.
    uint16 endIndex   # It determines the waypoint when the trigger stops.
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2TrajectoryTrigger(null);
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

    return resolved;
    }
};

module.exports = WaypointV2TrajectoryTrigger;
