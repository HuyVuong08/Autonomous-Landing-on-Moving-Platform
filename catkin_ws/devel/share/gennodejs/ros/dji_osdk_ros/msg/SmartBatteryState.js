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

class SmartBatteryState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cellBreak = null;
      this.selfCheckError = null;
      this.batteryClosedReason = null;
      this.batSOHState = null;
      this.maxCycleLimit = null;
      this.batteryCommunicationAbnormal = null;
      this.hasCellBreak = null;
      this.heatState = null;
    }
    else {
      if (initObj.hasOwnProperty('cellBreak')) {
        this.cellBreak = initObj.cellBreak
      }
      else {
        this.cellBreak = 0;
      }
      if (initObj.hasOwnProperty('selfCheckError')) {
        this.selfCheckError = initObj.selfCheckError
      }
      else {
        this.selfCheckError = 0;
      }
      if (initObj.hasOwnProperty('batteryClosedReason')) {
        this.batteryClosedReason = initObj.batteryClosedReason
      }
      else {
        this.batteryClosedReason = 0;
      }
      if (initObj.hasOwnProperty('batSOHState')) {
        this.batSOHState = initObj.batSOHState
      }
      else {
        this.batSOHState = 0;
      }
      if (initObj.hasOwnProperty('maxCycleLimit')) {
        this.maxCycleLimit = initObj.maxCycleLimit
      }
      else {
        this.maxCycleLimit = 0;
      }
      if (initObj.hasOwnProperty('batteryCommunicationAbnormal')) {
        this.batteryCommunicationAbnormal = initObj.batteryCommunicationAbnormal
      }
      else {
        this.batteryCommunicationAbnormal = 0;
      }
      if (initObj.hasOwnProperty('hasCellBreak')) {
        this.hasCellBreak = initObj.hasCellBreak
      }
      else {
        this.hasCellBreak = 0;
      }
      if (initObj.hasOwnProperty('heatState')) {
        this.heatState = initObj.heatState
      }
      else {
        this.heatState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SmartBatteryState
    // Serialize message field [cellBreak]
    bufferOffset = _serializer.uint8(obj.cellBreak, buffer, bufferOffset);
    // Serialize message field [selfCheckError]
    bufferOffset = _serializer.uint8(obj.selfCheckError, buffer, bufferOffset);
    // Serialize message field [batteryClosedReason]
    bufferOffset = _serializer.uint8(obj.batteryClosedReason, buffer, bufferOffset);
    // Serialize message field [batSOHState]
    bufferOffset = _serializer.uint8(obj.batSOHState, buffer, bufferOffset);
    // Serialize message field [maxCycleLimit]
    bufferOffset = _serializer.uint8(obj.maxCycleLimit, buffer, bufferOffset);
    // Serialize message field [batteryCommunicationAbnormal]
    bufferOffset = _serializer.uint8(obj.batteryCommunicationAbnormal, buffer, bufferOffset);
    // Serialize message field [hasCellBreak]
    bufferOffset = _serializer.uint8(obj.hasCellBreak, buffer, bufferOffset);
    // Serialize message field [heatState]
    bufferOffset = _serializer.uint8(obj.heatState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SmartBatteryState
    let len;
    let data = new SmartBatteryState(null);
    // Deserialize message field [cellBreak]
    data.cellBreak = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [selfCheckError]
    data.selfCheckError = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batteryClosedReason]
    data.batteryClosedReason = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batSOHState]
    data.batSOHState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [maxCycleLimit]
    data.maxCycleLimit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batteryCommunicationAbnormal]
    data.batteryCommunicationAbnormal = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hasCellBreak]
    data.hasCellBreak = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [heatState]
    data.heatState = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/SmartBatteryState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a0ddaf2e9bc1f4b0e5e1567435f698e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 cellBreak                  # 0:normal;other:Undervoltage core index(0x01-0x1F)
    uint8 selfCheckError             # enum-type: DJISmartBatterySelfCheck
    uint8 batteryClosedReason        # enum-type: DJI_BETTERY_CLOSED_REASON
    uint8 batSOHState                # enum-type: DJISmartBatterySohState*/
    uint8 maxCycleLimit              # APP:cycle_limit*10*/
    uint8 batteryCommunicationAbnormal
    uint8 hasCellBreak
    uint8 heatState                  # enum-type: DJISmartBatteryHeatState
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SmartBatteryState(null);
    if (msg.cellBreak !== undefined) {
      resolved.cellBreak = msg.cellBreak;
    }
    else {
      resolved.cellBreak = 0
    }

    if (msg.selfCheckError !== undefined) {
      resolved.selfCheckError = msg.selfCheckError;
    }
    else {
      resolved.selfCheckError = 0
    }

    if (msg.batteryClosedReason !== undefined) {
      resolved.batteryClosedReason = msg.batteryClosedReason;
    }
    else {
      resolved.batteryClosedReason = 0
    }

    if (msg.batSOHState !== undefined) {
      resolved.batSOHState = msg.batSOHState;
    }
    else {
      resolved.batSOHState = 0
    }

    if (msg.maxCycleLimit !== undefined) {
      resolved.maxCycleLimit = msg.maxCycleLimit;
    }
    else {
      resolved.maxCycleLimit = 0
    }

    if (msg.batteryCommunicationAbnormal !== undefined) {
      resolved.batteryCommunicationAbnormal = msg.batteryCommunicationAbnormal;
    }
    else {
      resolved.batteryCommunicationAbnormal = 0
    }

    if (msg.hasCellBreak !== undefined) {
      resolved.hasCellBreak = msg.hasCellBreak;
    }
    else {
      resolved.hasCellBreak = 0
    }

    if (msg.heatState !== undefined) {
      resolved.heatState = msg.heatState;
    }
    else {
      resolved.heatState = 0
    }

    return resolved;
    }
};

module.exports = SmartBatteryState;
