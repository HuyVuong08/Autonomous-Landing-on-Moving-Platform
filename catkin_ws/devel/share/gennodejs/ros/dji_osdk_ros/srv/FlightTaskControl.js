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

class FlightTaskControlRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task = null;
      this.joystickCommand = null;
      this.velocityControlTimeMs = null;
      this.posThresholdInM = null;
      this.yawThresholdInDeg = null;
    }
    else {
      if (initObj.hasOwnProperty('task')) {
        this.task = initObj.task
      }
      else {
        this.task = 0;
      }
      if (initObj.hasOwnProperty('joystickCommand')) {
        this.joystickCommand = initObj.joystickCommand
      }
      else {
        this.joystickCommand = new JoystickParams();
      }
      if (initObj.hasOwnProperty('velocityControlTimeMs')) {
        this.velocityControlTimeMs = initObj.velocityControlTimeMs
      }
      else {
        this.velocityControlTimeMs = 0;
      }
      if (initObj.hasOwnProperty('posThresholdInM')) {
        this.posThresholdInM = initObj.posThresholdInM
      }
      else {
        this.posThresholdInM = 0.0;
      }
      if (initObj.hasOwnProperty('yawThresholdInDeg')) {
        this.yawThresholdInDeg = initObj.yawThresholdInDeg
      }
      else {
        this.yawThresholdInDeg = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FlightTaskControlRequest
    // Serialize message field [task]
    bufferOffset = _serializer.uint8(obj.task, buffer, bufferOffset);
    // Serialize message field [joystickCommand]
    bufferOffset = JoystickParams.serialize(obj.joystickCommand, buffer, bufferOffset);
    // Serialize message field [velocityControlTimeMs]
    bufferOffset = _serializer.uint32(obj.velocityControlTimeMs, buffer, bufferOffset);
    // Serialize message field [posThresholdInM]
    bufferOffset = _serializer.float32(obj.posThresholdInM, buffer, bufferOffset);
    // Serialize message field [yawThresholdInDeg]
    bufferOffset = _serializer.float32(obj.yawThresholdInDeg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FlightTaskControlRequest
    let len;
    let data = new FlightTaskControlRequest(null);
    // Deserialize message field [task]
    data.task = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [joystickCommand]
    data.joystickCommand = JoystickParams.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocityControlTimeMs]
    data.velocityControlTimeMs = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [posThresholdInM]
    data.posThresholdInM = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yawThresholdInDeg]
    data.yawThresholdInDeg = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/FlightTaskControlRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6652475a09e6d73ddea1c35a04a8b599';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #constant for tasks
    uint8 TASK_GOHOME = 1
    uint8 TASK_POSITION_AND_YAW_CONTROL   = 2
    uint8 TASK_GOHOME_AND_CONFIRM_LANDING = 3
    uint8 TASK_TAKEOFF = 4
    uint8 TASK_VELOCITY_AND_YAWRATE_CONTROL = 5
    uint8 TASK_LAND          = 6
    uint8 START_MOTOR        = 7
    uint8 STOP_MOTOR         = 8
    uint8 TASK_EXIT_GO_HOME  = 12
    uint8 TASK_EXIT_LANDING  = 14
    uint8 TASK_FORCE_LANDING_AVOID_GROUND = 30 #/*!< confirm landing */
    uint8 TASK_FORCE_LANDING              = 31 #/*!< force landing */
    
    #request
    uint8 task    # see constants above for possible tasks
    JoystickParams joystickCommand  #Provide Position and Velocity control
    uint32 velocityControlTimeMs    #Velocity control time
    float32 posThresholdInM  #(Meter)
    float32 yawThresholdInDeg  #(Degree)
    
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
    const resolved = new FlightTaskControlRequest(null);
    if (msg.task !== undefined) {
      resolved.task = msg.task;
    }
    else {
      resolved.task = 0
    }

    if (msg.joystickCommand !== undefined) {
      resolved.joystickCommand = JoystickParams.Resolve(msg.joystickCommand)
    }
    else {
      resolved.joystickCommand = new JoystickParams()
    }

    if (msg.velocityControlTimeMs !== undefined) {
      resolved.velocityControlTimeMs = msg.velocityControlTimeMs;
    }
    else {
      resolved.velocityControlTimeMs = 0
    }

    if (msg.posThresholdInM !== undefined) {
      resolved.posThresholdInM = msg.posThresholdInM;
    }
    else {
      resolved.posThresholdInM = 0.0
    }

    if (msg.yawThresholdInDeg !== undefined) {
      resolved.yawThresholdInDeg = msg.yawThresholdInDeg;
    }
    else {
      resolved.yawThresholdInDeg = 0.0
    }

    return resolved;
    }
};

// Constants for message
FlightTaskControlRequest.Constants = {
  TASK_GOHOME: 1,
  TASK_POSITION_AND_YAW_CONTROL: 2,
  TASK_GOHOME_AND_CONFIRM_LANDING: 3,
  TASK_TAKEOFF: 4,
  TASK_VELOCITY_AND_YAWRATE_CONTROL: 5,
  TASK_LAND: 6,
  START_MOTOR: 7,
  STOP_MOTOR: 8,
  TASK_EXIT_GO_HOME: 12,
  TASK_EXIT_LANDING: 14,
  TASK_FORCE_LANDING_AVOID_GROUND: 30,
  TASK_FORCE_LANDING: 31,
}

class FlightTaskControlResponse {
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
    // Serializes a message object of type FlightTaskControlResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FlightTaskControlResponse
    let len;
    let data = new FlightTaskControlResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/FlightTaskControlResponse';
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
    const resolved = new FlightTaskControlResponse(null);
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
  Request: FlightTaskControlRequest,
  Response: FlightTaskControlResponse,
  md5sum() { return '6c2d7ee9a1feaa8383a6f0a485b64e2a'; },
  datatype() { return 'dji_osdk_ros/FlightTaskControl'; }
};
