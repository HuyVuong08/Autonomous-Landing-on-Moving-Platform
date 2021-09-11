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

class CameraRecordVideoActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_stop = null;
      this.payload_index = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraRecordVideoActionRequest
    // Serialize message field [start_stop]
    bufferOffset = _serializer.uint8(obj.start_stop, buffer, bufferOffset);
    // Serialize message field [payload_index]
    bufferOffset = _serializer.uint8(obj.payload_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraRecordVideoActionRequest
    let len;
    let data = new CameraRecordVideoActionRequest(null);
    // Deserialize message field [start_stop]
    data.start_stop = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [payload_index]
    data.payload_index = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/CameraRecordVideoActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83d72a3a3e6bed78157fd9608245bbfc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    uint8 start_stop
    uint8 payload_index #see enum class PayloadIndex in common_type.h
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraRecordVideoActionRequest(null);
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

    return resolved;
    }
};

class CameraRecordVideoActionResponse {
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
    // Serializes a message object of type CameraRecordVideoActionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraRecordVideoActionResponse
    let len;
    let data = new CameraRecordVideoActionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/CameraRecordVideoActionResponse';
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
    const resolved = new CameraRecordVideoActionResponse(null);
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
  Request: CameraRecordVideoActionRequest,
  Response: CameraRecordVideoActionResponse,
  md5sum() { return '3e73f84c6b55e276ab42b0e25e1ff3c1'; },
  datatype() { return 'dji_osdk_ros/CameraRecordVideoAction'; }
};
