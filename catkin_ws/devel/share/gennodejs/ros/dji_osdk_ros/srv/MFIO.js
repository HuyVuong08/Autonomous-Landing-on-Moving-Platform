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

class MFIORequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.mode = null;
      this.block = null;
      this.channel = null;
      this.init_on_time_us = null;
      this.gpio_value = null;
      this.pwm_freq = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('block')) {
        this.block = initObj.block
      }
      else {
        this.block = false;
      }
      if (initObj.hasOwnProperty('channel')) {
        this.channel = initObj.channel
      }
      else {
        this.channel = 0;
      }
      if (initObj.hasOwnProperty('init_on_time_us')) {
        this.init_on_time_us = initObj.init_on_time_us
      }
      else {
        this.init_on_time_us = 0;
      }
      if (initObj.hasOwnProperty('gpio_value')) {
        this.gpio_value = initObj.gpio_value
      }
      else {
        this.gpio_value = 0;
      }
      if (initObj.hasOwnProperty('pwm_freq')) {
        this.pwm_freq = initObj.pwm_freq
      }
      else {
        this.pwm_freq = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MFIORequest
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [block]
    bufferOffset = _serializer.bool(obj.block, buffer, bufferOffset);
    // Serialize message field [channel]
    bufferOffset = _serializer.uint8(obj.channel, buffer, bufferOffset);
    // Serialize message field [init_on_time_us]
    bufferOffset = _serializer.uint32(obj.init_on_time_us, buffer, bufferOffset);
    // Serialize message field [gpio_value]
    bufferOffset = _serializer.uint8(obj.gpio_value, buffer, bufferOffset);
    // Serialize message field [pwm_freq]
    bufferOffset = _serializer.uint16(obj.pwm_freq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MFIORequest
    let len;
    let data = new MFIORequest(null);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [block]
    data.block = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [channel]
    data.channel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [init_on_time_us]
    data.init_on_time_us = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [gpio_value]
    data.gpio_value = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pwm_freq]
    data.pwm_freq = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/MFIORequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5a9f232a9ad94c1663aa32b8a91f6ba6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #constant for mode
    uint8 MODE_PWM_OUT  = 0
    #uint8 MODE_PWM_IN  = 1 #PWM_IN is not functioning correctly
    uint8 MODE_GPIO_OUT = 2
    uint8 MODE_GPIO_IN  = 3
    uint8 MODE_ADC      = 4
    
    uint8 CHANNEL_0 = 0
    uint8 CHANNEL_1 = 1
    uint8 CHANNEL_2 = 2
    uint8 CHANNEL_3 = 3
    uint8 CHANNEL_4 = 4
    uint8 CHANNEL_5 = 5
    uint8 CHANNEL_6 = 6
    uint8 CHANNEL_7 = 7
    
    uint8 TURN_ON   = 0     # Control PWM on/off
    uint8 TURN_OFF  = 1
    
    #request
    uint8 action            # Turn On/Off, 0: ON    1: OFF
    uint8 mode              # see constants above for possible modes
    bool block              # Block/Non-block Ouput
    uint8 channel           # 0-7
    uint32 init_on_time_us  # on time for pwm duty cycle in micro-seconds, 0-20000(0%-100%)
    uint8 gpio_value        # 0: Low, 1:High just for GPIO_OUT
    uint16 pwm_freq         # set pwm frequency in Hz
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MFIORequest(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.block !== undefined) {
      resolved.block = msg.block;
    }
    else {
      resolved.block = false
    }

    if (msg.channel !== undefined) {
      resolved.channel = msg.channel;
    }
    else {
      resolved.channel = 0
    }

    if (msg.init_on_time_us !== undefined) {
      resolved.init_on_time_us = msg.init_on_time_us;
    }
    else {
      resolved.init_on_time_us = 0
    }

    if (msg.gpio_value !== undefined) {
      resolved.gpio_value = msg.gpio_value;
    }
    else {
      resolved.gpio_value = 0
    }

    if (msg.pwm_freq !== undefined) {
      resolved.pwm_freq = msg.pwm_freq;
    }
    else {
      resolved.pwm_freq = 0
    }

    return resolved;
    }
};

// Constants for message
MFIORequest.Constants = {
  MODE_PWM_OUT: 0,
  MODE_GPIO_OUT: 2,
  MODE_GPIO_IN: 3,
  MODE_ADC: 4,
  CHANNEL_0: 0,
  CHANNEL_1: 1,
  CHANNEL_2: 2,
  CHANNEL_3: 3,
  CHANNEL_4: 4,
  CHANNEL_5: 5,
  CHANNEL_6: 6,
  CHANNEL_7: 7,
  TURN_ON: 0,
  TURN_OFF: 1,
}

class MFIOResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.read_value = null;
    }
    else {
      if (initObj.hasOwnProperty('read_value')) {
        this.read_value = initObj.read_value
      }
      else {
        this.read_value = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MFIOResponse
    // Serialize message field [read_value]
    bufferOffset = _serializer.uint32(obj.read_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MFIOResponse
    let len;
    let data = new MFIOResponse(null);
    // Deserialize message field [read_value]
    data.read_value = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/MFIOResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '043ff3265f9d1adda151364edd27337c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 read_value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MFIOResponse(null);
    if (msg.read_value !== undefined) {
      resolved.read_value = msg.read_value;
    }
    else {
      resolved.read_value = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: MFIORequest,
  Response: MFIOResponse,
  md5sum() { return 'd8aa2bbf4f5e4dc56bf0203ba284e596'; },
  datatype() { return 'dji_osdk_ros/MFIO'; }
};
