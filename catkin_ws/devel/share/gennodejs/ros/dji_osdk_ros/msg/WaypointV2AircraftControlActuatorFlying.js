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

class WaypointV2AircraftControlActuatorFlying {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isStartFlying = null;
    }
    else {
      if (initObj.hasOwnProperty('isStartFlying')) {
        this.isStartFlying = initObj.isStartFlying
      }
      else {
        this.isStartFlying = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2AircraftControlActuatorFlying
    // Serialize message field [isStartFlying]
    bufferOffset = _serializer.uint8(obj.isStartFlying, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2AircraftControlActuatorFlying
    let len;
    let data = new WaypointV2AircraftControlActuatorFlying(null);
    // Deserialize message field [isStartFlying]
    data.isStartFlying = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2AircraftControlActuatorFlying';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc8731a524ee2cb9265a3e7483e070f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This class defines if the aircraft starts or stops the flight.s.
    uint8  isStartFlying  # Determines the aircraft start flying or stop flying.
                            # ``TRUE`` for the aircraft to start flying.
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2AircraftControlActuatorFlying(null);
    if (msg.isStartFlying !== undefined) {
      resolved.isStartFlying = msg.isStartFlying;
    }
    else {
      resolved.isStartFlying = 0
    }

    return resolved;
    }
};

module.exports = WaypointV2AircraftControlActuatorFlying;
