// Auto-generated. Do not edit!

// (in-package tf_velocity_estimator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Velocity = require('./Velocity.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PosesAndVelocities {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.latest_poses = null;
      this.latest_velocities = null;
    }
    else {
      if (initObj.hasOwnProperty('latest_poses')) {
        this.latest_poses = initObj.latest_poses
      }
      else {
        this.latest_poses = [];
      }
      if (initObj.hasOwnProperty('latest_velocities')) {
        this.latest_velocities = initObj.latest_velocities
      }
      else {
        this.latest_velocities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PosesAndVelocities
    // Serialize message field [latest_poses]
    // Serialize the length for message field [latest_poses]
    bufferOffset = _serializer.uint32(obj.latest_poses.length, buffer, bufferOffset);
    obj.latest_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseStamped.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [latest_velocities]
    // Serialize the length for message field [latest_velocities]
    bufferOffset = _serializer.uint32(obj.latest_velocities.length, buffer, bufferOffset);
    obj.latest_velocities.forEach((val) => {
      bufferOffset = Velocity.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PosesAndVelocities
    let len;
    let data = new PosesAndVelocities(null);
    // Deserialize message field [latest_poses]
    // Deserialize array length for message field [latest_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.latest_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.latest_poses[i] = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [latest_velocities]
    // Deserialize array length for message field [latest_velocities]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.latest_velocities = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.latest_velocities[i] = Velocity.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.latest_poses.forEach((val) => {
      length += geometry_msgs.msg.PoseStamped.getMessageSize(val);
    });
    length += 12 * object.latest_velocities.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tf_velocity_estimator/PosesAndVelocities';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16dbd35e7e0840434e00d0a0200d9f83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped[] latest_poses
    Velocity[] latest_velocities
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    ================================================================================
    MSG: tf_velocity_estimator/Velocity
    float32 vx
    float32 vy
    float32 vz
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PosesAndVelocities(null);
    if (msg.latest_poses !== undefined) {
      resolved.latest_poses = new Array(msg.latest_poses.length);
      for (let i = 0; i < resolved.latest_poses.length; ++i) {
        resolved.latest_poses[i] = geometry_msgs.msg.PoseStamped.Resolve(msg.latest_poses[i]);
      }
    }
    else {
      resolved.latest_poses = []
    }

    if (msg.latest_velocities !== undefined) {
      resolved.latest_velocities = new Array(msg.latest_velocities.length);
      for (let i = 0; i < resolved.latest_velocities.length; ++i) {
        resolved.latest_velocities[i] = Velocity.Resolve(msg.latest_velocities[i]);
      }
    }
    else {
      resolved.latest_velocities = []
    }

    return resolved;
    }
};

module.exports = PosesAndVelocities;
