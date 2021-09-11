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

class BatteryState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.voltageNotSafety = null;
      this.veryLowVoltageAlarm = null;
      this.LowVoltageAlarm = null;
      this.seriousLowCapacityAlarm = null;
      this.LowCapacityAlarm = null;
    }
    else {
      if (initObj.hasOwnProperty('voltageNotSafety')) {
        this.voltageNotSafety = initObj.voltageNotSafety
      }
      else {
        this.voltageNotSafety = 0;
      }
      if (initObj.hasOwnProperty('veryLowVoltageAlarm')) {
        this.veryLowVoltageAlarm = initObj.veryLowVoltageAlarm
      }
      else {
        this.veryLowVoltageAlarm = 0;
      }
      if (initObj.hasOwnProperty('LowVoltageAlarm')) {
        this.LowVoltageAlarm = initObj.LowVoltageAlarm
      }
      else {
        this.LowVoltageAlarm = 0;
      }
      if (initObj.hasOwnProperty('seriousLowCapacityAlarm')) {
        this.seriousLowCapacityAlarm = initObj.seriousLowCapacityAlarm
      }
      else {
        this.seriousLowCapacityAlarm = 0;
      }
      if (initObj.hasOwnProperty('LowCapacityAlarm')) {
        this.LowCapacityAlarm = initObj.LowCapacityAlarm
      }
      else {
        this.LowCapacityAlarm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryState
    // Serialize message field [voltageNotSafety]
    bufferOffset = _serializer.uint8(obj.voltageNotSafety, buffer, bufferOffset);
    // Serialize message field [veryLowVoltageAlarm]
    bufferOffset = _serializer.uint8(obj.veryLowVoltageAlarm, buffer, bufferOffset);
    // Serialize message field [LowVoltageAlarm]
    bufferOffset = _serializer.uint8(obj.LowVoltageAlarm, buffer, bufferOffset);
    // Serialize message field [seriousLowCapacityAlarm]
    bufferOffset = _serializer.uint8(obj.seriousLowCapacityAlarm, buffer, bufferOffset);
    // Serialize message field [LowCapacityAlarm]
    bufferOffset = _serializer.uint8(obj.LowCapacityAlarm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryState
    let len;
    let data = new BatteryState(null);
    // Deserialize message field [voltageNotSafety]
    data.voltageNotSafety = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [veryLowVoltageAlarm]
    data.veryLowVoltageAlarm = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LowVoltageAlarm]
    data.LowVoltageAlarm = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [seriousLowCapacityAlarm]
    data.seriousLowCapacityAlarm = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LowCapacityAlarm]
    data.LowCapacityAlarm = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/BatteryState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5243c6a8356e946f828c69a991da7334';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 voltageNotSafety # Generally caused by low temperature, the battery has electricity,
                           # but the battery voltage is too low.
    uint8 veryLowVoltageAlarm
    uint8 LowVoltageAlarm
    uint8 seriousLowCapacityAlarm
    uint8 LowCapacityAlarm
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryState(null);
    if (msg.voltageNotSafety !== undefined) {
      resolved.voltageNotSafety = msg.voltageNotSafety;
    }
    else {
      resolved.voltageNotSafety = 0
    }

    if (msg.veryLowVoltageAlarm !== undefined) {
      resolved.veryLowVoltageAlarm = msg.veryLowVoltageAlarm;
    }
    else {
      resolved.veryLowVoltageAlarm = 0
    }

    if (msg.LowVoltageAlarm !== undefined) {
      resolved.LowVoltageAlarm = msg.LowVoltageAlarm;
    }
    else {
      resolved.LowVoltageAlarm = 0
    }

    if (msg.seriousLowCapacityAlarm !== undefined) {
      resolved.seriousLowCapacityAlarm = msg.seriousLowCapacityAlarm;
    }
    else {
      resolved.seriousLowCapacityAlarm = 0
    }

    if (msg.LowCapacityAlarm !== undefined) {
      resolved.LowCapacityAlarm = msg.LowCapacityAlarm;
    }
    else {
      resolved.LowCapacityAlarm = 0
    }

    return resolved;
    }
};

module.exports = BatteryState;
