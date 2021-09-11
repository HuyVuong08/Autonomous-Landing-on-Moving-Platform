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

class CameraShutterSpeedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.payload_index = null;
      this.exposure_mode = null;
      this.shutter_speed = null;
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
      if (initObj.hasOwnProperty('shutter_speed')) {
        this.shutter_speed = initObj.shutter_speed
      }
      else {
        this.shutter_speed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraShutterSpeedRequest
    // Serialize message field [payload_index]
    bufferOffset = _serializer.uint8(obj.payload_index, buffer, bufferOffset);
    // Serialize message field [exposure_mode]
    bufferOffset = _serializer.uint8(obj.exposure_mode, buffer, bufferOffset);
    // Serialize message field [shutter_speed]
    bufferOffset = _serializer.uint8(obj.shutter_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraShutterSpeedRequest
    let len;
    let data = new CameraShutterSpeedRequest(null);
    // Deserialize message field [payload_index]
    data.payload_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [exposure_mode]
    data.exposure_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [shutter_speed]
    data.shutter_speed = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/CameraShutterSpeedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '259ed69747cf0b8dcac4a24746a6626e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    uint8 payload_index #see enum class PayloadIndex in common_type.h
    uint8 exposure_mode #see enum class ExposureMode in common_type.h
    uint8 shutter_speed #see enum class ShutterSpeed in common_type.h
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraShutterSpeedRequest(null);
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

    if (msg.shutter_speed !== undefined) {
      resolved.shutter_speed = msg.shutter_speed;
    }
    else {
      resolved.shutter_speed = 0
    }

    return resolved;
    }
};

class CameraShutterSpeedResponse {
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
    // Serializes a message object of type CameraShutterSpeedResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraShutterSpeedResponse
    let len;
    let data = new CameraShutterSpeedResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/CameraShutterSpeedResponse';
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
    const resolved = new CameraShutterSpeedResponse(null);
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
  Request: CameraShutterSpeedRequest,
  Response: CameraShutterSpeedResponse,
  md5sum() { return 'cab76933e4cde3ed0525dd3c2f4ed953'; },
  datatype() { return 'dji_osdk_ros/CameraShutterSpeed'; }
};
