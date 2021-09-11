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

class SetupCameraH264Request {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_view = null;
      this.start = null;
    }
    else {
      if (initObj.hasOwnProperty('request_view')) {
        this.request_view = initObj.request_view
      }
      else {
        this.request_view = 0;
      }
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetupCameraH264Request
    // Serialize message field [request_view]
    bufferOffset = _serializer.uint8(obj.request_view, buffer, bufferOffset);
    // Serialize message field [start]
    bufferOffset = _serializer.uint8(obj.start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetupCameraH264Request
    let len;
    let data = new SetupCameraH264Request(null);
    // Deserialize message field [request_view]
    data.request_view = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start]
    data.start = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/SetupCameraH264Request';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bbc9edd450365b3e5b6c4e71c439e0d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #constant for vga image frequency
    uint8 FPV_CAMERA  = 7
    uint8 MAIN_CAMERA = 0
    uint8 VICE_CAMERA = 1
    uint8 TOP_CAMERA  = 2
    
    # use above constants to config freq.
    uint8 request_view
    
    # 1 for start camera stream, 0 for stop
    uint8 start
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetupCameraH264Request(null);
    if (msg.request_view !== undefined) {
      resolved.request_view = msg.request_view;
    }
    else {
      resolved.request_view = 0
    }

    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = 0
    }

    return resolved;
    }
};

// Constants for message
SetupCameraH264Request.Constants = {
  FPV_CAMERA: 7,
  MAIN_CAMERA: 0,
  VICE_CAMERA: 1,
  TOP_CAMERA: 2,
}

class SetupCameraH264Response {
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
    // Serializes a message object of type SetupCameraH264Response
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetupCameraH264Response
    let len;
    let data = new SetupCameraH264Response(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/SetupCameraH264Response';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetupCameraH264Response(null);
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
  Request: SetupCameraH264Request,
  Response: SetupCameraH264Response,
  md5sum() { return '08053824d6e6943daabf1c4c8936b823'; },
  datatype() { return 'dji_osdk_ros/SetupCameraH264'; }
};
