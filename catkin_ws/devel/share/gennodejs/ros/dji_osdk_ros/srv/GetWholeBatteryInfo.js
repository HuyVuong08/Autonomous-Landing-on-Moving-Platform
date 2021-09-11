// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let BatteryWholeInfo = require('../msg/BatteryWholeInfo.js');

//-----------------------------------------------------------

class GetWholeBatteryInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWholeBatteryInfoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWholeBatteryInfoRequest
    let len;
    let data = new GetWholeBatteryInfoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GetWholeBatteryInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetWholeBatteryInfoRequest(null);
    return resolved;
    }
};

class GetWholeBatteryInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.battery_whole_info = null;
    }
    else {
      if (initObj.hasOwnProperty('battery_whole_info')) {
        this.battery_whole_info = initObj.battery_whole_info
      }
      else {
        this.battery_whole_info = new BatteryWholeInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetWholeBatteryInfoResponse
    // Serialize message field [battery_whole_info]
    bufferOffset = BatteryWholeInfo.serialize(obj.battery_whole_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetWholeBatteryInfoResponse
    let len;
    let data = new GetWholeBatteryInfoResponse(null);
    // Deserialize message field [battery_whole_info]
    data.battery_whole_info = BatteryWholeInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GetWholeBatteryInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a954f2c109885a4dd2f5564d3eb1433a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    BatteryWholeInfo battery_whole_info
    
    ================================================================================
    MSG: dji_osdk_ros/BatteryWholeInfo
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
    const resolved = new GetWholeBatteryInfoResponse(null);
    if (msg.battery_whole_info !== undefined) {
      resolved.battery_whole_info = BatteryWholeInfo.Resolve(msg.battery_whole_info)
    }
    else {
      resolved.battery_whole_info = new BatteryWholeInfo()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetWholeBatteryInfoRequest,
  Response: GetWholeBatteryInfoResponse,
  md5sum() { return 'a954f2c109885a4dd2f5564d3eb1433a'; },
  datatype() { return 'dji_osdk_ros/GetWholeBatteryInfo'; }
};
