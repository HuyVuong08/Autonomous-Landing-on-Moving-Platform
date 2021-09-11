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

class WaypointV2CameraActuatorFocusParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.regionType = null;
      this.width = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('regionType')) {
        this.regionType = initObj.regionType
      }
      else {
        this.regionType = 0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2CameraActuatorFocusParam
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [regionType]
    bufferOffset = _serializer.uint8(obj.regionType, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2CameraActuatorFocusParam
    let len;
    let data = new WaypointV2CameraActuatorFocusParam(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [regionType]
    data.regionType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2CameraActuatorFocusParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '95b7a584dbbb8caef1fc7ac96e17cb2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This class defines a camera focus operation for ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
    # The lens focus target point. When the focus mode is auto, the target point
    # is the focal point. When the focus mode is manual, the target point is the zoom
    # out area if the focus assistant is enabled for the manual mode.
    #  The range for x and y is from 0.0 to 1.0. The point [0.0, 0.0] represents the top-left angle of the screen.
      
      float32 x # x axis focus point value.range: [0,1]
      float32 y # y axis focus point value.range: [0,1]
      uint8 regionType #focus type:0:point focus,1:rectangle focus
      float32 width #Normalized focus area width(0,1)
      float32 height # Normalized focus area height(0,1)
      uint8 retryTimes = 1
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2CameraActuatorFocusParam(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.regionType !== undefined) {
      resolved.regionType = msg.regionType;
    }
    else {
      resolved.regionType = 0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    return resolved;
    }
};

// Constants for message
WaypointV2CameraActuatorFocusParam.Constants = {
  RETRYTIMES: 1,
}

module.exports = WaypointV2CameraActuatorFocusParam;
