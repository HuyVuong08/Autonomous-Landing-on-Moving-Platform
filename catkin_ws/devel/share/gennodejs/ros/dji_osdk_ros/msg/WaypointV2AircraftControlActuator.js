// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WaypointV2AircraftControlActuatorFlying = require('./WaypointV2AircraftControlActuatorFlying.js');
let WaypointV2AircraftControlActuatorRotateHeading = require('./WaypointV2AircraftControlActuatorRotateHeading.js');

//-----------------------------------------------------------

class WaypointV2AircraftControlActuator {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actuatorIndex = null;
      this.DJIWaypointV2ActionActuatorAircraftControlOperationType = null;
      this.waypointV2AircraftControlActuatorFlying = null;
      this.waypointV2AircraftControlActuatorRotateHeading = null;
    }
    else {
      if (initObj.hasOwnProperty('actuatorIndex')) {
        this.actuatorIndex = initObj.actuatorIndex
      }
      else {
        this.actuatorIndex = 0;
      }
      if (initObj.hasOwnProperty('DJIWaypointV2ActionActuatorAircraftControlOperationType')) {
        this.DJIWaypointV2ActionActuatorAircraftControlOperationType = initObj.DJIWaypointV2ActionActuatorAircraftControlOperationType
      }
      else {
        this.DJIWaypointV2ActionActuatorAircraftControlOperationType = 0;
      }
      if (initObj.hasOwnProperty('waypointV2AircraftControlActuatorFlying')) {
        this.waypointV2AircraftControlActuatorFlying = initObj.waypointV2AircraftControlActuatorFlying
      }
      else {
        this.waypointV2AircraftControlActuatorFlying = new WaypointV2AircraftControlActuatorFlying();
      }
      if (initObj.hasOwnProperty('waypointV2AircraftControlActuatorRotateHeading')) {
        this.waypointV2AircraftControlActuatorRotateHeading = initObj.waypointV2AircraftControlActuatorRotateHeading
      }
      else {
        this.waypointV2AircraftControlActuatorRotateHeading = new WaypointV2AircraftControlActuatorRotateHeading();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2AircraftControlActuator
    // Serialize message field [actuatorIndex]
    bufferOffset = _serializer.uint8(obj.actuatorIndex, buffer, bufferOffset);
    // Serialize message field [DJIWaypointV2ActionActuatorAircraftControlOperationType]
    bufferOffset = _serializer.uint16(obj.DJIWaypointV2ActionActuatorAircraftControlOperationType, buffer, bufferOffset);
    // Serialize message field [waypointV2AircraftControlActuatorFlying]
    bufferOffset = WaypointV2AircraftControlActuatorFlying.serialize(obj.waypointV2AircraftControlActuatorFlying, buffer, bufferOffset);
    // Serialize message field [waypointV2AircraftControlActuatorRotateHeading]
    bufferOffset = WaypointV2AircraftControlActuatorRotateHeading.serialize(obj.waypointV2AircraftControlActuatorRotateHeading, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2AircraftControlActuator
    let len;
    let data = new WaypointV2AircraftControlActuator(null);
    // Deserialize message field [actuatorIndex]
    data.actuatorIndex = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DJIWaypointV2ActionActuatorAircraftControlOperationType]
    data.DJIWaypointV2ActionActuatorAircraftControlOperationType = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [waypointV2AircraftControlActuatorFlying]
    data.waypointV2AircraftControlActuatorFlying = WaypointV2AircraftControlActuatorFlying.deserialize(buffer, bufferOffset);
    // Deserialize message field [waypointV2AircraftControlActuatorRotateHeading]
    data.waypointV2AircraftControlActuatorRotateHeading = WaypointV2AircraftControlActuatorRotateHeading.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2AircraftControlActuator';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7737a1bd220f9cf26070a870330aaaa8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Parameters for aircraft control actuator. It is valid only when the
    # ``DJIWaypointV2Action_DJIWaypointV2Actuator_type`` is
    # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorType_AircraftControl``.
    #contant for DJIWaypointV2ActionActuatorAircraftControlOperationType
    # Rotates the aircraft's yaw.
    uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeRotateYaw = 1
    # Keeps the aircraft stop flying or start flying.
    uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeFlyingControl = 2
    # Unknown
    uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeUnknown = 255
    
    uint8 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related
                          # to camera or gimbal and the connected product has multiple gimbals and cameras.
    uint16 DJIWaypointV2ActionActuatorAircraftControlOperationType 
    WaypointV2AircraftControlActuatorFlying waypointV2AircraftControlActuatorFlying
    WaypointV2AircraftControlActuatorRotateHeading waypointV2AircraftControlActuatorRotateHeading
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorFlying
    # This class defines if the aircraft starts or stops the flight.s.
    uint8  isStartFlying  # Determines the aircraft start flying or stop flying.
                            # ``TRUE`` for the aircraft to start flying.
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading
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
    const resolved = new WaypointV2AircraftControlActuator(null);
    if (msg.actuatorIndex !== undefined) {
      resolved.actuatorIndex = msg.actuatorIndex;
    }
    else {
      resolved.actuatorIndex = 0
    }

    if (msg.DJIWaypointV2ActionActuatorAircraftControlOperationType !== undefined) {
      resolved.DJIWaypointV2ActionActuatorAircraftControlOperationType = msg.DJIWaypointV2ActionActuatorAircraftControlOperationType;
    }
    else {
      resolved.DJIWaypointV2ActionActuatorAircraftControlOperationType = 0
    }

    if (msg.waypointV2AircraftControlActuatorFlying !== undefined) {
      resolved.waypointV2AircraftControlActuatorFlying = WaypointV2AircraftControlActuatorFlying.Resolve(msg.waypointV2AircraftControlActuatorFlying)
    }
    else {
      resolved.waypointV2AircraftControlActuatorFlying = new WaypointV2AircraftControlActuatorFlying()
    }

    if (msg.waypointV2AircraftControlActuatorRotateHeading !== undefined) {
      resolved.waypointV2AircraftControlActuatorRotateHeading = WaypointV2AircraftControlActuatorRotateHeading.Resolve(msg.waypointV2AircraftControlActuatorRotateHeading)
    }
    else {
      resolved.waypointV2AircraftControlActuatorRotateHeading = new WaypointV2AircraftControlActuatorRotateHeading()
    }

    return resolved;
    }
};

// Constants for message
WaypointV2AircraftControlActuator.Constants = {
  DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEROTATEYAW: 1,
  DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEFLYINGCONTROL: 2,
  DJIWAYPOINTV2ACTIONACTUATORAIRCRAFTCONTROLOPERATIONTYPEUNKNOWN: 255,
}

module.exports = WaypointV2AircraftControlActuator;
