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

class HMSPushInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.alarmID = null;
      this.sensorIndex = null;
      this.reportLevel = null;
    }
    else {
      if (initObj.hasOwnProperty('alarmID')) {
        this.alarmID = initObj.alarmID
      }
      else {
        this.alarmID = 0;
      }
      if (initObj.hasOwnProperty('sensorIndex')) {
        this.sensorIndex = initObj.sensorIndex
      }
      else {
        this.sensorIndex = 0;
      }
      if (initObj.hasOwnProperty('reportLevel')) {
        this.reportLevel = initObj.reportLevel
      }
      else {
        this.reportLevel = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HMSPushInfo
    // Serialize message field [alarmID]
    bufferOffset = _serializer.uint32(obj.alarmID, buffer, bufferOffset);
    // Serialize message field [sensorIndex]
    bufferOffset = _serializer.uint8(obj.sensorIndex, buffer, bufferOffset);
    // Serialize message field [reportLevel]
    bufferOffset = _serializer.uint8(obj.reportLevel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HMSPushInfo
    let len;
    let data = new HMSPushInfo(null);
    // Deserialize message field [alarmID]
    data.alarmID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [sensorIndex]
    data.sensorIndex = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reportLevel]
    data.reportLevel = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/HMSPushInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce70d5cd1d8f70130b2a622841cf2bac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 alarmID     #/*! error code*/
    uint8  sensorIndex #/*! fault sensor's index*/
    uint8  reportLevel #/*! fault level ,0-4,0 is no error,4 is highest*/
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HMSPushInfo(null);
    if (msg.alarmID !== undefined) {
      resolved.alarmID = msg.alarmID;
    }
    else {
      resolved.alarmID = 0
    }

    if (msg.sensorIndex !== undefined) {
      resolved.sensorIndex = msg.sensorIndex;
    }
    else {
      resolved.sensorIndex = 0
    }

    if (msg.reportLevel !== undefined) {
      resolved.reportLevel = msg.reportLevel;
    }
    else {
      resolved.reportLevel = 0
    }

    return resolved;
    }
};

module.exports = HMSPushInfo;
