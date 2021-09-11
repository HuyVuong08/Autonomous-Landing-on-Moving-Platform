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

class WaypointV2AircraftControlActuatorRotateHeading {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isRelative = null;
      this.yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('isRelative')) {
        this.isRelative = initObj.isRelative
      }
      else {
        this.isRelative = 0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2AircraftControlActuatorRotateHeading
    // Serialize message field [isRelative]
    bufferOffset = _serializer.uint8(obj.isRelative, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2AircraftControlActuatorRotateHeading
    let len;
    let data = new WaypointV2AircraftControlActuatorRotateHeading(null);
    // Deserialize message field [isRelative]
    data.isRelative = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da5a91dc67eed375ef69186b861ceea1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This class defines how the aircraft rotates on the yaw axis.
      uint8 isRelative # Determines the aircraft rotate heading relative.
                         # if ``TRUE``, when the aircraft is rotating, relative to the current angle.
      float32 yaw # Determines the direction how aircraft changes its heading.
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2AircraftControlActuatorRotateHeading(null);
    if (msg.isRelative !== undefined) {
      resolved.isRelative = msg.isRelative;
    }
    else {
      resolved.isRelative = 0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    return resolved;
    }
};

module.exports = WaypointV2AircraftControlActuatorRotateHeading;
