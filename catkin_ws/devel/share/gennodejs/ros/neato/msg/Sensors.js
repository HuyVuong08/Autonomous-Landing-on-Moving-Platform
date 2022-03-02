// Auto-generated. Do not edit!

// (in-package neato.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Sensors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.WallSensorInMM = null;
      this.BatteryVoltageInmV = null;
      this.LeftDropInMM = null;
      this.RightDropInMM = null;
      this.LeftMagSensor = null;
      this.RightMagSensor = null;
      this.UIButtonInmV = null;
      this.VacuumCurrentInmA = null;
      this.ChargeVoltInmV = null;
      this.BatteryTemp0InC = null;
      this.BatteryTemp1InC = null;
      this.CurrentInmA = null;
      this.SideBrushCurrentInmA = null;
      this.VoltageReferenceInmV = null;
      this.AccelXInmG = null;
      this.AccelYInmG = null;
      this.AccelZInmG = null;
      this.SNSR_DC_JACK_CONNECT = null;
      this.SNSR_DUSTBIN_IS_IN = null;
      this.SNSR_LEFT_WHEEL_EXTENDED = null;
      this.SNSR_RIGHT_WHEEL_EXTENDED = null;
      this.LSIDEBIT = null;
      this.LFRONTBIT = null;
      this.RSIDEBIT = null;
      this.RFRONTBIT = null;
    }
    else {
      if (initObj.hasOwnProperty('WallSensorInMM')) {
        this.WallSensorInMM = initObj.WallSensorInMM
      }
      else {
        this.WallSensorInMM = 0;
      }
      if (initObj.hasOwnProperty('BatteryVoltageInmV')) {
        this.BatteryVoltageInmV = initObj.BatteryVoltageInmV
      }
      else {
        this.BatteryVoltageInmV = 0;
      }
      if (initObj.hasOwnProperty('LeftDropInMM')) {
        this.LeftDropInMM = initObj.LeftDropInMM
      }
      else {
        this.LeftDropInMM = 0;
      }
      if (initObj.hasOwnProperty('RightDropInMM')) {
        this.RightDropInMM = initObj.RightDropInMM
      }
      else {
        this.RightDropInMM = 0;
      }
      if (initObj.hasOwnProperty('LeftMagSensor')) {
        this.LeftMagSensor = initObj.LeftMagSensor
      }
      else {
        this.LeftMagSensor = 0;
      }
      if (initObj.hasOwnProperty('RightMagSensor')) {
        this.RightMagSensor = initObj.RightMagSensor
      }
      else {
        this.RightMagSensor = 0;
      }
      if (initObj.hasOwnProperty('UIButtonInmV')) {
        this.UIButtonInmV = initObj.UIButtonInmV
      }
      else {
        this.UIButtonInmV = 0;
      }
      if (initObj.hasOwnProperty('VacuumCurrentInmA')) {
        this.VacuumCurrentInmA = initObj.VacuumCurrentInmA
      }
      else {
        this.VacuumCurrentInmA = 0;
      }
      if (initObj.hasOwnProperty('ChargeVoltInmV')) {
        this.ChargeVoltInmV = initObj.ChargeVoltInmV
      }
      else {
        this.ChargeVoltInmV = 0;
      }
      if (initObj.hasOwnProperty('BatteryTemp0InC')) {
        this.BatteryTemp0InC = initObj.BatteryTemp0InC
      }
      else {
        this.BatteryTemp0InC = 0;
      }
      if (initObj.hasOwnProperty('BatteryTemp1InC')) {
        this.BatteryTemp1InC = initObj.BatteryTemp1InC
      }
      else {
        this.BatteryTemp1InC = 0;
      }
      if (initObj.hasOwnProperty('CurrentInmA')) {
        this.CurrentInmA = initObj.CurrentInmA
      }
      else {
        this.CurrentInmA = 0;
      }
      if (initObj.hasOwnProperty('SideBrushCurrentInmA')) {
        this.SideBrushCurrentInmA = initObj.SideBrushCurrentInmA
      }
      else {
        this.SideBrushCurrentInmA = 0;
      }
      if (initObj.hasOwnProperty('VoltageReferenceInmV')) {
        this.VoltageReferenceInmV = initObj.VoltageReferenceInmV
      }
      else {
        this.VoltageReferenceInmV = 0;
      }
      if (initObj.hasOwnProperty('AccelXInmG')) {
        this.AccelXInmG = initObj.AccelXInmG
      }
      else {
        this.AccelXInmG = 0;
      }
      if (initObj.hasOwnProperty('AccelYInmG')) {
        this.AccelYInmG = initObj.AccelYInmG
      }
      else {
        this.AccelYInmG = 0;
      }
      if (initObj.hasOwnProperty('AccelZInmG')) {
        this.AccelZInmG = initObj.AccelZInmG
      }
      else {
        this.AccelZInmG = 0;
      }
      if (initObj.hasOwnProperty('SNSR_DC_JACK_CONNECT')) {
        this.SNSR_DC_JACK_CONNECT = initObj.SNSR_DC_JACK_CONNECT
      }
      else {
        this.SNSR_DC_JACK_CONNECT = false;
      }
      if (initObj.hasOwnProperty('SNSR_DUSTBIN_IS_IN')) {
        this.SNSR_DUSTBIN_IS_IN = initObj.SNSR_DUSTBIN_IS_IN
      }
      else {
        this.SNSR_DUSTBIN_IS_IN = false;
      }
      if (initObj.hasOwnProperty('SNSR_LEFT_WHEEL_EXTENDED')) {
        this.SNSR_LEFT_WHEEL_EXTENDED = initObj.SNSR_LEFT_WHEEL_EXTENDED
      }
      else {
        this.SNSR_LEFT_WHEEL_EXTENDED = false;
      }
      if (initObj.hasOwnProperty('SNSR_RIGHT_WHEEL_EXTENDED')) {
        this.SNSR_RIGHT_WHEEL_EXTENDED = initObj.SNSR_RIGHT_WHEEL_EXTENDED
      }
      else {
        this.SNSR_RIGHT_WHEEL_EXTENDED = false;
      }
      if (initObj.hasOwnProperty('LSIDEBIT')) {
        this.LSIDEBIT = initObj.LSIDEBIT
      }
      else {
        this.LSIDEBIT = false;
      }
      if (initObj.hasOwnProperty('LFRONTBIT')) {
        this.LFRONTBIT = initObj.LFRONTBIT
      }
      else {
        this.LFRONTBIT = false;
      }
      if (initObj.hasOwnProperty('RSIDEBIT')) {
        this.RSIDEBIT = initObj.RSIDEBIT
      }
      else {
        this.RSIDEBIT = false;
      }
      if (initObj.hasOwnProperty('RFRONTBIT')) {
        this.RFRONTBIT = initObj.RFRONTBIT
      }
      else {
        this.RFRONTBIT = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sensors
    // Serialize message field [WallSensorInMM]
    bufferOffset = _serializer.uint16(obj.WallSensorInMM, buffer, bufferOffset);
    // Serialize message field [BatteryVoltageInmV]
    bufferOffset = _serializer.uint16(obj.BatteryVoltageInmV, buffer, bufferOffset);
    // Serialize message field [LeftDropInMM]
    bufferOffset = _serializer.uint16(obj.LeftDropInMM, buffer, bufferOffset);
    // Serialize message field [RightDropInMM]
    bufferOffset = _serializer.uint16(obj.RightDropInMM, buffer, bufferOffset);
    // Serialize message field [LeftMagSensor]
    bufferOffset = _serializer.int16(obj.LeftMagSensor, buffer, bufferOffset);
    // Serialize message field [RightMagSensor]
    bufferOffset = _serializer.int16(obj.RightMagSensor, buffer, bufferOffset);
    // Serialize message field [UIButtonInmV]
    bufferOffset = _serializer.int16(obj.UIButtonInmV, buffer, bufferOffset);
    // Serialize message field [VacuumCurrentInmA]
    bufferOffset = _serializer.int16(obj.VacuumCurrentInmA, buffer, bufferOffset);
    // Serialize message field [ChargeVoltInmV]
    bufferOffset = _serializer.uint16(obj.ChargeVoltInmV, buffer, bufferOffset);
    // Serialize message field [BatteryTemp0InC]
    bufferOffset = _serializer.int8(obj.BatteryTemp0InC, buffer, bufferOffset);
    // Serialize message field [BatteryTemp1InC]
    bufferOffset = _serializer.int8(obj.BatteryTemp1InC, buffer, bufferOffset);
    // Serialize message field [CurrentInmA]
    bufferOffset = _serializer.int16(obj.CurrentInmA, buffer, bufferOffset);
    // Serialize message field [SideBrushCurrentInmA]
    bufferOffset = _serializer.int16(obj.SideBrushCurrentInmA, buffer, bufferOffset);
    // Serialize message field [VoltageReferenceInmV]
    bufferOffset = _serializer.int16(obj.VoltageReferenceInmV, buffer, bufferOffset);
    // Serialize message field [AccelXInmG]
    bufferOffset = _serializer.int16(obj.AccelXInmG, buffer, bufferOffset);
    // Serialize message field [AccelYInmG]
    bufferOffset = _serializer.int16(obj.AccelYInmG, buffer, bufferOffset);
    // Serialize message field [AccelZInmG]
    bufferOffset = _serializer.int16(obj.AccelZInmG, buffer, bufferOffset);
    // Serialize message field [SNSR_DC_JACK_CONNECT]
    bufferOffset = _serializer.bool(obj.SNSR_DC_JACK_CONNECT, buffer, bufferOffset);
    // Serialize message field [SNSR_DUSTBIN_IS_IN]
    bufferOffset = _serializer.bool(obj.SNSR_DUSTBIN_IS_IN, buffer, bufferOffset);
    // Serialize message field [SNSR_LEFT_WHEEL_EXTENDED]
    bufferOffset = _serializer.bool(obj.SNSR_LEFT_WHEEL_EXTENDED, buffer, bufferOffset);
    // Serialize message field [SNSR_RIGHT_WHEEL_EXTENDED]
    bufferOffset = _serializer.bool(obj.SNSR_RIGHT_WHEEL_EXTENDED, buffer, bufferOffset);
    // Serialize message field [LSIDEBIT]
    bufferOffset = _serializer.bool(obj.LSIDEBIT, buffer, bufferOffset);
    // Serialize message field [LFRONTBIT]
    bufferOffset = _serializer.bool(obj.LFRONTBIT, buffer, bufferOffset);
    // Serialize message field [RSIDEBIT]
    bufferOffset = _serializer.bool(obj.RSIDEBIT, buffer, bufferOffset);
    // Serialize message field [RFRONTBIT]
    bufferOffset = _serializer.bool(obj.RFRONTBIT, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sensors
    let len;
    let data = new Sensors(null);
    // Deserialize message field [WallSensorInMM]
    data.WallSensorInMM = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [BatteryVoltageInmV]
    data.BatteryVoltageInmV = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LeftDropInMM]
    data.LeftDropInMM = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RightDropInMM]
    data.RightDropInMM = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LeftMagSensor]
    data.LeftMagSensor = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [RightMagSensor]
    data.RightMagSensor = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [UIButtonInmV]
    data.UIButtonInmV = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [VacuumCurrentInmA]
    data.VacuumCurrentInmA = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ChargeVoltInmV]
    data.ChargeVoltInmV = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [BatteryTemp0InC]
    data.BatteryTemp0InC = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [BatteryTemp1InC]
    data.BatteryTemp1InC = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [CurrentInmA]
    data.CurrentInmA = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [SideBrushCurrentInmA]
    data.SideBrushCurrentInmA = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [VoltageReferenceInmV]
    data.VoltageReferenceInmV = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [AccelXInmG]
    data.AccelXInmG = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [AccelYInmG]
    data.AccelYInmG = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [AccelZInmG]
    data.AccelZInmG = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [SNSR_DC_JACK_CONNECT]
    data.SNSR_DC_JACK_CONNECT = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [SNSR_DUSTBIN_IS_IN]
    data.SNSR_DUSTBIN_IS_IN = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [SNSR_LEFT_WHEEL_EXTENDED]
    data.SNSR_LEFT_WHEEL_EXTENDED = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [SNSR_RIGHT_WHEEL_EXTENDED]
    data.SNSR_RIGHT_WHEEL_EXTENDED = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [LSIDEBIT]
    data.LSIDEBIT = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [LFRONTBIT]
    data.LFRONTBIT = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [RSIDEBIT]
    data.RSIDEBIT = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [RFRONTBIT]
    data.RFRONTBIT = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'neato/Sensors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1c7bd2ddcb3d5f803e6c67b3919c35f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    #Analog Sensors
    uint16  WallSensorInMM              #Example: 34585
    uint16  BatteryVoltageInmV          #Example: 16348
    uint16  LeftDropInMM                #Example: 0
    uint16  RightDropInMM               #Example: 0
    int16   LeftMagSensor               #Example: 32768
    int16   RightMagSensor              #Example: 32768
    int16   UIButtonInmV                #Example: 3330
    int16   VacuumCurrentInmA           #Example: 0
    uint16  ChargeVoltInmV              #Example: 24024
    int8    BatteryTemp0InC             #Example: 30
    int8    BatteryTemp1InC             #Example: 28
    int16   CurrentInmA                 #Example: 40
    int16   SideBrushCurrentInmA        #Example: 0
    int16   VoltageReferenceInmV        #Example: 1225
    int16   AccelXInmG                  #Example: 36
    int16   AccelYInmG                  #Example: 16
    int16   AccelZInmG                  #Example: 1008
    # the ones below are not supported due to lack of compatibility
    # int8    XTemp0InC                   #Example: 28
    # int8    XTemp1InC                   #Example: 28
    # int8    NotConnected1               #Example: 0 - unknown
    # int8    NotConnected2               #Example: 0 - unknown
    # int8    NotConnected3               #Example: 0 - unknown
    
    #Digital sensors
    bool    SNSR_DC_JACK_CONNECT        #Example: 0 
    bool    SNSR_DUSTBIN_IS_IN          #Example: 1
    bool    SNSR_LEFT_WHEEL_EXTENDED    #Example: 0
    bool    SNSR_RIGHT_WHEEL_EXTENDED   #Example: 0
    bool    LSIDEBIT                    #Example: 0 
    bool    LFRONTBIT                   #Example: 0
    bool    RSIDEBIT                    #Example: 0 
    bool    RFRONTBIT                   #Example: 0 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sensors(null);
    if (msg.WallSensorInMM !== undefined) {
      resolved.WallSensorInMM = msg.WallSensorInMM;
    }
    else {
      resolved.WallSensorInMM = 0
    }

    if (msg.BatteryVoltageInmV !== undefined) {
      resolved.BatteryVoltageInmV = msg.BatteryVoltageInmV;
    }
    else {
      resolved.BatteryVoltageInmV = 0
    }

    if (msg.LeftDropInMM !== undefined) {
      resolved.LeftDropInMM = msg.LeftDropInMM;
    }
    else {
      resolved.LeftDropInMM = 0
    }

    if (msg.RightDropInMM !== undefined) {
      resolved.RightDropInMM = msg.RightDropInMM;
    }
    else {
      resolved.RightDropInMM = 0
    }

    if (msg.LeftMagSensor !== undefined) {
      resolved.LeftMagSensor = msg.LeftMagSensor;
    }
    else {
      resolved.LeftMagSensor = 0
    }

    if (msg.RightMagSensor !== undefined) {
      resolved.RightMagSensor = msg.RightMagSensor;
    }
    else {
      resolved.RightMagSensor = 0
    }

    if (msg.UIButtonInmV !== undefined) {
      resolved.UIButtonInmV = msg.UIButtonInmV;
    }
    else {
      resolved.UIButtonInmV = 0
    }

    if (msg.VacuumCurrentInmA !== undefined) {
      resolved.VacuumCurrentInmA = msg.VacuumCurrentInmA;
    }
    else {
      resolved.VacuumCurrentInmA = 0
    }

    if (msg.ChargeVoltInmV !== undefined) {
      resolved.ChargeVoltInmV = msg.ChargeVoltInmV;
    }
    else {
      resolved.ChargeVoltInmV = 0
    }

    if (msg.BatteryTemp0InC !== undefined) {
      resolved.BatteryTemp0InC = msg.BatteryTemp0InC;
    }
    else {
      resolved.BatteryTemp0InC = 0
    }

    if (msg.BatteryTemp1InC !== undefined) {
      resolved.BatteryTemp1InC = msg.BatteryTemp1InC;
    }
    else {
      resolved.BatteryTemp1InC = 0
    }

    if (msg.CurrentInmA !== undefined) {
      resolved.CurrentInmA = msg.CurrentInmA;
    }
    else {
      resolved.CurrentInmA = 0
    }

    if (msg.SideBrushCurrentInmA !== undefined) {
      resolved.SideBrushCurrentInmA = msg.SideBrushCurrentInmA;
    }
    else {
      resolved.SideBrushCurrentInmA = 0
    }

    if (msg.VoltageReferenceInmV !== undefined) {
      resolved.VoltageReferenceInmV = msg.VoltageReferenceInmV;
    }
    else {
      resolved.VoltageReferenceInmV = 0
    }

    if (msg.AccelXInmG !== undefined) {
      resolved.AccelXInmG = msg.AccelXInmG;
    }
    else {
      resolved.AccelXInmG = 0
    }

    if (msg.AccelYInmG !== undefined) {
      resolved.AccelYInmG = msg.AccelYInmG;
    }
    else {
      resolved.AccelYInmG = 0
    }

    if (msg.AccelZInmG !== undefined) {
      resolved.AccelZInmG = msg.AccelZInmG;
    }
    else {
      resolved.AccelZInmG = 0
    }

    if (msg.SNSR_DC_JACK_CONNECT !== undefined) {
      resolved.SNSR_DC_JACK_CONNECT = msg.SNSR_DC_JACK_CONNECT;
    }
    else {
      resolved.SNSR_DC_JACK_CONNECT = false
    }

    if (msg.SNSR_DUSTBIN_IS_IN !== undefined) {
      resolved.SNSR_DUSTBIN_IS_IN = msg.SNSR_DUSTBIN_IS_IN;
    }
    else {
      resolved.SNSR_DUSTBIN_IS_IN = false
    }

    if (msg.SNSR_LEFT_WHEEL_EXTENDED !== undefined) {
      resolved.SNSR_LEFT_WHEEL_EXTENDED = msg.SNSR_LEFT_WHEEL_EXTENDED;
    }
    else {
      resolved.SNSR_LEFT_WHEEL_EXTENDED = false
    }

    if (msg.SNSR_RIGHT_WHEEL_EXTENDED !== undefined) {
      resolved.SNSR_RIGHT_WHEEL_EXTENDED = msg.SNSR_RIGHT_WHEEL_EXTENDED;
    }
    else {
      resolved.SNSR_RIGHT_WHEEL_EXTENDED = false
    }

    if (msg.LSIDEBIT !== undefined) {
      resolved.LSIDEBIT = msg.LSIDEBIT;
    }
    else {
      resolved.LSIDEBIT = false
    }

    if (msg.LFRONTBIT !== undefined) {
      resolved.LFRONTBIT = msg.LFRONTBIT;
    }
    else {
      resolved.LFRONTBIT = false
    }

    if (msg.RSIDEBIT !== undefined) {
      resolved.RSIDEBIT = msg.RSIDEBIT;
    }
    else {
      resolved.RSIDEBIT = false
    }

    if (msg.RFRONTBIT !== undefined) {
      resolved.RFRONTBIT = msg.RFRONTBIT;
    }
    else {
      resolved.RFRONTBIT = false
    }

    return resolved;
    }
};

module.exports = Sensors;
