// Auto-generated. Do not edit!

// (in-package ardrone_autonomy.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class FlightAnimRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FlightAnimRequest
    // Serialize message field [type]
    bufferOffset = _serializer.uint8(obj.type, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.uint32(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FlightAnimRequest
    let len;
    let data = new FlightAnimRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ardrone_autonomy/FlightAnimRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1babbb93af7ae39105f8dba705eb91ac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 0 : ARDRONE_ANIM_PHI_M30_DEG
    # 1 : ARDRONE_ANIM_PHI_30_DEG
    # 2 : ARDRONE_ANIM_THETA_M30_DEG
    # 3 : ARDRONE_ANIM_THETA_30_DEG
    # 4 : ARDRONE_ANIM_THETA_20DEG_YAW_200DEG
    # 5 : ARDRONE_ANIM_THETA_20DEG_YAW_M200DEG
    # 6 : ARDRONE_ANIM_TURNAROUND
    # 7 : ARDRONE_ANIM_TURNAROUND_GODOWN
    # 8 : ARDRONE_ANIM_YAW_SHAKE
    # 9 : ARDRONE_ANIM_YAW_DANCE
    # 10: ARDRONE_ANIM_PHI_DANCE
    # 11: ARDRONE_ANIM_THETA_DANCE
    # 12: ARDRONE_ANIM_VZ_DANCE
    # 13: ARDRONE_ANIM_WAVE
    # 14: ARDRONE_ANIM_PHI_THETA_MIXED
    # 15: ARDRONE_ANIM_DOUBLE_PHI_THETA_MIXED
    # 16: ARDRONE_ANIM_FLIP_AHEAD
    # 17: ARDRONE_ANIM_FLIP_BEHIND
    # 18: ARDRONE_ANIM_FLIP_LEFT
    # 19: ARDRONE_ANIM_FLIP_RIGHT
    
    uint8 type
    
    # In Milliseconds
    # 0 For Default Duration (Recommended)
    uint32 duration
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FlightAnimRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    return resolved;
    }
};

class FlightAnimResponse {
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
    // Serializes a message object of type FlightAnimResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FlightAnimResponse
    let len;
    let data = new FlightAnimResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ardrone_autonomy/FlightAnimResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FlightAnimResponse(null);
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
  Request: FlightAnimRequest,
  Response: FlightAnimResponse,
  md5sum() { return 'b67c0059d7339761bcde13f61a58763f'; },
  datatype() { return 'ardrone_autonomy/FlightAnim'; }
};
