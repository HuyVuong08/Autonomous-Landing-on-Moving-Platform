// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WaypointV2CameraActuatorFocalLengthParam {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.focalLength = null;
    }
    else {
      if (initObj.hasOwnProperty('focalLength')) {
        this.focalLength = initObj.focalLength
      }
      else {
        this.focalLength = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2CameraActuatorFocalLengthParam
    // Serialize message field [focalLength]
    bufferOffset = _serializer.uint16(obj.focalLength, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2CameraActuatorFocalLengthParam
    let len;
    let data = new WaypointV2CameraActuatorFocalLengthParam(null);
    // Deserialize message field [focalLength]
    data.focalLength = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99efc948569c8b4d6dd86f463dafe65a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This class defines a camera focal length operation for  ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
    # Focal length of zoom lens. Valid range is [``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``,
    # ``DJICamera_DJICameraOpticalZoomSpec_minFocalLength``] and must be a multiple of
    # ``DJICamera_DJICameraOpticalZoomSpec_focalLengthStep``.
    #  Only support by those camera ``DJICamera_CameraSettings_isOpticalZoomSupported`` return ``TRUE``.
      uint16 focalLength
    
      uint8 retryTimes = 1
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2CameraActuatorFocalLengthParam(null);
    if (msg.focalLength !== undefined) {
      resolved.focalLength = msg.focalLength;
    }
    else {
      resolved.focalLength = 0
    }

    return resolved;
    }
};

// Constants for message
WaypointV2CameraActuatorFocalLengthParam.Constants = {
  RETRYTIMES: 1,
}

module.exports = WaypointV2CameraActuatorFocalLengthParam;
