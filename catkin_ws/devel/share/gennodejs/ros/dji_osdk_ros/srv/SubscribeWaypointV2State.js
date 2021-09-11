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

class SubscribeWaypointV2StateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable_sub = null;
    }
    else {
      if (initObj.hasOwnProperty('enable_sub')) {
        this.enable_sub = initObj.enable_sub
      }
      else {
        this.enable_sub = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubscribeWaypointV2StateRequest
    // Serialize message field [enable_sub]
    bufferOffset = _serializer.bool(obj.enable_sub, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubscribeWaypointV2StateRequest
    let len;
    let data = new SubscribeWaypointV2StateRequest(null);
    // Deserialize message field [enable_sub]
    data.enable_sub = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/SubscribeWaypointV2StateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e1056e87db1dd20d48af9c70f674311';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    bool enable_sub
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubscribeWaypointV2StateRequest(null);
    if (msg.enable_sub !== undefined) {
      resolved.enable_sub = msg.enable_sub;
    }
    else {
      resolved.enable_sub = false
    }

    return resolved;
    }
};

class SubscribeWaypointV2StateResponse {
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
    // Serializes a message object of type SubscribeWaypointV2StateResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubscribeWaypointV2StateResponse
    let len;
    let data = new SubscribeWaypointV2StateResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/SubscribeWaypointV2StateResponse';
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
    const resolved = new SubscribeWaypointV2StateResponse(null);
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
  Request: SubscribeWaypointV2StateRequest,
  Response: SubscribeWaypointV2StateResponse,
  md5sum() { return 'ea66dd5532fa92b8b44324072cac57bf'; },
  datatype() { return 'dji_osdk_ros/SubscribeWaypointV2State'; }
};
