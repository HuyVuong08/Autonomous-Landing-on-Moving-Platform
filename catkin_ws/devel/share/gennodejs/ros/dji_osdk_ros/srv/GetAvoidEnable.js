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


//-----------------------------------------------------------

class GetAvoidEnableRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAvoidEnableRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAvoidEnableRequest
    let len;
    let data = new GetAvoidEnableRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GetAvoidEnableRequest';
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
    const resolved = new GetAvoidEnableRequest(null);
    return resolved;
    }
};

class GetAvoidEnableResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.horizon_avoid_enable_status = null;
      this.upwards_avoid_enable_status = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('horizon_avoid_enable_status')) {
        this.horizon_avoid_enable_status = initObj.horizon_avoid_enable_status
      }
      else {
        this.horizon_avoid_enable_status = 0;
      }
      if (initObj.hasOwnProperty('upwards_avoid_enable_status')) {
        this.upwards_avoid_enable_status = initObj.upwards_avoid_enable_status
      }
      else {
        this.upwards_avoid_enable_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAvoidEnableResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [horizon_avoid_enable_status]
    bufferOffset = _serializer.uint8(obj.horizon_avoid_enable_status, buffer, bufferOffset);
    // Serialize message field [upwards_avoid_enable_status]
    bufferOffset = _serializer.uint8(obj.upwards_avoid_enable_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAvoidEnableResponse
    let len;
    let data = new GetAvoidEnableResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [horizon_avoid_enable_status]
    data.horizon_avoid_enable_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [upwards_avoid_enable_status]
    data.upwards_avoid_enable_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GetAvoidEnableResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12c68a1a9e8bfbd739c56cc5d4af2738';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    bool result
    uint8 horizon_avoid_enable_status #0:disable 1:enable 0xF:invalid
    uint8 upwards_avoid_enable_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAvoidEnableResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.horizon_avoid_enable_status !== undefined) {
      resolved.horizon_avoid_enable_status = msg.horizon_avoid_enable_status;
    }
    else {
      resolved.horizon_avoid_enable_status = 0
    }

    if (msg.upwards_avoid_enable_status !== undefined) {
      resolved.upwards_avoid_enable_status = msg.upwards_avoid_enable_status;
    }
    else {
      resolved.upwards_avoid_enable_status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAvoidEnableRequest,
  Response: GetAvoidEnableResponse,
  md5sum() { return '12c68a1a9e8bfbd739c56cc5d4af2738'; },
  datatype() { return 'dji_osdk_ros/GetAvoidEnable'; }
};
