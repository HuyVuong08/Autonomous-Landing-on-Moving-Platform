// Auto-generated. Do not edit!

// (in-package ardrone_autonomy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class navdata_vision_raw {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drone_time = null;
      this.tag = null;
      this.size = null;
      this.vision_tx_raw = null;
      this.vision_ty_raw = null;
      this.vision_tz_raw = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drone_time')) {
        this.drone_time = initObj.drone_time
      }
      else {
        this.drone_time = 0.0;
      }
      if (initObj.hasOwnProperty('tag')) {
        this.tag = initObj.tag
      }
      else {
        this.tag = 0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0;
      }
      if (initObj.hasOwnProperty('vision_tx_raw')) {
        this.vision_tx_raw = initObj.vision_tx_raw
      }
      else {
        this.vision_tx_raw = 0.0;
      }
      if (initObj.hasOwnProperty('vision_ty_raw')) {
        this.vision_ty_raw = initObj.vision_ty_raw
      }
      else {
        this.vision_ty_raw = 0.0;
      }
      if (initObj.hasOwnProperty('vision_tz_raw')) {
        this.vision_tz_raw = initObj.vision_tz_raw
      }
      else {
        this.vision_tz_raw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type navdata_vision_raw
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drone_time]
    bufferOffset = _serializer.float64(obj.drone_time, buffer, bufferOffset);
    // Serialize message field [tag]
    bufferOffset = _serializer.uint16(obj.tag, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.uint16(obj.size, buffer, bufferOffset);
    // Serialize message field [vision_tx_raw]
    bufferOffset = _serializer.float32(obj.vision_tx_raw, buffer, bufferOffset);
    // Serialize message field [vision_ty_raw]
    bufferOffset = _serializer.float32(obj.vision_ty_raw, buffer, bufferOffset);
    // Serialize message field [vision_tz_raw]
    bufferOffset = _serializer.float32(obj.vision_tz_raw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type navdata_vision_raw
    let len;
    let data = new navdata_vision_raw(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drone_time]
    data.drone_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tag]
    data.tag = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [vision_tx_raw]
    data.vision_tx_raw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vision_ty_raw]
    data.vision_ty_raw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vision_tz_raw]
    data.vision_tz_raw = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ardrone_autonomy/navdata_vision_raw';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a656de33995320e1ee5a84370378836e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 drone_time
    uint16 tag
    uint16 size
    float32 vision_tx_raw
    float32 vision_ty_raw
    float32 vision_tz_raw
    
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
    const resolved = new navdata_vision_raw(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drone_time !== undefined) {
      resolved.drone_time = msg.drone_time;
    }
    else {
      resolved.drone_time = 0.0
    }

    if (msg.tag !== undefined) {
      resolved.tag = msg.tag;
    }
    else {
      resolved.tag = 0
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0
    }

    if (msg.vision_tx_raw !== undefined) {
      resolved.vision_tx_raw = msg.vision_tx_raw;
    }
    else {
      resolved.vision_tx_raw = 0.0
    }

    if (msg.vision_ty_raw !== undefined) {
      resolved.vision_ty_raw = msg.vision_ty_raw;
    }
    else {
      resolved.vision_ty_raw = 0.0
    }

    if (msg.vision_tz_raw !== undefined) {
      resolved.vision_tz_raw = msg.vision_tz_raw;
    }
    else {
      resolved.vision_tz_raw = 0.0
    }

    return resolved;
    }
};

module.exports = navdata_vision_raw;
