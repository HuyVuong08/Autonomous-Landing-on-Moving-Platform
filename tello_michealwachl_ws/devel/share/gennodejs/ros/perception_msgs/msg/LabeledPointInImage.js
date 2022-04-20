// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PointInImage = require('./PointInImage.js');

//-----------------------------------------------------------

class LabeledPointInImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.pointsInImage = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = '';
      }
      if (initObj.hasOwnProperty('pointsInImage')) {
        this.pointsInImage = initObj.pointsInImage
      }
      else {
        this.pointsInImage = new PointInImage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LabeledPointInImage
    // Serialize message field [value]
    bufferOffset = _serializer.string(obj.value, buffer, bufferOffset);
    // Serialize message field [pointsInImage]
    bufferOffset = PointInImage.serialize(obj.pointsInImage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LabeledPointInImage
    let len;
    let data = new LabeledPointInImage(null);
    // Deserialize message field [value]
    data.value = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pointsInImage]
    data.pointsInImage = PointInImage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.value.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/LabeledPointInImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e84abf3e87ce958922be1dad2422c33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # string value. Empty if there is no label
    string value
    # Point with x,y coordinates of the point in the image
    PointInImage pointsInImage
    
    ================================================================================
    MSG: perception_msgs/PointInImage
    # x coordinate of the point in the image
    float32 x
    # y coordinate of the poitn in the image
    float32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LabeledPointInImage(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = ''
    }

    if (msg.pointsInImage !== undefined) {
      resolved.pointsInImage = PointInImage.Resolve(msg.pointsInImage)
    }
    else {
      resolved.pointsInImage = new PointInImage()
    }

    return resolved;
    }
};

module.exports = LabeledPointInImage;
