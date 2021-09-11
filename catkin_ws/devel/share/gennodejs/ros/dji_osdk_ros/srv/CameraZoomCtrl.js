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

class CameraZoomCtrlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_stop = null;
      this.payload_index = null;
      this.direction = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('start_stop')) {
        this.start_stop = initObj.start_stop
      }
      else {
        this.start_stop = 0;
      }
      if (initObj.hasOwnProperty('payload_index')) {
        this.payload_index = initObj.payload_index
      }
      else {
        this.payload_index = 0;
      }
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraZoomCtrlRequest
    // Serialize message field [start_stop]
    bufferOffset = _serializer.uint8(obj.start_stop, buffer, bufferOffset);
    // Serialize message field [payload_index]
    bufferOffset = _serializer.uint8(obj.payload_index, buffer, bufferOffset);
    // Serialize message field [direction]
    bufferOffset = _serializer.uint8(obj.direction, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.uint8(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraZoomCtrlRequest
    let len;
    let data = new CameraZoomCtrlRequest(null);
    // Deserialize message field [start_stop]
    data.start_stop = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [payload_index]
    data.payload_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [direction]
    data.direction = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/CameraZoomCtrlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb87496f9d2e6a41cb9eba5a893d4069';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    uint8 start_stop
    uint8 payload_index #see enum class PayloadIndex in common_type.h
    uint8 direction #see enum class ZoomDirection in common_type.h
    uint8 speed #see enum class ZoomSpeed in common_type.h
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraZoomCtrlRequest(null);
    if (msg.start_stop !== undefined) {
      resolved.start_stop = msg.start_stop;
    }
    else {
      resolved.start_stop = 0
    }

    if (msg.payload_index !== undefined) {
      resolved.payload_index = msg.payload_index;
    }
    else {
      resolved.payload_index = 0
    }

    if (msg.direction !== undefined) {
      resolved.direction = msg.direction;
    }
    else {
      resolved.direction = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    return resolved;
    }
};

class CameraZoomCtrlResponse {
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
    // Serializes a message object of type CameraZoomCtrlResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraZoomCtrlResponse
    let len;
    let data = new CameraZoomCtrlResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/CameraZoomCtrlResponse';
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
    const resolved = new CameraZoomCtrlResponse(null);
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
  Request: CameraZoomCtrlRequest,
  Response: CameraZoomCtrlResponse,
  md5sum() { return '15c6fe8ef5cfbafd183e87752b1029b1'; },
  datatype() { return 'dji_osdk_ros/CameraZoomCtrl'; }
};
