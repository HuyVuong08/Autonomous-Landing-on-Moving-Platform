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

class CameraStartShootAEBPhotoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.payload_index = null;
      this.photo_aeb_count = null;
    }
    else {
      if (initObj.hasOwnProperty('payload_index')) {
        this.payload_index = initObj.payload_index
      }
      else {
        this.payload_index = 0;
      }
      if (initObj.hasOwnProperty('photo_aeb_count')) {
        this.photo_aeb_count = initObj.photo_aeb_count
      }
      else {
        this.photo_aeb_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraStartShootAEBPhotoRequest
    // Serialize message field [payload_index]
    bufferOffset = _serializer.uint8(obj.payload_index, buffer, bufferOffset);
    // Serialize message field [photo_aeb_count]
    bufferOffset = _serializer.uint8(obj.photo_aeb_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraStartShootAEBPhotoRequest
    let len;
    let data = new CameraStartShootAEBPhotoRequest(null);
    // Deserialize message field [payload_index]
    data.payload_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [photo_aeb_count]
    data.photo_aeb_count = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/CameraStartShootAEBPhotoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd4f68927ad0771b9c08ccc08748ba4d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    uint8 payload_index #see enum class PayloadIndex in common_type.h
    uint8 photo_aeb_count #see enum class PhotoAEBCount in common_type.h
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraStartShootAEBPhotoRequest(null);
    if (msg.payload_index !== undefined) {
      resolved.payload_index = msg.payload_index;
    }
    else {
      resolved.payload_index = 0
    }

    if (msg.photo_aeb_count !== undefined) {
      resolved.photo_aeb_count = msg.photo_aeb_count;
    }
    else {
      resolved.photo_aeb_count = 0
    }

    return resolved;
    }
};

class CameraStartShootAEBPhotoResponse {
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
    // Serializes a message object of type CameraStartShootAEBPhotoResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraStartShootAEBPhotoResponse
    let len;
    let data = new CameraStartShootAEBPhotoResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/CameraStartShootAEBPhotoResponse';
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
    const resolved = new CameraStartShootAEBPhotoResponse(null);
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
  Request: CameraStartShootAEBPhotoRequest,
  Response: CameraStartShootAEBPhotoResponse,
  md5sum() { return 'c30d8282262b81c056e4ae369862d80d'; },
  datatype() { return 'dji_osdk_ros/CameraStartShootAEBPhoto'; }
};
