// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WaypointV2GimbalActuatorRotationParam = require('./WaypointV2GimbalActuatorRotationParam.js');

//-----------------------------------------------------------

class WaypointV2GimbalActuator {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.DJIWaypointV2ActionActuatorGimbalOperationType = null;
      this.actuatorIndex = null;
      this.waypointV2GimbalActuatorRotationParam = null;
    }
    else {
      if (initObj.hasOwnProperty('DJIWaypointV2ActionActuatorGimbalOperationType')) {
        this.DJIWaypointV2ActionActuatorGimbalOperationType = initObj.DJIWaypointV2ActionActuatorGimbalOperationType
      }
      else {
        this.DJIWaypointV2ActionActuatorGimbalOperationType = 0;
      }
      if (initObj.hasOwnProperty('actuatorIndex')) {
        this.actuatorIndex = initObj.actuatorIndex
      }
      else {
        this.actuatorIndex = 0;
      }
      if (initObj.hasOwnProperty('waypointV2GimbalActuatorRotationParam')) {
        this.waypointV2GimbalActuatorRotationParam = initObj.waypointV2GimbalActuatorRotationParam
      }
      else {
        this.waypointV2GimbalActuatorRotationParam = new WaypointV2GimbalActuatorRotationParam();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2GimbalActuator
    // Serialize message field [DJIWaypointV2ActionActuatorGimbalOperationType]
    bufferOffset = _serializer.uint8(obj.DJIWaypointV2ActionActuatorGimbalOperationType, buffer, bufferOffset);
    // Serialize message field [actuatorIndex]
    bufferOffset = _serializer.uint16(obj.actuatorIndex, buffer, bufferOffset);
    // Serialize message field [waypointV2GimbalActuatorRotationParam]
    bufferOffset = WaypointV2GimbalActuatorRotationParam.serialize(obj.waypointV2GimbalActuatorRotationParam, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2GimbalActuator
    let len;
    let data = new WaypointV2GimbalActuator(null);
    // Deserialize message field [DJIWaypointV2ActionActuatorGimbalOperationType]
    data.DJIWaypointV2ActionActuatorGimbalOperationType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [actuatorIndex]
    data.actuatorIndex = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [waypointV2GimbalActuatorRotationParam]
    data.waypointV2GimbalActuatorRotationParam = WaypointV2GimbalActuatorRotationParam.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2GimbalActuator';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8bcaee6b26f8e0a2c23b117c342971ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # gimbal actuator will be performed when a waypoint mission is executed.
    #constant for DJIWaypointV2ActionActuatorGimbalOperationType
    # Rotates the gimbal. Only valid when the trigger type is
    # ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_ReachPoint``.
    uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeRotateGimbal = 1
    # Unknown
    uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeUnknown = 255
    
    uint8 DJIWaypointV2ActionActuatorGimbalOperationType
    uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related
                          # to camera or gimbal and the connected product has multiple gimbals and cameras.
    WaypointV2GimbalActuatorRotationParam waypointV2GimbalActuatorRotationParam # The operation type of gimbal actuator.
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2GimbalActuatorRotationParam
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
    const resolved = new WaypointV2GimbalActuator(null);
    if (msg.DJIWaypointV2ActionActuatorGimbalOperationType !== undefined) {
      resolved.DJIWaypointV2ActionActuatorGimbalOperationType = msg.DJIWaypointV2ActionActuatorGimbalOperationType;
    }
    else {
      resolved.DJIWaypointV2ActionActuatorGimbalOperationType = 0
    }

    if (msg.actuatorIndex !== undefined) {
      resolved.actuatorIndex = msg.actuatorIndex;
    }
    else {
      resolved.actuatorIndex = 0
    }

    if (msg.waypointV2GimbalActuatorRotationParam !== undefined) {
      resolved.waypointV2GimbalActuatorRotationParam = WaypointV2GimbalActuatorRotationParam.Resolve(msg.waypointV2GimbalActuatorRotationParam)
    }
    else {
      resolved.waypointV2GimbalActuatorRotationParam = new WaypointV2GimbalActuatorRotationParam()
    }

    return resolved;
    }
};

// Constants for message
WaypointV2GimbalActuator.Constants = {
  DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEROTATEGIMBAL: 1,
  DJIWAYPOINTV2ACTIONACTUATORGIMBALOPERATIONTYPEUNKNOWN: 255,
}

module.exports = WaypointV2GimbalActuator;
