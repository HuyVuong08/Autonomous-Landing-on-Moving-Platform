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

class CameraStartShootIntervalPhotoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.payload_index = null;
      this.photo_num_conticap = null;
      this.time_interval = null;
    }
    else {
      if (initObj.hasOwnProperty('payload_index')) {
        this.payload_index = initObj.payload_index
      }
      else {
        this.payload_index = 0;
      }
      if (initObj.hasOwnProperty('photo_num_conticap')) {
        this.photo_num_conticap = initObj.photo_num_conticap
      }
      else {
        this.photo_num_conticap = 0;
      }
      if (initObj.hasOwnProperty('time_interval')) {
        this.time_interval = initObj.time_interval
      }
      else {
        this.time_interval = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraStartShootIntervalPhotoRequest
    // Serialize message field [payload_index]
    bufferOffset = _serializer.uint8(obj.payload_index, buffer, bufferOffset);
    // Serialize message field [photo_num_conticap]
    bufferOffset = _serializer.uint8(obj.photo_num_conticap, buffer, bufferOffset);
    // Serialize message field [time_interval]
    bufferOffset = _serializer.int16(obj.time_interval, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraStartShootIntervalPhotoRequest
    let len;
    let data = new CameraStartShootIntervalPhotoRequest(null);
    // Deserialize message field [payload_index]
    data.payload_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [photo_num_conticap]
    data.photo_num_conticap = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [time_interval]
    data.time_interval = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/CameraStartShootIntervalPhotoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b60cc04bce35073619b77f1796df3f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    uint8 payload_index #see enum class PayloadIndex in common_type.h
    uint8 photo_num_conticap # 0:reserve 1~254:number 255:keep capturing till stop
    int16 time_interval #/ time interval (second)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraStartShootIntervalPhotoRequest(null);
    if (msg.payload_index !== undefined) {
      resolved.payload_index = msg.payload_index;
    }
    else {
      resolved.payload_index = 0
    }

    if (msg.photo_num_conticap !== undefined) {
      resolved.photo_num_conticap = msg.photo_num_conticap;
    }
    else {
      resolved.photo_num_conticap = 0
    }

    if (msg.time_interval !== undefined) {
      resolved.time_interval = msg.time_interval;
    }
    else {
      resolved.time_interval = 0
    }

    return resolved;
    }
};

class CameraStartShootIntervalPhotoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraStartShootIntervalPhotoResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraStartShootIntervalPhotoResponse
    let len;
    let data = new CameraStartShootIntervalPhotoResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/CameraStartShootIntervalPhotoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraStartShootIntervalPhotoResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CameraStartShootIntervalPhotoRequest,
  Response: CameraStartShootIntervalPhotoResponse,
  md5sum() { return 'bb20f8f95cde73a4d8b41d0f5a0bdcdf'; },
  datatype() { return 'dji_osdk_ros/CameraStartShootIntervalPhoto'; }
};
