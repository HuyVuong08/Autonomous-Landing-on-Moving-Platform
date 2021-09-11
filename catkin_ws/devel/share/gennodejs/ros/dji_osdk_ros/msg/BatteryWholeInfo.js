// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let BatteryState = require('./BatteryState.js');

//-----------------------------------------------------------

class BatteryWholeInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.remainFlyTime = null;
      this.goHomeNeedTime = null;
      this.landNeedTime = null;
      this.goHomeNeedCapacity = null;
      this.landNeedCapacity = null;
      this.safeFlyRadius = null;
      this.capacityConsumeSpeed = null;
      this.batteryState = null;
      this.goHomeCountDownState = null;
      this.gohomeCountDownvalue = null;
      this.voltage = null;
      this.batteryCapacityPercentage = null;
      this.lowBatteryAlarmThreshold = null;
      this.lowBatteryAlarmEnable = null;
      this.seriousLowBatteryAlarmThreshold = null;
      this.seriousLowBatteryAlarmEnable = null;
    }
    else {
      if (initObj.hasOwnProperty('remainFlyTime')) {
        this.remainFlyTime = initObj.remainFlyTime
      }
      else {
        this.remainFlyTime = 0;
      }
      if (initObj.hasOwnProperty('goHomeNeedTime')) {
        this.goHomeNeedTime = initObj.goHomeNeedTime
      }
      else {
        this.goHomeNeedTime = 0;
      }
      if (initObj.hasOwnProperty('landNeedTime')) {
        this.landNeedTime = initObj.landNeedTime
      }
      else {
        this.landNeedTime = 0;
      }
      if (initObj.hasOwnProperty('goHomeNeedCapacity')) {
        this.goHomeNeedCapacity = initObj.goHomeNeedCapacity
      }
      else {
        this.goHomeNeedCapacity = 0;
      }
      if (initObj.hasOwnProperty('landNeedCapacity')) {
        this.landNeedCapacity = initObj.landNeedCapacity
      }
      else {
        this.landNeedCapacity = 0;
      }
      if (initObj.hasOwnProperty('safeFlyRadius')) {
        this.safeFlyRadius = initObj.safeFlyRadius
      }
      else {
        this.safeFlyRadius = 0.0;
      }
      if (initObj.hasOwnProperty('capacityConsumeSpeed')) {
        this.capacityConsumeSpeed = initObj.capacityConsumeSpeed
      }
      else {
        this.capacityConsumeSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('batteryState')) {
        this.batteryState = initObj.batteryState
      }
      else {
        this.batteryState = new BatteryState();
      }
      if (initObj.hasOwnProperty('goHomeCountDownState')) {
        this.goHomeCountDownState = initObj.goHomeCountDownState
      }
      else {
        this.goHomeCountDownState = 0;
      }
      if (initObj.hasOwnProperty('gohomeCountDownvalue')) {
        this.gohomeCountDownvalue = initObj.gohomeCountDownvalue
      }
      else {
        this.gohomeCountDownvalue = 0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0;
      }
      if (initObj.hasOwnProperty('batteryCapacityPercentage')) {
        this.batteryCapacityPercentage = initObj.batteryCapacityPercentage
      }
      else {
        this.batteryCapacityPercentage = 0;
      }
      if (initObj.hasOwnProperty('lowBatteryAlarmThreshold')) {
        this.lowBatteryAlarmThreshold = initObj.lowBatteryAlarmThreshold
      }
      else {
        this.lowBatteryAlarmThreshold = 0;
      }
      if (initObj.hasOwnProperty('lowBatteryAlarmEnable')) {
        this.lowBatteryAlarmEnable = initObj.lowBatteryAlarmEnable
      }
      else {
        this.lowBatteryAlarmEnable = 0;
      }
      if (initObj.hasOwnProperty('seriousLowBatteryAlarmThreshold')) {
        this.seriousLowBatteryAlarmThreshold = initObj.seriousLowBatteryAlarmThreshold
      }
      else {
        this.seriousLowBatteryAlarmThreshold = 0;
      }
      if (initObj.hasOwnProperty('seriousLowBatteryAlarmEnable')) {
        this.seriousLowBatteryAlarmEnable = initObj.seriousLowBatteryAlarmEnable
      }
      else {
        this.seriousLowBatteryAlarmEnable = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryWholeInfo
    // Serialize message field [remainFlyTime]
    bufferOffset = _serializer.uint16(obj.remainFlyTime, buffer, bufferOffset);
    // Serialize message field [goHomeNeedTime]
    bufferOffset = _serializer.uint16(obj.goHomeNeedTime, buffer, bufferOffset);
    // Serialize message field [landNeedTime]
    bufferOffset = _serializer.uint16(obj.landNeedTime, buffer, bufferOffset);
    // Serialize message field [goHomeNeedCapacity]
    bufferOffset = _serializer.uint16(obj.goHomeNeedCapacity, buffer, bufferOffset);
    // Serialize message field [landNeedCapacity]
    bufferOffset = _serializer.uint16(obj.landNeedCapacity, buffer, bufferOffset);
    // Serialize message field [safeFlyRadius]
    bufferOffset = _serializer.float32(obj.safeFlyRadius, buffer, bufferOffset);
    // Serialize message field [capacityConsumeSpeed]
    bufferOffset = _serializer.float32(obj.capacityConsumeSpeed, buffer, bufferOffset);
    // Serialize message field [batteryState]
    bufferOffset = BatteryState.serialize(obj.batteryState, buffer, bufferOffset);
    // Serialize message field [goHomeCountDownState]
    bufferOffset = _serializer.uint8(obj.goHomeCountDownState, buffer, bufferOffset);
    // Serialize message field [gohomeCountDownvalue]
    bufferOffset = _serializer.uint8(obj.gohomeCountDownvalue, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.uint16(obj.voltage, buffer, bufferOffset);
    // Serialize message field [batteryCapacityPercentage]
    bufferOffset = _serializer.uint8(obj.batteryCapacityPercentage, buffer, bufferOffset);
    // Serialize message field [lowBatteryAlarmThreshold]
    bufferOffset = _serializer.uint8(obj.lowBatteryAlarmThreshold, buffer, bufferOffset);
    // Serialize message field [lowBatteryAlarmEnable]
    bufferOffset = _serializer.uint8(obj.lowBatteryAlarmEnable, buffer, bufferOffset);
    // Serialize message field [seriousLowBatteryAlarmThreshold]
    bufferOffset = _serializer.uint8(obj.seriousLowBatteryAlarmThreshold, buffer, bufferOffset);
    // Serialize message field [seriousLowBatteryAlarmEnable]
    bufferOffset = _serializer.uint8(obj.seriousLowBatteryAlarmEnable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryWholeInfo
    let len;
    let data = new BatteryWholeInfo(null);
    // Deserialize message field [remainFlyTime]
    data.remainFlyTime = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [goHomeNeedTime]
    data.goHomeNeedTime = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [landNeedTime]
    data.landNeedTime = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [goHomeNeedCapacity]
    data.goHomeNeedCapacity = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [landNeedCapacity]
    data.landNeedCapacity = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [safeFlyRadius]
    data.safeFlyRadius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [capacityConsumeSpeed]
    data.capacityConsumeSpeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [batteryState]
    data.batteryState = BatteryState.deserialize(buffer, bufferOffset);
    // Deserialize message field [goHomeCountDownState]
    data.goHomeCountDownState = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gohomeCountDownvalue]
    data.gohomeCountDownvalue = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [batteryCapacityPercentage]
    data.batteryCapacityPercentage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lowBatteryAlarmThreshold]
    data.lowBatteryAlarmThreshold = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lowBatteryAlarmEnable]
    data.lowBatteryAlarmEnable = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [seriousLowBatteryAlarmThreshold]
    data.seriousLowBatteryAlarmThreshold = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [seriousLowBatteryAlarmEnable]
    data.seriousLowBatteryAlarmEnable = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/BatteryWholeInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e822abf802642ce971495ff2b95946b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16  remainFlyTime             # remain fly time(s)
    uint16  goHomeNeedTime            # Time required for the gohome flight (s)
    uint16  landNeedTime              # Time required for the land flight (s).max value:100*/
    uint16  goHomeNeedCapacity        # Capacity required for the gohome flight (%).max value:100*/
    uint16  landNeedCapacity          # Capacity required for the land flight (%).max value:100*/
    float32 safeFlyRadius             # Safe flight area radius (m)*/
    float32 capacityConsumeSpeed      # (mAh/sec)*/
    BatteryState batteryState
    uint8   goHomeCountDownState      # Countdown status of smart battery gohome
                                       # 0/2:not in gohome state
                                       # 1  :in gohome state
                                       #
    uint8   gohomeCountDownvalue      # uint:s.max value:10
    uint16  voltage                   # mv
    uint8   batteryCapacityPercentage # uint:%.max value:100
    uint8   lowBatteryAlarmThreshold
    uint8   lowBatteryAlarmEnable
    uint8   seriousLowBatteryAlarmThreshold
    uint8   seriousLowBatteryAlarmEnable  
    ================================================================================
    MSG: dji_osdk_ros/BatteryState
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
    const resolved = new BatteryWholeInfo(null);
    if (msg.remainFlyTime !== undefined) {
      resolved.remainFlyTime = msg.remainFlyTime;
    }
    else {
      resolved.remainFlyTime = 0
    }

    if (msg.goHomeNeedTime !== undefined) {
      resolved.goHomeNeedTime = msg.goHomeNeedTime;
    }
    else {
      resolved.goHomeNeedTime = 0
    }

    if (msg.landNeedTime !== undefined) {
      resolved.landNeedTime = msg.landNeedTime;
    }
    else {
      resolved.landNeedTime = 0
    }

    if (msg.goHomeNeedCapacity !== undefined) {
      resolved.goHomeNeedCapacity = msg.goHomeNeedCapacity;
    }
    else {
      resolved.goHomeNeedCapacity = 0
    }

    if (msg.landNeedCapacity !== undefined) {
      resolved.landNeedCapacity = msg.landNeedCapacity;
    }
    else {
      resolved.landNeedCapacity = 0
    }

    if (msg.safeFlyRadius !== undefined) {
      resolved.safeFlyRadius = msg.safeFlyRadius;
    }
    else {
      resolved.safeFlyRadius = 0.0
    }

    if (msg.capacityConsumeSpeed !== undefined) {
      resolved.capacityConsumeSpeed = msg.capacityConsumeSpeed;
    }
    else {
      resolved.capacityConsumeSpeed = 0.0
    }

    if (msg.batteryState !== undefined) {
      resolved.batteryState = BatteryState.Resolve(msg.batteryState)
    }
    else {
      resolved.batteryState = new BatteryState()
    }

    if (msg.goHomeCountDownState !== undefined) {
      resolved.goHomeCountDownState = msg.goHomeCountDownState;
    }
    else {
      resolved.goHomeCountDownState = 0
    }

    if (msg.gohomeCountDownvalue !== undefined) {
      resolved.gohomeCountDownvalue = msg.gohomeCountDownvalue;
    }
    else {
      resolved.gohomeCountDownvalue = 0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0
    }

    if (msg.batteryCapacityPercentage !== undefined) {
      resolved.batteryCapacityPercentage = msg.batteryCapacityPercentage;
    }
    else {
      resolved.batteryCapacityPercentage = 0
    }

    if (msg.lowBatteryAlarmThreshold !== undefined) {
      resolved.lowBatteryAlarmThreshold = msg.lowBatteryAlarmThreshold;
    }
    else {
      resolved.lowBatteryAlarmThreshold = 0
    }

    if (msg.lowBatteryAlarmEnable !== undefined) {
      resolved.lowBatteryAlarmEnable = msg.lowBatteryAlarmEnable;
    }
    else {
      resolved.lowBatteryAlarmEnable = 0
    }

    if (msg.seriousLowBatteryAlarmThreshold !== undefined) {
      resolved.seriousLowBatteryAlarmThreshold = msg.seriousLowBatteryAlarmThreshold;
    }
    else {
      resolved.seriousLowBatteryAlarmThreshold = 0
    }

    if (msg.seriousLowBatteryAlarmEnable !== undefined) {
      resolved.seriousLowBatteryAlarmEnable = msg.seriousLowBatteryAlarmEnable;
    }
    else {
      resolved.seriousLowBatteryAlarmEnable = 0
    }

    return resolved;
    }
};

module.exports = BatteryWholeInfo;
