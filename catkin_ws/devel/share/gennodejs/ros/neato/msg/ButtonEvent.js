// Auto-generated. Do not edit!

// (in-package neato.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ButtonEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.button = null;
      this.engaged = null;
    }
    else {
      if (initObj.hasOwnProperty('button')) {
        this.button = initObj.button
      }
      else {
        this.button = 0;
      }
      if (initObj.hasOwnProperty('engaged')) {
        this.engaged = initObj.engaged
      }
      else {
        this.engaged = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ButtonEvent
    // Serialize message field [button]
    bufferOffset = _serializer.int8(obj.button, buffer, bufferOffset);
    // Serialize message field [engaged]
    bufferOffset = _serializer.bool(obj.engaged, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ButtonEvent
    let len;
    let data = new ButtonEvent(null);
    // Deserialize message field [button]
    data.button = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [engaged]
    data.engaged = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'neato/ButtonEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c591d569eb4b1b2f2f2100469f94eec5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Button Values
    int8 START_BUTTON = 0   # Start button
    int8 SOFT_BUTTON = 1    # Soft button
    int8 BACK_BUTTON = 2    # Back button
    int8 DOWN_BUTTON = 3    # Down button
    int8 UP_BUTTON = 4      # Up button
    
    int8    button          # expected values above
    bool    engaged         # whether or not the button is down
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ButtonEvent(null);
    if (msg.button !== undefined) {
      resolved.button = msg.button;
    }
    else {
      resolved.button = 0
    }

    if (msg.engaged !== undefined) {
      resolved.engaged = msg.engaged;
    }
    else {
      resolved.engaged = false
    }

    return resolved;
    }
};

// Constants for message
ButtonEvent.Constants = {
  START_BUTTON: 0,
  SOFT_BUTTON: 1,
  BACK_BUTTON: 2,
  DOWN_BUTTON: 3,
  UP_BUTTON: 4,
}

module.exports = ButtonEvent;
