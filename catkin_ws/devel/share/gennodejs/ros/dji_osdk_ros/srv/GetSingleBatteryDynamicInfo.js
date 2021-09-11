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

let SmartBatteryDynamicInfo = require('../msg/SmartBatteryDynamicInfo.js');

//-----------------------------------------------------------

class GetSingleBatteryDynamicInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.batteryIndex = null;
    }
    else {
      if (initObj.hasOwnProperty('batteryIndex')) {
        this.batteryIndex = initObj.batteryIndex
      }
      else {
        this.batteryIndex = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSingleBatteryDynamicInfoRequest
    // Serialize message field [batteryIndex]
    bufferOffset = _serializer.uint8(obj.batteryIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSingleBatteryDynamicInfoRequest
    let len;
    let data = new GetSingleBatteryDynamicInfoRequest(null);
    // Deserialize message field [batteryIndex]
    data.batteryIndex = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GetSingleBatteryDynamicInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbc22df5041907ba93cd43bd5373dcc1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    uint8 first_smart_battery = 1
    uint8 second_smart_battery = 2
    
    uint8 batteryIndex
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetSingleBatteryDynamicInfoRequest(null);
    if (msg.batteryIndex !== undefined) {
      resolved.batteryIndex = msg.batteryIndex;
    }
    else {
      resolved.batteryIndex = 0
    }

    return resolved;
    }
};

// Constants for message
GetSingleBatteryDynamicInfoRequest.Constants = {
  FIRST_SMART_BATTERY: 1,
  SECOND_SMART_BATTERY: 2,
}

class GetSingleBatteryDynamicInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.smartBatteryDynamicInfo = null;
    }
    else {
      if (initObj.hasOwnProperty('smartBatteryDynamicInfo')) {
        this.smartBatteryDynamicInfo = initObj.smartBatteryDynamicInfo
      }
      else {
        this.smartBatteryDynamicInfo = new SmartBatteryDynamicInfo();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetSingleBatteryDynamicInfoResponse
    // Serialize message field [smartBatteryDynamicInfo]
    bufferOffset = SmartBatteryDynamicInfo.serialize(obj.smartBatteryDynamicInfo, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetSingleBatteryDynamicInfoResponse
    let len;
    let data = new GetSingleBatteryDynamicInfoResponse(null);
    // Deserialize message field [smartBatteryDynamicInfo]
    data.smartBatteryDynamicInfo = SmartBatteryDynamicInfo.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 30;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GetSingleBatteryDynamicInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9853b8ae869150ea1bdf509de0b60da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    SmartBatteryDynamicInfo smartBatteryDynamicInfo
    
    ================================================================================
    MSG: dji_osdk_ros/SmartBatteryDynamicInfo
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
    const resolved = new GetSingleBatteryDynamicInfoResponse(null);
    if (msg.smartBatteryDynamicInfo !== undefined) {
      resolved.smartBatteryDynamicInfo = SmartBatteryDynamicInfo.Resolve(msg.smartBatteryDynamicInfo)
    }
    else {
      resolved.smartBatteryDynamicInfo = new SmartBatteryDynamicInfo()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetSingleBatteryDynamicInfoRequest,
  Response: GetSingleBatteryDynamicInfoResponse,
  md5sum() { return 'e5d629fb1dec6d80fbc10fc0bfd54348'; },
  datatype() { return 'dji_osdk_ros/GetSingleBatteryDynamicInfo'; }
};
