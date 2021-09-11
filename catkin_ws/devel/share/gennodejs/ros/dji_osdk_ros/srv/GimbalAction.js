// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GimbalActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_reset = null;
      this.payload_index = null;
      this.rotationMode = null;
      this.pitch = null;
      this.roll = null;
      this.yaw = null;
      this.time = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_reset')) {
        this.is_reset = initObj.is_reset
      }
      else {
        this.is_reset = false;
      }
      if (initObj.hasOwnProperty('payload_index')) {
        this.payload_index = initObj.payload_index
      }
      else {
        this.payload_index = 0;
      }
      if (initObj.hasOwnProperty('rotationMode')) {
        this.rotationMode = initObj.rotationMode
      }
      else {
        this.rotationMode = 0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GimbalActionRequest
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_reset]
    bufferOffset = _serializer.bool(obj.is_reset, buffer, bufferOffset);
    // Serialize message field [payload_index]
    bufferOffset = _serializer.uint8(obj.payload_index, buffer, bufferOffset);
    // Serialize message field [rotationMode]
    bufferOffset = _serializer.uint8(obj.rotationMode, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float32(obj.roll, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [time]
    bufferOffset = _serializer.float64(obj.time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GimbalActionRequest
    let len;
    let data = new GimbalActionRequest(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_reset]
    data.is_reset = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [payload_index]
    data.payload_index = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rotationMode]
    data.rotationMode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time]
    data.time = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GimbalActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd81c7fa815423435db4054a0191ed73e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    # ts is the time it takes to achieve the desired angle,
    # so the shorter the time, the faster the gimbal rotates.
    
    #request
    bool is_reset
    
    uint8 payload_index
    
    # rotation cooradiration
    # 0 = execute angle command based on the previously set reference point
    # 1 = execute angle command based on the current point
    uint8 rotationMode
    
    # pitch angle in degree, unit : deg
    float32 pitch
    
    # roll angle in degree, unit : deg
    float32 roll
    
    # yaw angle in degree, unit : deg
    float32 yaw
    
    #execution time, unit : second
    float64 time
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GimbalActionRequest(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_reset !== undefined) {
      resolved.is_reset = msg.is_reset;
    }
    else {
      resolved.is_reset = false
    }

    if (msg.payload_index !== undefined) {
      resolved.payload_index = msg.payload_index;
    }
    else {
      resolved.payload_index = 0
    }

    if (msg.rotationMode !== undefined) {
      resolved.rotationMode = msg.rotationMode;
    }
    else {
      resolved.rotationMode = 0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = 0.0
    }

    return resolved;
    }
};

class GimbalActionResponse {
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
    // Serializes a message object of type GimbalActionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GimbalActionResponse
    let len;
    let data = new GimbalActionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GimbalActionResponse';
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
    const resolved = new GimbalActionResponse(null);
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
  Request: GimbalActionRequest,
  Response: GimbalActionResponse,
  md5sum() { return '66e203fa5d29e6cbb072590bb5dd1da2'; },
  datatype() { return 'dji_osdk_ros/GimbalAction'; }
};
