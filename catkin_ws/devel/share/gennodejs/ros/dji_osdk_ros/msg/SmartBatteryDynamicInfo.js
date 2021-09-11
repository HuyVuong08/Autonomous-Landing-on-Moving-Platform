// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SmartBatteryState = require('./SmartBatteryState.js');

//-----------------------------------------------------------

class SmartBatteryDynamicInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.batteryIndex = null;
      this.currentVoltage = null;
      this.currentElectric = null;
      this.fullCapacity = null;
      this.remainedCapacity = null;
      this.batteryTemperature = null;
      this.cellCount = null;
      this.batteryCapacityPercent = null;
      this.batteryState = null;
      this.SOP = null;
    }
    else {
      if (initObj.hasOwnProperty('batteryIndex')) {
        this.batteryIndex = initObj.batteryIndex
      }
      else {
        this.batteryIndex = 0;
      }
      if (initObj.hasOwnProperty('currentVoltage')) {
        this.currentVoltage = initObj.currentVoltage
      }
      else {
        this.currentVoltage = 0;
      }
      if (initObj.hasOwnProperty('currentElectric')) {
        this.currentElectric = initObj.currentElectric
      }
      else {
        this.currentElectric = 0;
      }
      if (initObj.hasOwnProperty('fullCapacity')) {
        this.fullCapacity = initObj.fullCapacity
      }
      else {
        this.fullCapacity = 0;
      }
      if (initObj.hasOwnProperty('remainedCapacity')) {
        this.remainedCapacity = initObj.remainedCapacity
      }
      else {
        this.remainedCapacity = 0;
      }
      if (initObj.hasOwnProperty('batteryTemperature')) {
        this.batteryTemperature = initObj.batteryTemperature
      }
      else {
        this.batteryTemperature = 0;
      }
      if (initObj.hasOwnProperty('cellCount')) {
        this.cellCount = initObj.cellCount
      }
      else {
        this.cellCount = 0;
      }
      if (initObj.hasOwnProperty('batteryCapacityPercent')) {
        this.batteryCapacityPercent = initObj.batteryCapacityPercent
      }
      else {
        this.batteryCapacityPercent = 0;
      }
      if (initObj.hasOwnProperty('batteryState')) {
        this.batteryState = initObj.batteryState
      }
      else {
        this.batteryState = new SmartBatteryState();
      }
      if (initObj.hasOwnProperty('SOP')) {
        this.SOP = initObj.SOP
      }
      else {
        this.SOP = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SmartBatteryDynamicInfo
    // Serialize message field [batteryIndex]
    bufferOffset = _serializer.uint8(obj.batteryIndex, buffer, bufferOffset);
    // Serialize message field [currentVoltage]
    bufferOffset = _serializer.int32(obj.currentVoltage, buffer, bufferOffset);
    // Serialize message field [currentElectric]
    bufferOffset = _serializer.int32(obj.currentElectric, buffer, bufferOffset);
    // Serialize message field [fullCapacity]
    bufferOffset = _serializer.uint32(obj.fullCapacity, buffer, bufferOffset);
    // Serialize message field [remainedCapacity]
    bufferOffset = _serializer.uint32(obj.remainedCapacity, buffer, bufferOffset);
    // Serialize message field [batteryTemperature]
    bufferOffset = _serializer.int16(obj.batteryTemperature, buffer, bufferOffset);
    // Serialize message field [cellCount]
    bufferOffset = _serializer.uint8(obj.cellCount, buffer, bufferOffset);
    // Serialize message field [batteryCapacityPercent]
    bufferOffset = _serializer.uint8(obj.batteryCapacityPercent, buffer, bufferOffset);
    // Serialize message field [batteryState]
    bufferOffset = SmartBatteryState.serialize(obj.batteryState, buffer, bufferOffset);
    // Serialize message field [SOP]
    bufferOffset = _serializer.uint8(obj.SOP, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SmartBatteryDynamicInfo
    let len;
    let data = new SmartBatteryDynamicInfo(null);
    // Deserialize message field [batteryIndex]
    data.batteryIndex = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [currentVoltage]
    data.currentVoltage = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [currentElectric]
    data.currentElectric = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fullCapacity]
    data.fullCapacity = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [remainedCapacity]
    data.remainedCapacity = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [batteryTemperature]
    data.batteryTemperature = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [cellCount]
    data.cellCount = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batteryCapacityPercent]
    data.batteryCapacityPercent = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [batteryState]
    data.batteryState = SmartBatteryState.deserialize(buffer, bufferOffset);
    // Deserialize message field [SOP]
    data.SOP = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/SmartBatteryDynamicInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdcd4be856eb19722059d659610eb844';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8  batteryIndex
    int32  currentVoltage          # uint:mV
    int32  currentElectric         # uint:mA
    uint32 fullCapacity            # uint:mAh
    uint32 remainedCapacity        # uint:mAh
    int16  batteryTemperature      # uint:0.1℃
    uint8  cellCount
    uint8  batteryCapacityPercent  # uint:%
    SmartBatteryState batteryState
    uint8  SOP                     # Relative power percentage
    ================================================================================
    MSG: dji_osdk_ros/SmartBatteryState
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
    const resolved = new SmartBatteryDynamicInfo(null);
    if (msg.batteryIndex !== undefined) {
      resolved.batteryIndex = msg.batteryIndex;
    }
    else {
      resolved.batteryIndex = 0
    }

    if (msg.currentVoltage !== undefined) {
      resolved.currentVoltage = msg.currentVoltage;
    }
    else {
      resolved.currentVoltage = 0
    }

    if (msg.currentElectric !== undefined) {
      resolved.currentElectric = msg.currentElectric;
    }
    else {
      resolved.currentElectric = 0
    }

    if (msg.fullCapacity !== undefined) {
      resolved.fullCapacity = msg.fullCapacity;
    }
    else {
      resolved.fullCapacity = 0
    }

    if (msg.remainedCapacity !== undefined) {
      resolved.remainedCapacity = msg.remainedCapacity;
    }
    else {
      resolved.remainedCapacity = 0
    }

    if (msg.batteryTemperature !== undefined) {
      resolved.batteryTemperature = msg.batteryTemperature;
    }
    else {
      resolved.batteryTemperature = 0
    }

    if (msg.cellCount !== undefined) {
      resolved.cellCount = msg.cellCount;
    }
    else {
      resolved.cellCount = 0
    }

    if (msg.batteryCapacityPercent !== undefined) {
      resolved.batteryCapacityPercent = msg.batteryCapacityPercent;
    }
    else {
      resolved.batteryCapacityPercent = 0
    }

    if (msg.batteryState !== undefined) {
      resolved.batteryState = SmartBatteryState.Resolve(msg.batteryState)
    }
    else {
      resolved.batteryState = new SmartBatteryState()
    }

    if (msg.SOP !== undefined) {
      resolved.SOP = msg.SOP;
    }
    else {
      resolved.SOP = 0
    }

    return resolved;
    }
};

module.exports = SmartBatteryDynamicInfo;
