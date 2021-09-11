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

class WaypointV2IntervalTrigger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.startIndex = null;
      this.interval = null;
      this.actionIntervalType = null;
    }
    else {
      if (initObj.hasOwnProperty('startIndex')) {
        this.startIndex = initObj.startIndex
      }
      else {
        this.startIndex = 0;
      }
      if (initObj.hasOwnProperty('interval')) {
        this.interval = initObj.interval
      }
      else {
        this.interval = 0;
      }
      if (initObj.hasOwnProperty('actionIntervalType')) {
        this.actionIntervalType = initObj.actionIntervalType
      }
      else {
        this.actionIntervalType = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2IntervalTrigger
    // Serialize message field [startIndex]
    bufferOffset = _serializer.uint16(obj.startIndex, buffer, bufferOffset);
    // Serialize message field [interval]
    bufferOffset = _serializer.uint16(obj.interval, buffer, bufferOffset);
    // Serialize message field [actionIntervalType]
    bufferOffset = _serializer.uint8(obj.actionIntervalType, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2IntervalTrigger
    let len;
    let data = new WaypointV2IntervalTrigger(null);
    // Deserialize message field [startIndex]
    data.startIndex = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [interval]
    data.interval = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [actionIntervalType]
    data.actionIntervalType = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2IntervalTrigger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a737930d3da7d390475e0a354220c42';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #constant for actionIntervalType
    uint8 DJIWaypointV2ActionIntervalTypeTime     = 1  # The action will be repeated after a particular period of time.
    uint8 DJIWaypointV2ActionIntervalTypeDistance = 2  # The action will be repeated after a particular distance.
    uint8 DJIWaypointV2ActionIntervalTypeUnknown  = 255 # Unknown action trigger type.
    
    uint16 startIndex # It determines the index of the waypoint at which the trigger starts.
    # If the  ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType``
    # is ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Time``
    # The time interval in seconds when two action are executed as the aircraft moves
    # from the current waypoint to the next waypoint.
    # If the ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam_actionIntervalType`` is
    # ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_Distance``
    # The distance interval in meters when two action are executed as the aircraft moves
    # from the current waypoint to the next waypoint.
    uint16 interval
    uint8 actionIntervalType # The type of interval trigger.
                             # See ``DJIWaypointV2MissionV2_DJIWaypointV2ActionIntervalType``.
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2IntervalTrigger(null);
    if (msg.startIndex !== undefined) {
      resolved.startIndex = msg.startIndex;
    }
    else {
      resolved.startIndex = 0
    }

    if (msg.interval !== undefined) {
      resolved.interval = msg.interval;
    }
    else {
      resolved.interval = 0
    }

    if (msg.actionIntervalType !== undefined) {
      resolved.actionIntervalType = msg.actionIntervalType;
    }
    else {
      resolved.actionIntervalType = 0
    }

    return resolved;
    }
};

// Constants for message
WaypointV2IntervalTrigger.Constants = {
  DJIWAYPOINTV2ACTIONINTERVALTYPETIME: 1,
  DJIWAYPOINTV2ACTIONINTERVALTYPEDISTANCE: 2,
  DJIWAYPOINTV2ACTIONINTERVALTYPEUNKNOWN: 255,
}

module.exports = WaypointV2IntervalTrigger;
