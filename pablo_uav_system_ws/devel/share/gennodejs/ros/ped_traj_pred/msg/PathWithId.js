// Auto-generated. Do not edit!

// (in-package ped_traj_pred.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let nav_msgs = _finder('nav_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PathWithId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_id = null;
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('path_id')) {
        this.path_id = initObj.path_id
      }
      else {
        this.path_id = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new nav_msgs.msg.Path();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PathWithId
    // Serialize message field [path_id]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.path_id, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = nav_msgs.msg.Path.serialize(obj.path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PathWithId
    let len;
    let data = new PathWithId(null);
    // Deserialize message field [path_id]
    data.path_id = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = nav_msgs.msg.Path.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += nav_msgs.msg.Path.getMessageSize(object.path);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ped_traj_pred/PathWithId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38de2ffc133e194dbb7924d6ad97cc02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/UInt8 path_id
    nav_msgs/Path path
    
    ================================================================================
    MSG: std_msgs/UInt8
    uint8 data
    
    ================================================================================
    MSG: nav_msgs/Path
    #An array of poses that represents a Path for a robot to follow
    Header header
    geometry_msgs/PoseStamped[] poses
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PathWithId(null);
    if (msg.path_id !== undefined) {
      resolved.path_id = std_msgs.msg.UInt8.Resolve(msg.path_id)
    }
    else {
      resolved.path_id = new std_msgs.msg.UInt8()
    }

    if (msg.path !== undefined) {
      resolved.path = nav_msgs.msg.Path.Resolve(msg.path)
    }
    else {
      resolved.path = new nav_msgs.msg.Path()
    }

    return resolved;
    }
};

module.exports = PathWithId;
