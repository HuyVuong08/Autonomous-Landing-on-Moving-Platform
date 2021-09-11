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

class ObtainControlAuthorityRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable_obtain = null;
    }
    else {
      if (initObj.hasOwnProperty('enable_obtain')) {
        this.enable_obtain = initObj.enable_obtain
      }
      else {
        this.enable_obtain = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObtainControlAuthorityRequest
    // Serialize message field [enable_obtain]
    bufferOffset = _serializer.bool(obj.enable_obtain, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObtainControlAuthorityRequest
    let len;
    let data = new ObtainControlAuthorityRequest(null);
    // Deserialize message field [enable_obtain]
    data.enable_obtain = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/ObtainControlAuthorityRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8873bb8e9aa86bd4859be5ee2513dd62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    bool enable_obtain
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObtainControlAuthorityRequest(null);
    if (msg.enable_obtain !== undefined) {
      resolved.enable_obtain = msg.enable_obtain;
    }
    else {
      resolved.enable_obtain = false
    }

    return resolved;
    }
};

class ObtainControlAuthorityResponse {
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
    // Serializes a message object of type ObtainControlAuthorityResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObtainControlAuthorityResponse
    let len;
    let data = new ObtainControlAuthorityResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/ObtainControlAuthorityResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #reponse
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObtainControlAuthorityResponse(null);
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
  Request: ObtainControlAuthorityRequest,
  Response: ObtainControlAuthorityResponse,
  md5sum() { return 'e82063bf828152ad11b7c5ce93e9a2dd'; },
  datatype() { return 'dji_osdk_ros/ObtainControlAuthority'; }
};
