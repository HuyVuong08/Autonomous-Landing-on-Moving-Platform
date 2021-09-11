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

class GetDroneTypeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDroneTypeRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDroneTypeRequest
    let len;
    let data = new GetDroneTypeRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GetDroneTypeRequest';
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
    const resolved = new GetDroneTypeRequest(null);
    return resolved;
    }
};

class GetDroneTypeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drone_type = null;
    }
    else {
      if (initObj.hasOwnProperty('drone_type')) {
        this.drone_type = initObj.drone_type
      }
      else {
        this.drone_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDroneTypeResponse
    // Serialize message field [drone_type]
    bufferOffset = _serializer.uint8(obj.drone_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDroneTypeResponse
    let len;
    let data = new GetDroneTypeResponse(null);
    // Deserialize message field [drone_type]
    data.drone_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GetDroneTypeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87cc5c5bc9c0355af48cf3dac961c235';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    uint8 drone_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDroneTypeResponse(null);
    if (msg.drone_type !== undefined) {
      resolved.drone_type = msg.drone_type;
    }
    else {
      resolved.drone_type = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDroneTypeRequest,
  Response: GetDroneTypeResponse,
  md5sum() { return '87cc5c5bc9c0355af48cf3dac961c235'; },
  datatype() { return 'dji_osdk_ros/GetDroneType'; }
};
