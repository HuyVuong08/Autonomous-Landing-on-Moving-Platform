// Auto-generated. Do not edit!

// (in-package ardrone_as.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class ArdroneFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lastImage = null;
    }
    else {
      if (initObj.hasOwnProperty('lastImage')) {
        this.lastImage = initObj.lastImage
      }
      else {
        this.lastImage = new sensor_msgs.msg.CompressedImage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArdroneFeedback
    // Serialize message field [lastImage]
    bufferOffset = sensor_msgs.msg.CompressedImage.serialize(obj.lastImage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArdroneFeedback
    let len;
    let data = new ArdroneFeedback(null);
    // Deserialize message field [lastImage]
    data.lastImage = sensor_msgs.msg.CompressedImage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.CompressedImage.getMessageSize(object.lastImage);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ardrone_as/ArdroneFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b7da50a022bc1e4f64b32f363fda187';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    sensor_msgs/CompressedImage lastImage  # the last image taken
    
    
    ================================================================================
    MSG: sensor_msgs/CompressedImage
    # This message contains a compressed image
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
    
    string format        # Specifies the format of the data
                         #   Acceptable values:
                         #     jpeg, png
    uint8[] data         # Compressed image buffer
    
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
    const resolved = new ArdroneFeedback(null);
    if (msg.lastImage !== undefined) {
      resolved.lastImage = sensor_msgs.msg.CompressedImage.Resolve(msg.lastImage)
    }
    else {
      resolved.lastImage = new sensor_msgs.msg.CompressedImage()
    }

    return resolved;
    }
};

module.exports = ArdroneFeedback;
