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

class BumperEvent {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bumper = null;
      this.engaged = null;
    }
    else {
      if (initObj.hasOwnProperty('bumper')) {
        this.bumper = initObj.bumper
      }
      else {
        this.bumper = 0;
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
    // Serializes a message object of type BumperEvent
    // Serialize message field [bumper]
    bufferOffset = _serializer.int8(obj.bumper, buffer, bufferOffset);
    // Serialize message field [engaged]
    bufferOffset = _serializer.bool(obj.engaged, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BumperEvent
    let len;
    let data = new BumperEvent(null);
    // Deserialize message field [bumper]
    data.bumper = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [engaged]
    data.engaged = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'neato/BumperEvent';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ebd9e65af101af002d83ad099e3c4da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Bumper Values 
    int8 LEFT_SIDE = 0          # Left front side bumper switch
    int8 LEFT_FRONT = 1         # Left front bumper switch
    int8 RIGHT_FRONT = 2        # Right front bumper switch
    int8 RIGHT_SIDE = 3         # Right front side bumper switch
    
    int8    bumper              # values defined above
    bool    engaged             # whether or not the bumper is engaged (detecting something) or not
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BumperEvent(null);
    if (msg.bumper !== undefined) {
      resolved.bumper = msg.bumper;
    }
    else {
      resolved.bumper = 0
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
BumperEvent.Constants = {
  LEFT_SIDE: 0,
  LEFT_FRONT: 1,
  RIGHT_FRONT: 2,
  RIGHT_SIDE: 3,
}

module.exports = BumperEvent;
