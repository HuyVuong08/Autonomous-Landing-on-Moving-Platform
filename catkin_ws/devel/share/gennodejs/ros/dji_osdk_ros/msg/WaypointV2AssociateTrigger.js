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

class WaypointV2AssociateTrigger {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actionAssociatedType = null;
      this.waitingTime = null;
      this.actionIdAssociated = null;
    }
    else {
      if (initObj.hasOwnProperty('actionAssociatedType')) {
        this.actionAssociatedType = initObj.actionAssociatedType
      }
      else {
        this.actionAssociatedType = 0;
      }
      if (initObj.hasOwnProperty('waitingTime')) {
        this.waitingTime = initObj.waitingTime
      }
      else {
        this.waitingTime = 0;
      }
      if (initObj.hasOwnProperty('actionIdAssociated')) {
        this.actionIdAssociated = initObj.actionIdAssociated
      }
      else {
        this.actionIdAssociated = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2AssociateTrigger
    // Serialize message field [actionAssociatedType]
    bufferOffset = _serializer.uint8(obj.actionAssociatedType, buffer, bufferOffset);
    // Serialize message field [waitingTime]
    bufferOffset = _serializer.uint8(obj.waitingTime, buffer, bufferOffset);
    // Serialize message field [actionIdAssociated]
    bufferOffset = _serializer.uint16(obj.actionIdAssociated, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2AssociateTrigger
    let len;
    let data = new WaypointV2AssociateTrigger(null);
    // Deserialize message field [actionAssociatedType]
    data.actionAssociatedType = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [waitingTime]
    data.waitingTime = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [actionIdAssociated]
    data.actionIdAssociated = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2AssociateTrigger';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd18cc058d8c8b002f1666933510bde3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #contant for actionAssociatedType
    uint8 DJIWaypointV2TriggerAssociatedTimingTypeSimultaneously = 1  # The trigger starts simultaneously with the trigger that is associated.
    uint8 DJIWaypointV2TriggerAssociatedTimingTypeAfterFinised = 2    # The trigger starts after the trigger associated has finished.
    uint8 DJIWaypointV2TriggerAssociatedTimingTypeUnknown = 255       # Unkown timing type.
    
    uint8 actionAssociatedType  # The type of assciate trigger.
    uint8 waitingTime           # Waiting time in seconds after ActionTrigger starts.
    uint16 actionIdAssociated # Associated action ID.
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WaypointV2AssociateTrigger(null);
    if (msg.actionAssociatedType !== undefined) {
      resolved.actionAssociatedType = msg.actionAssociatedType;
    }
    else {
      resolved.actionAssociatedType = 0
    }

    if (msg.waitingTime !== undefined) {
      resolved.waitingTime = msg.waitingTime;
    }
    else {
      resolved.waitingTime = 0
    }

    if (msg.actionIdAssociated !== undefined) {
      resolved.actionIdAssociated = msg.actionIdAssociated;
    }
    else {
      resolved.actionIdAssociated = 0
    }

    return resolved;
    }
};

// Constants for message
WaypointV2AssociateTrigger.Constants = {
  DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPESIMULTANEOUSLY: 1,
  DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEAFTERFINISED: 2,
  DJIWAYPOINTV2TRIGGERASSOCIATEDTIMINGTYPEUNKNOWN: 255,
}

module.exports = WaypointV2AssociateTrigger;
