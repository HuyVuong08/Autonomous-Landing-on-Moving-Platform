// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WaypointV2GimbalActuatorRotationParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.ctrl_mode = null;
      this.rollCmdIgnore = null;
      this.pitchCmdIgnore = null;
      this.yawCmdIgnore = null;
      this.absYawModeRef = null;
      this.duationTime = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0;
      }
      if (initObj.hasOwnProperty('ctrl_mode')) {
        this.ctrl_mode = initObj.ctrl_mode
      }
      else {
        this.ctrl_mode = 0;
      }
      if (initObj.hasOwnProperty('rollCmdIgnore')) {
        this.rollCmdIgnore = initObj.rollCmdIgnore
      }
      else {
        this.rollCmdIgnore = 0;
      }
      if (initObj.hasOwnProperty('pitchCmdIgnore')) {
        this.pitchCmdIgnore = initObj.pitchCmdIgnore
      }
      else {
        this.pitchCmdIgnore = 0;
      }
      if (initObj.hasOwnProperty('yawCmdIgnore')) {
        this.yawCmdIgnore = initObj.yawCmdIgnore
      }
      else {
        this.yawCmdIgnore = 0;
      }
      if (initObj.hasOwnProperty('absYawModeRef')) {
        this.absYawModeRef = initObj.absYawModeRef
      }
      else {
        this.absYawModeRef = 0;
      }
      if (initObj.hasOwnProperty('duationTime')) {
        this.duationTime = initObj.duationTime
      }
      else {
        this.duationTime = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2GimbalActuatorRotationParam
    // Serialize message field [x]
    bufferOffset = _serializer.int16(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.int16(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.int16(obj.z, buffer, bufferOffset);
    // Serialize message field [ctrl_mode]
    bufferOffset = _serializer.uint8(obj.ctrl_mode, buffer, bufferOffset);
    // Serialize message field [rollCmdIgnore]
    bufferOffset = _serializer.uint8(obj.rollCmdIgnore, buffer, bufferOffset);
    // Serialize message field [pitchCmdIgnore]
    bufferOffset = _serializer.uint8(obj.pitchCmdIgnore, buffer, bufferOffset);
    // Serialize message field [yawCmdIgnore]
    bufferOffset = _serializer.uint8(obj.yawCmdIgnore, buffer, bufferOffset);
    // Serialize message field [absYawModeRef]
    bufferOffset = _serializer.uint8(obj.absYawModeRef, buffer, bufferOffset);
    // Serialize message field [duationTime]
    bufferOffset = _serializer.uint8(obj.duationTime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2GimbalActuatorRotationParam
    let len;
    let data = new WaypointV2GimbalActuatorRotationParam(null);
    // Deserialize message field [x]
    data.x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ctrl_mode]
    data.ctrl_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rollCmdIgnore]
    data.rollCmdIgnore = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pitchCmdIgnore]
    data.pitchCmdIgnore = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [yawCmdIgnore]
    data.yawCmdIgnore = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [absYawModeRef]
    data.absYawModeRef = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [duationTime]
    data.duationTime = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2GimbalActuatorRotationParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6369db5b1897817b8aad8457ecdbd81';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
      int16 x             # gimbal roll angle,  unit: 0.1 deg,range:[-3600, 3600]*/
      int16 y             # gimbal pitch angle, unit: 0.1 deg,range:[-3600, 3600]*/
      int16 z             # gimbal yaw angle,   unit: 0.1 deg,range:[-3600, 3600]*/
      uint8 ctrl_mode     # 0: absolute position control, 1:relative position control*/
      uint8 rollCmdIgnore # 0: roll command normal,  1: roll command ignore*/
      uint8 pitchCmdIgnore# 0: pitch command normal,  1: pitch command ignore*/
      uint8 yawCmdIgnore  # 0: yaw command normal,  1: yaw command ignore*/
      uint8 absYawModeRef # 0: absoluate rotate yaw relative to aircraft,
                          #  1: absoluate rotate yaw relative to North*/
      uint8 duationTime    # 0: rotate time,unit:0.1s, range[1,255]*/
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2GimbalActuatorRotationParam(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0
    }

    if (msg.ctrl_mode !== undefined) {
      resolved.ctrl_mode = msg.ctrl_mode;
    }
    else {
      resolved.ctrl_mode = 0
    }

    if (msg.rollCmdIgnore !== undefined) {
      resolved.rollCmdIgnore = msg.rollCmdIgnore;
    }
    else {
      resolved.rollCmdIgnore = 0
    }

    if (msg.pitchCmdIgnore !== undefined) {
      resolved.pitchCmdIgnore = msg.pitchCmdIgnore;
    }
    else {
      resolved.pitchCmdIgnore = 0
    }

    if (msg.yawCmdIgnore !== undefined) {
      resolved.yawCmdIgnore = msg.yawCmdIgnore;
    }
    else {
      resolved.yawCmdIgnore = 0
    }

    if (msg.absYawModeRef !== undefined) {
      resolved.absYawModeRef = msg.absYawModeRef;
    }
    else {
      resolved.absYawModeRef = 0
    }

    if (msg.duationTime !== undefined) {
      resolved.duationTime = msg.duationTime;
    }
    else {
      resolved.duationTime = 0
    }

    return resolved;
    }
};

module.exports = WaypointV2GimbalActuatorRotationParam;
