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

let HMSPushInfo = require('../msg/HMSPushInfo.js');

//-----------------------------------------------------------

class GetHMSDataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable = null;
    }
    else {
      if (initObj.hasOwnProperty('enable')) {
        this.enable = initObj.enable
      }
      else {
        this.enable = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetHMSDataRequest
    // Serialize message field [enable]
    bufferOffset = _serializer.bool(obj.enable, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHMSDataRequest
    let len;
    let data = new GetHMSDataRequest(null);
    // Deserialize message field [enable]
    data.enable = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GetHMSDataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c1211af706069c994c06e00eb59ac9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    bool enable
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetHMSDataRequest(null);
    if (msg.enable !== undefined) {
      resolved.enable = msg.enable;
    }
    else {
      resolved.enable = false
    }

    return resolved;
    }
};

class GetHMSDataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.deviceIndex = null;
      this.errList = null;
      this.timeStamp = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('deviceIndex')) {
        this.deviceIndex = initObj.deviceIndex
      }
      else {
        this.deviceIndex = 0;
      }
      if (initObj.hasOwnProperty('errList')) {
        this.errList = initObj.errList
      }
      else {
        this.errList = [];
      }
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetHMSDataResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [deviceIndex]
    bufferOffset = _serializer.uint8(obj.deviceIndex, buffer, bufferOffset);
    // Serialize message field [errList]
    // Serialize the length for message field [errList]
    bufferOffset = _serializer.uint32(obj.errList.length, buffer, bufferOffset);
    obj.errList.forEach((val) => {
      bufferOffset = HMSPushInfo.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint32(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetHMSDataResponse
    let len;
    let data = new GetHMSDataResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [deviceIndex]
    data.deviceIndex = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [errList]
    // Deserialize array length for message field [errList]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.errList = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.errList[i] = HMSPushInfo.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 6 * object.errList.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GetHMSDataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7b1a3ca4f52c03bc8e0bd4ba84b0e67d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #reponse
    bool result
    uint8 deviceIndex         # When the error code is related to camera or gimbal device,
                              # it will tell you which device it is.
    HMSPushInfo[] errList     # error code list in each pushing
    uint32 timeStamp
    
    ================================================================================
    MSG: dji_osdk_ros/HMSPushInfo
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
    const resolved = new GetHMSDataResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.deviceIndex !== undefined) {
      resolved.deviceIndex = msg.deviceIndex;
    }
    else {
      resolved.deviceIndex = 0
    }

    if (msg.errList !== undefined) {
      resolved.errList = new Array(msg.errList.length);
      for (let i = 0; i < resolved.errList.length; ++i) {
        resolved.errList[i] = HMSPushInfo.Resolve(msg.errList[i]);
      }
    }
    else {
      resolved.errList = []
    }

    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetHMSDataRequest,
  Response: GetHMSDataResponse,
  md5sum() { return '1ec4559c4a22067560534b61ee437470'; },
  datatype() { return 'dji_osdk_ros/GetHMSData'; }
};
