// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WaypointV2CameraActuatorFocusParam = require('./WaypointV2CameraActuatorFocusParam.js');
let WaypointV2CameraActuatorFocalLengthParam = require('./WaypointV2CameraActuatorFocalLengthParam.js');

//-----------------------------------------------------------

class WaypointV2CameraActuator {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actuatorIndex = null;
      this.DJIWaypointV2ActionActuatorCameraOperationType = null;
      this.focusParam = null;
      this.zoomParam = null;
    }
    else {
      if (initObj.hasOwnProperty('actuatorIndex')) {
        this.actuatorIndex = initObj.actuatorIndex
      }
      else {
        this.actuatorIndex = 0;
      }
      if (initObj.hasOwnProperty('DJIWaypointV2ActionActuatorCameraOperationType')) {
        this.DJIWaypointV2ActionActuatorCameraOperationType = initObj.DJIWaypointV2ActionActuatorCameraOperationType
      }
      else {
        this.DJIWaypointV2ActionActuatorCameraOperationType = 0;
      }
      if (initObj.hasOwnProperty('focusParam')) {
        this.focusParam = initObj.focusParam
      }
      else {
        this.focusParam = new WaypointV2CameraActuatorFocusParam();
      }
      if (initObj.hasOwnProperty('zoomParam')) {
        this.zoomParam = initObj.zoomParam
      }
      else {
        this.zoomParam = new WaypointV2CameraActuatorFocalLengthParam();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WaypointV2CameraActuator
    // Serialize message field [actuatorIndex]
    bufferOffset = _serializer.uint16(obj.actuatorIndex, buffer, bufferOffset);
    // Serialize message field [DJIWaypointV2ActionActuatorCameraOperationType]
    bufferOffset = _serializer.uint16(obj.DJIWaypointV2ActionActuatorCameraOperationType, buffer, bufferOffset);
    // Serialize message field [focusParam]
    bufferOffset = WaypointV2CameraActuatorFocusParam.serialize(obj.focusParam, buffer, bufferOffset);
    // Serialize message field [zoomParam]
    bufferOffset = WaypointV2CameraActuatorFocalLengthParam.serialize(obj.zoomParam, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WaypointV2CameraActuator
    let len;
    let data = new WaypointV2CameraActuator(null);
    // Deserialize message field [actuatorIndex]
    data.actuatorIndex = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [DJIWaypointV2ActionActuatorCameraOperationType]
    data.DJIWaypointV2ActionActuatorCameraOperationType = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [focusParam]
    data.focusParam = WaypointV2CameraActuatorFocusParam.deserialize(buffer, bufferOffset);
    // Deserialize message field [zoomParam]
    data.zoomParam = WaypointV2CameraActuatorFocalLengthParam.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dji_osdk_ros/WaypointV2CameraActuator';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70a055c9fb9f49f67d8f5bf884fe592d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This determines how the camera will be performed when a waypoint mission is executing.
    #constant for DJIWaypointV2ActionActuatorCameraOperationType
    # Starts to shoot a photo.
    uint16 DJIWaypointV2ActionActuatorCameraOperationTypeTakePhoto = 1
    # Starts to record a video.
    uint16 DJIWaypointV2ActionActuatorCameraOperationTypeStartRecordVideo = 2
    # Stops to record a video.
    uint16 DJIWaypointV2ActionActuatorCameraOperationTypeStopRecordVideo = 3
    # Starts focus.
    uint16 DJIWaypointV2ActionActuatorCameraOperationTypeFocus = 4
    # Starts focal lenth. Only support those support flocal lenth cameras.
    uint16 DJIWaypointV2ActionActuatorCameraOperationTypeFocalLength = 5
    
    uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related
                          # to camera or gimbal and the connected product has multiple gimbals and cameras.
    
    uint16 DJIWaypointV2ActionActuatorCameraOperationType
    # you can only choose one to config.
    WaypointV2CameraActuatorFocusParam focusParam  # The parameters for camera focus operation. It is valid only when
                                           # ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is
                                           # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_Focus``
    WaypointV2CameraActuatorFocalLengthParam zoomParam # The parameters for camera focus length operation. It is valid only when
                                               # ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam_operationType`` is
                                               # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorCameraOperationType_FocalLength``
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2CameraActuatorFocusParam
    # This class defines a camera focus operation for ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
    # The lens focus target point. When the focus mode is auto, the target point
    # is the focal point. When the focus mode is manual, the target point is the zoom
    # out area if the focus assistant is enabled for the manual mode.
    #  The range for x and y is from 0.0 to 1.0. The point [0.0, 0.0] represents the top-left angle of the screen.
      
      float32 x # x axis focus point value.range: [0,1]
      float32 y # y axis focus point value.range: [0,1]
      uint8 regionType #focus type:0:point focus,1:rectangle focus
      float32 width #Normalized focus area width(0,1)
      float32 height # Normalized focus area height(0,1)
      uint8 retryTimes = 1
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2CameraActuatorFocalLengthParam
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
    const resolved = new WaypointV2CameraActuator(null);
    if (msg.actuatorIndex !== undefined) {
      resolved.actuatorIndex = msg.actuatorIndex;
    }
    else {
      resolved.actuatorIndex = 0
    }

    if (msg.DJIWaypointV2ActionActuatorCameraOperationType !== undefined) {
      resolved.DJIWaypointV2ActionActuatorCameraOperationType = msg.DJIWaypointV2ActionActuatorCameraOperationType;
    }
    else {
      resolved.DJIWaypointV2ActionActuatorCameraOperationType = 0
    }

    if (msg.focusParam !== undefined) {
      resolved.focusParam = WaypointV2CameraActuatorFocusParam.Resolve(msg.focusParam)
    }
    else {
      resolved.focusParam = new WaypointV2CameraActuatorFocusParam()
    }

    if (msg.zoomParam !== undefined) {
      resolved.zoomParam = WaypointV2CameraActuatorFocalLengthParam.Resolve(msg.zoomParam)
    }
    else {
      resolved.zoomParam = new WaypointV2CameraActuatorFocalLengthParam()
    }

    return resolved;
    }
};

// Constants for message
WaypointV2CameraActuator.Constants = {
  DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPETAKEPHOTO: 1,
  DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTARTRECORDVIDEO: 2,
  DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPESTOPRECORDVIDEO: 3,
  DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCUS: 4,
  DJIWAYPOINTV2ACTIONACTUATORCAMERAOPERATIONTYPEFOCALLENGTH: 5,
}

module.exports = WaypointV2CameraActuator;
