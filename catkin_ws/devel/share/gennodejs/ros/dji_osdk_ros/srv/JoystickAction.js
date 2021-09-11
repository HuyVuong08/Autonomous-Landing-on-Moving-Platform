// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JoystickParams = require('../msg/JoystickParams.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class JoystickActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joystickCommand = null;
    }
    else {
      if (initObj.hasOwnProperty('joystickCommand')) {
        this.joystickCommand = initObj.joystickCommand
      }
      else {
        this.joystickCommand = new JoystickParams();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JoystickActionRequest
    // Serialize message field [joystickCommand]
    bufferOffset = JoystickParams.serialize(obj.joystickCommand, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JoystickActionRequest
    let len;
    let data = new JoystickActionRequest(null);
    // Deserialize message field [joystickCommand]
    data.joystickCommand = JoystickParams.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/JoystickActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0516ab007c0bcbdc94fddf88e942057';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    JoystickParams joystickCommand
    
    ================================================================================
    MSG: dji_osdk_ros/JoystickParams
    float32 x   # Control with respect to the x axis of the
                # DJI::OSDK::Control::HorizontalCoordinate.
    float32 y   # Control with respect to the y axis of the
                # DJI::OSDK::Control::HorizontalCoordinate.
    float32 z   # Control with respect to the z axis, up is positive.
    float32 yaw #Yaw position/velocity control w.r.t. the ground frame.
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JoystickActionRequest(null);
    if (msg.joystickCommand !== undefined) {
      resolved.joystickCommand = JoystickParams.Resolve(msg.joystickCommand)
    }
    else {
      resolved.joystickCommand = new JoystickParams()
    }

    return resolved;
    }
};

class JoystickActionResponse {
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
    // Serializes a message object of type JoystickActionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JoystickActionResponse
    let len;
    let data = new JoystickActionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/JoystickActionResponse';
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
    const resolved = new JoystickActionResponse(null);
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
  Request: JoystickActionRequest,
  Response: JoystickActionResponse,
  md5sum() { return '9edeea71222489b7e9f0a37b50217781'; },
  datatype() { return 'dji_osdk_ros/JoystickAction'; }
};
