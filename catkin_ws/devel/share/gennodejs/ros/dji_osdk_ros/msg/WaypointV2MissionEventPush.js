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

class WaypointV2MissionEventPush {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.event = null;
      this.FCTimestamp = null;
      this.interruptReason = null;
      this.recoverProcess = null;
      this.finishReason = null;
      this.waypointIndex = null;
      this.currentMissionExecNum = null;
      this.finishedAllExecNum = null;
    }
    else {
      if (initObj.hasOwnProperty('event')) {
        this.event = initObj.event
      }
      else {
        this.event = 0;
      }
      if (initObj.hasOwnProperty('FCTimestamp')) {
        this.FCTimestamp = initObj.FCTimestamp
      }
      else {
        this.FCTimestamp = 0;
      }
      if (initObj.hasOwnProperty('interruptReason')) {
        this.interruptReason = initObj.interruptReason
      }
      else {
        this.interruptReason = 0;
      }
      if (initObj.hasOwnProperty('recoverProcess')) {
        this.recoverProcess = initObj.recoverProcess
      }
      else {
        this.recoverProcess = 0;
      }
      if (initObj.hasOwnProperty('finishReason')) {
        this.finishReason = initObj.finishReason
      }
      else {
        this.finishReason = 0;
      }
      if (initObj.hasOwnProperty('waypointIndex')) {
        this.waypointIndex = initObj.waypointIndex
      }
      else {
        this.waypointIndex = 0;
      }
      if (initObj.hasOwnProperty('currentMissionExecNum')) {
        this.currentMissionExecNum = initObj.currentMissionExecNum
      }
      else {
        this.currentMissionExecNum = 0;
      }
      if (initObj.hasOwnProperty('finishedAllExecNum')) {
        this.finishedAllExecNum = initObj.finishedAllExecNum
      }
      else {
        this.finishedAllExecNum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2MissionEventPush
    // Serialize message field [event]
    bufferOffset = _serializer.uint8(obj.event, buffer, bufferOffset);
    // Serialize message field [FCTimestamp]
    bufferOffset = _serializer.uint32(obj.FCTimestamp, buffer, bufferOffset);
    // Serialize message field [interruptReason]
    bufferOffset = _serializer.uint8(obj.interruptReason, buffer, bufferOffset);
    // Serialize message field [recoverProcess]
    bufferOffset = _serializer.uint8(obj.recoverProcess, buffer, bufferOffset);
    // Serialize message field [finishReason]
    bufferOffset = _serializer.uint8(obj.finishReason, buffer, bufferOffset);
    // Serialize message field [waypointIndex]
    bufferOffset = _serializer.uint16(obj.waypointIndex, buffer, bufferOffset);
    // Serialize message field [currentMissionExecNum]
    bufferOffset = _serializer.uint8(obj.currentMissionExecNum, buffer, bufferOffset);
    // Serialize message field [finishedAllExecNum]
    bufferOffset = _serializer.uint8(obj.finishedAllExecNum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2MissionEventPush
    let len;
    let data = new WaypointV2MissionEventPush(null);
    // Deserialize message field [event]
    data.event = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FCTimestamp]
    data.FCTimestamp = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [interruptReason]
    data.interruptReason = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [recoverProcess]
    data.recoverProcess = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [finishReason]
    data.finishReason = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [waypointIndex]
    data.waypointIndex = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [currentMissionExecNum]
    data.currentMissionExecNum = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [finishedAllExecNum]
    data.finishedAllExecNum = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2MissionEventPush';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c77093b1b7454aae16109cab2468e222';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 event
    uint32 FCTimestamp
    #ID:0x01
    uint8 interruptReason #0x00:rc triggered interrupt
    
    #ID:0x02
    uint8 recoverProcess #0x00:finished pause recover
    
    #ID:0x03
    uint8 finishReason #0x00:finished normally; 0x10:External user trigger ended successfully
    
    #ID:0x10
    uint16 waypointIndex
    
    #ID:0x11
    uint8 currentMissionExecNum
    uint8 finishedAllExecNum  #0:not finished; 1:finished all exec num
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2MissionEventPush(null);
    if (msg.event !== undefined) {
      resolved.event = msg.event;
    }
    else {
      resolved.event = 0
    }

    if (msg.FCTimestamp !== undefined) {
      resolved.FCTimestamp = msg.FCTimestamp;
    }
    else {
      resolved.FCTimestamp = 0
    }

    if (msg.interruptReason !== undefined) {
      resolved.interruptReason = msg.interruptReason;
    }
    else {
      resolved.interruptReason = 0
    }

    if (msg.recoverProcess !== undefined) {
      resolved.recoverProcess = msg.recoverProcess;
    }
    else {
      resolved.recoverProcess = 0
    }

    if (msg.finishReason !== undefined) {
      resolved.finishReason = msg.finishReason;
    }
    else {
      resolved.finishReason = 0
    }

    if (msg.waypointIndex !== undefined) {
      resolved.waypointIndex = msg.waypointIndex;
    }
    else {
      resolved.waypointIndex = 0
    }

    if (msg.currentMissionExecNum !== undefined) {
      resolved.currentMissionExecNum = msg.currentMissionExecNum;
    }
    else {
      resolved.currentMissionExecNum = 0
    }

    if (msg.finishedAllExecNum !== undefined) {
      resolved.finishedAllExecNum = msg.finishedAllExecNum;
    }
    else {
      resolved.finishedAllExecNum = 0
    }

    return resolved;
    }
};

module.exports = WaypointV2MissionEventPush;
