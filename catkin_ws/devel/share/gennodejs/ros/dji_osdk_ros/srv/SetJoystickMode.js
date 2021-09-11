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

class SetJoystickModeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.horizontal_mode = null;
      this.vertical_mode = null;
      this.yaw_mode = null;
      this.horizontal_coordinate = null;
      this.stable_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('horizontal_mode')) {
        this.horizontal_mode = initObj.horizontal_mode
      }
      else {
        this.horizontal_mode = 0;
      }
      if (initObj.hasOwnProperty('vertical_mode')) {
        this.vertical_mode = initObj.vertical_mode
      }
      else {
        this.vertical_mode = 0;
      }
      if (initObj.hasOwnProperty('yaw_mode')) {
        this.yaw_mode = initObj.yaw_mode
      }
      else {
        this.yaw_mode = 0;
      }
      if (initObj.hasOwnProperty('horizontal_coordinate')) {
        this.horizontal_coordinate = initObj.horizontal_coordinate
      }
      else {
        this.horizontal_coordinate = 0;
      }
      if (initObj.hasOwnProperty('stable_mode')) {
        this.stable_mode = initObj.stable_mode
      }
      else {
        this.stable_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJoystickModeRequest
    // Serialize message field [horizontal_mode]
    bufferOffset = _serializer.uint8(obj.horizontal_mode, buffer, bufferOffset);
    // Serialize message field [vertical_mode]
    bufferOffset = _serializer.uint8(obj.vertical_mode, buffer, bufferOffset);
    // Serialize message field [yaw_mode]
    bufferOffset = _serializer.uint8(obj.yaw_mode, buffer, bufferOffset);
    // Serialize message field [horizontal_coordinate]
    bufferOffset = _serializer.uint8(obj.horizontal_coordinate, buffer, bufferOffset);
    // Serialize message field [stable_mode]
    bufferOffset = _serializer.uint8(obj.stable_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJoystickModeRequest
    let len;
    let data = new SetJoystickModeRequest(null);
    // Deserialize message field [horizontal_mode]
    data.horizontal_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vertical_mode]
    data.vertical_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [yaw_mode]
    data.yaw_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [horizontal_coordinate]
    data.horizontal_coordinate = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stable_mode]
    data.stable_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/SetJoystickModeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ceb88ab65abad757e3f8c63ab37f9f7d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    #contant for horizontal_mode
    # Set the control-mode to control pitch & roll angle of the vehicle.
    # Need to be referenced to either the ground or body frame 
    # by HorizontalCoordinate setting.
    # Limit: 35 degree
    uint8 HORIZONTAL_ANGLE = 0
    # Set the control-mode to control horizontal vehicle velocities.
    # Need to be referenced to either the ground or body frame by
    # HorizontalCoordinate setting.
    # Limit: 30 m/s
    uint8 HORIZONTAL_VELOCITY = 1
    # Set the control-mode to control position offsets of pitch & roll directions
    # Need to be referenced to either the ground r body frame by HorizontalCoordinate setting.
    # Limit: N/A
    uint8 HORIZONTAL_POSITION = 2
    # Set the control-mode to control rate of change of the vehicle's attitude
    # Need to be referenced to either the ground or body frame by HorizontalCoordinate setting.
    # Limit: 150.0 deg/s
    uint8 HORIZONTAL_ANGULAR_RATE = 3
    
    #contant for vertical_mode
    # Set the control-mode to control the vertical
    # speed of UAV, upward is positive
    # Limit: -5 to 5 m/s
    uint8 VERTICAL_VELOCITY = 0
    # Set the control-mode to control the height of UAV
    # Limit: 0 to 120 m
    uint8 VERTICAL_POSITION = 1
    # Set the control-mode to directly control the thrust
    # Range: 0% to 100%
    uint8 VERTICAL_THRUST = 2
    
    #contant for yaw_mode
    # Set the control-mode to control yaw angle.
    # Yaw angle is referenced to the ground frame.
    # In this control mode, Ground frame is enforeced in Autopilot.
    uint8 YAW_ANGLE = 0
    # Set the control-mode to control yaw angular velocity.
    # Same reference frame as YAW_ANGLE.
    # Limite: 150 deg/s
    uint8 YAW_RATE = 1
    #contant for horizontal_coordinate
    # Set the x-y of ground frame as the horizontal frame (NEU) */
    uint8 HORIZONTAL_GROUND = 0
    # Set the x-y of body frame as the horizontal frame (FRU) */
    uint8 HORIZONTAL_BODY = 1
    #contant for stable_mode
    # Disable the stable mode
    uint8 STABLE_DISABLE = 0
    # Enable the stable mode
    uint8 STABLE_ENABLE = 1
    
    # Only when the GPS signal is good (health_flag >=3)，horizontal
    # position control (HORIZONTAL_POSITION) related control modes can be used.
    # Only when GPS signal is good (health_flag >=3)，or when AdvancedSensing
    # system is working properly with Autopilot，horizontal velocity control
    # （HORIZONTAL_VELOCITY）related control modes can be used.
    uint8 horizontal_mode
    
    # We suggest developers do not use VERTICAL_POSITION control mode indoor
    # when your UAV flight height is larger than 3 meters.
    # This is because in indoor environments, barometer can be inaccurate, and
    # the vertical controller may fail to keep the height of the UAV.
    uint8 vertical_mode
    uint8 yaw_mode
    uint8 horizontal_coordinate
    
    # Only works in Horizontal velocity control mode
    # In velocity stable mode, drone will brake and hover at one position once
    # the input command is zero.
    # Drone will try to stay in position once in hover state.
    # In velocity non-stable mode, drone will follow the velocity command and
    # doesn’t hover when the command is zero.
    # That’s to say drone will drift with the wind.
    uint8 stable_mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJoystickModeRequest(null);
    if (msg.horizontal_mode !== undefined) {
      resolved.horizontal_mode = msg.horizontal_mode;
    }
    else {
      resolved.horizontal_mode = 0
    }

    if (msg.vertical_mode !== undefined) {
      resolved.vertical_mode = msg.vertical_mode;
    }
    else {
      resolved.vertical_mode = 0
    }

    if (msg.yaw_mode !== undefined) {
      resolved.yaw_mode = msg.yaw_mode;
    }
    else {
      resolved.yaw_mode = 0
    }

    if (msg.horizontal_coordinate !== undefined) {
      resolved.horizontal_coordinate = msg.horizontal_coordinate;
    }
    else {
      resolved.horizontal_coordinate = 0
    }

    if (msg.stable_mode !== undefined) {
      resolved.stable_mode = msg.stable_mode;
    }
    else {
      resolved.stable_mode = 0
    }

    return resolved;
    }
};

// Constants for message
SetJoystickModeRequest.Constants = {
  HORIZONTAL_ANGLE: 0,
  HORIZONTAL_VELOCITY: 1,
  HORIZONTAL_POSITION: 2,
  HORIZONTAL_ANGULAR_RATE: 3,
  VERTICAL_VELOCITY: 0,
  VERTICAL_POSITION: 1,
  VERTICAL_THRUST: 2,
  YAW_ANGLE: 0,
  YAW_RATE: 1,
  HORIZONTAL_GROUND: 0,
  HORIZONTAL_BODY: 1,
  STABLE_DISABLE: 0,
  STABLE_ENABLE: 1,
}

class SetJoystickModeResponse {
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
    // Serializes a message object of type SetJoystickModeResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJoystickModeResponse
    let len;
    let data = new SetJoystickModeResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/SetJoystickModeResponse';
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
    const resolved = new SetJoystickModeResponse(null);
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
  Request: SetJoystickModeRequest,
  Response: SetJoystickModeResponse,
  md5sum() { return 'c55e9c9164f1a634e9bf9721aa4cb437'; },
  datatype() { return 'dji_osdk_ros/SetJoystickMode'; }
};
