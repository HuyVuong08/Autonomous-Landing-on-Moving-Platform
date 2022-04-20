// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LabeledPointInImage = require('./LabeledPointInImage.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Marker {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.size = null;
      this.labeledPointsInImage = null;
      this.is3dReconstructed = null;
      this.pose = null;
      this.confidence = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = [];
      }
      if (initObj.hasOwnProperty('labeledPointsInImage')) {
        this.labeledPointsInImage = initObj.labeledPointsInImage
      }
      else {
        this.labeledPointsInImage = [];
      }
      if (initObj.hasOwnProperty('is3dReconstructed')) {
        this.is3dReconstructed = initObj.is3dReconstructed
      }
      else {
        this.is3dReconstructed = false;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Marker
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _arraySerializer.float32(obj.size, buffer, bufferOffset, null);
    // Serialize message field [labeledPointsInImage]
    // Serialize the length for message field [labeledPointsInImage]
    bufferOffset = _serializer.uint32(obj.labeledPointsInImage.length, buffer, bufferOffset);
    obj.labeledPointsInImage.forEach((val) => {
      bufferOffset = LabeledPointInImage.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is3dReconstructed]
    bufferOffset = _serializer.bool(obj.is3dReconstructed, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseWithCovariance.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [confidence]
    bufferOffset = _serializer.float64(obj.confidence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Marker
    let len;
    let data = new Marker(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [labeledPointsInImage]
    // Deserialize array length for message field [labeledPointsInImage]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.labeledPointsInImage = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.labeledPointsInImage[i] = LabeledPointInImage.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is3dReconstructed]
    data.is3dReconstructed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.id.length;
    length += 4 * object.size.length;
    object.labeledPointsInImage.forEach((val) => {
      length += LabeledPointInImage.getMessageSize(val);
    });
    return length + 365;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/Marker';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da8deb44ff01a0f90906148027b06f04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header. Needed for the frame_id
    Header header
    
    # Id of the visual marker
    string id
    
    # Size of the visual marker if available
    float32[] size
    
    # Points of the visual marker in the Image
    perception_msgs/LabeledPointInImage[] labeledPointsInImage
    
    # Flag for the 3D reconstruction
    bool is3dReconstructed
    
    # Pose of the Visual Marker wrt Camera if calibration file is available
    geometry_msgs/PoseWithCovariance pose
    
    # Confidence in the detection. TODO
    float64 confidence
    
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
    MSG: perception_msgs/LabeledPointInImage
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
    
    ================================================================================
    MSG: geometry_msgs/PoseWithCovariance
    # This represents a pose in free space with uncertainty.
    
    Pose pose
    
    # Row-major representation of the 6x6 covariance matrix
    # The orientation parameters use a fixed-axis representation.
    # In order, the parameters are:
    # (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
    float64[36] covariance
    
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
    const resolved = new Marker(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = []
    }

    if (msg.labeledPointsInImage !== undefined) {
      resolved.labeledPointsInImage = new Array(msg.labeledPointsInImage.length);
      for (let i = 0; i < resolved.labeledPointsInImage.length; ++i) {
        resolved.labeledPointsInImage[i] = LabeledPointInImage.Resolve(msg.labeledPointsInImage[i]);
      }
    }
    else {
      resolved.labeledPointsInImage = []
    }

    if (msg.is3dReconstructed !== undefined) {
      resolved.is3dReconstructed = msg.is3dReconstructed;
    }
    else {
      resolved.is3dReconstructed = false
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseWithCovariance.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseWithCovariance()
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    return resolved;
    }
};

module.exports = Marker;
