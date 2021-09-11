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

class CameraISORequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.payload_index = null;
      this.exposure_mode = null;
      this.iso_data = null;
    }
    else {
      if (initObj.hasOwnProperty('payload_index')) {
        this.payload_index = initObj.payload_index
      }
      else {
        this.payload_index = 0;
      }
      if (initObj.hasOwnProperty('exposure_mode')) {
        this.exposure_mode = initObj.exposure_mode
      }
      else {
        this.exposure_mode = 0;
      }
      if (initObj.hasOwnProperty('iso_data')) {
        this.iso_data = initObj.iso_data
      }
      else {
        this.iso_data = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraISORequest
    // Serialize message field [payload_index]
    bufferOffset = _serializer.uint8(obj.payload_index, buffer, bufferOffset);
    // Serialize message field [exposure_mode]
    bufferOffset = _serializer.uint8(obj.exposure_mode, buffer, bufferOffset);
    // Serialize message field [iso_data]
    bufferOffset = _serializer.uint8(obj.iso_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraISORequest
    let len;
    let data = new CameraISORequest(null);
    // Deserialize message field [payload_index]
    data.payload_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [exposure_mode]
    data.exposure_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [iso_data]
    data.iso_data = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/CameraISORequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69434281cf3358a0c720479e433c69a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    uint8 payload_index #see enum class PayloadIndex in common_type.h
    uint8 exposure_mode #see enum class ExposureMode in common_type.h
    uint8 iso_data #see enum class ISO in common_type.h
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraISORequest(null);
    if (msg.payload_index !== undefined) {
      resolved.payload_index = msg.payload_index;
    }
    else {
      resolved.payload_index = 0
    }

    if (msg.exposure_mode !== undefined) {
      resolved.exposure_mode = msg.exposure_mode;
    }
    else {
      resolved.exposure_mode = 0
    }

    if (msg.iso_data !== undefined) {
      resolved.iso_data = msg.iso_data;
    }
    else {
      resolved.iso_data = 0
    }

    return resolved;
    }
};

class CameraISOResponse {
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
    // Serializes a message object of type CameraISOResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraISOResponse
    let len;
    let data = new CameraISOResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/CameraISOResponse';
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
    const resolved = new CameraISOResponse(null);
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
  Request: CameraISORequest,
  Response: CameraISOResponse,
  md5sum() { return '621942490b0fe93137ed06987337a648'; },
  datatype() { return 'dji_osdk_ros/CameraISO'; }
};
