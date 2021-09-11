// Auto-generated. Do not edit!

// (in-package dji_osdk_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WaypointV2Action = require('../msg/WaypointV2Action.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GenerateWaypointV2ActionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actions = null;
    }
    else {
      if (initObj.hasOwnProperty('actions')) {
        this.actions = initObj.actions
      }
      else {
        this.actions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateWaypointV2ActionRequest
    // Serialize message field [actions]
    // Serialize the length for message field [actions]
    bufferOffset = _serializer.uint32(obj.actions.length, buffer, bufferOffset);
    obj.actions.forEach((val) => {
      bufferOffset = WaypointV2Action.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateWaypointV2ActionRequest
    let len;
    let data = new GenerateWaypointV2ActionRequest(null);
    // Deserialize message field [actions]
    // Deserialize array length for message field [actions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actions[i] = WaypointV2Action.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 68 * object.actions.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GenerateWaypointV2ActionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c4bc97054e3ed2f4b4ffe5d6f4908d17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #request
    WaypointV2Action[] actions
    
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2Action
    # This class represents an action for ``DJIWaypointV2Mission``. It
    # determines how action is performed when a waypoint mission is executed.
    
    # The action will be triggered when action associated executes.
    # The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2AssociateTriggerParam``.
    uint8 DJIWaypointV2ActionTriggerTypeActionAssociated = 2
    
    # The action will be triggered when the aircraft flies from one waypoint to the next.
    # The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2TrajectoryTriggerParam``.
    uint8 DJIWaypointV2ActionTriggerTypeTrajectory = 3
    
    # The action will be triggered when the aircraft flies between two waypoints
    # The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2IntervalTriggerParam``.
    uint8 DJIWaypointV2ActionTriggerTypeInterval = 4
    uint8 DJIWaypointV2ActionTriggerTypeSampleReachPoint = 5
    
    # Unknown
    uint8 DJIWaypointV2ActionTriggerTypeUnknown = 255
    
    #contant for waypointV2ActuatorTriggerType
    # The action will be executed by the camera.
    # The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
    uint8 DJIWaypointV2ActionActuatorTypeCamera = 1
    
    # The action will be executed by the gimbal.
    # The parameters should be defined by ``DJIWaypointV2Action_DJIWaypointV2GimbalActuatorParam``.
    uint8 DJIWaypointV2ActionActuatorTypeGimbal = 2
    
    # The action will executes by control aircraft.
    # The parameters should be setting by ``DJIWaypointV2Action_DJIWaypointV2CameraActuatorParam``.
    uint8 DJIWaypointV2ActionActuatorTypeAircraftControl = 4
    
    # Unknown actuator type.
    uint8 DJIWaypointV2ActionActuatorTypeUnknown = 255
    
    uint16 actionId # The ID of Action.
    
    uint8 waypointV2ActionTriggerType
    uint8 waypointV2ACtionActuatorType
    
    # The trigger of action.You can only choose one to config
    WaypointV2AssociateTrigger waypointV2AssociateTrigger
    WaypointV2IntervalTrigger waypointV2IntervalTrigger
    WaypointV2TrajectoryTrigger waypointV2TrajectoryTrigger
    WaypointV2SampleReachPointTrigger waypointV2SampleReachPointTrigger
    
     # The actuator of action.You can only choose one to config
    WaypointV2CameraActuator waypointV2CameraActuator
    WaypointV2GimbalActuator waypointV2GimbalActuator
    WaypointV2AircraftControlActuator waypointV2AircraftControlActuator
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2AssociateTrigger
    #contant for actionAssociatedType
    uint8 DJIWaypointV2TriggerAssociatedTimingTypeSimultaneously = 1  # The trigger starts simultaneously with the trigger that is associated.
    uint8 DJIWaypointV2TriggerAssociatedTimingTypeAfterFinised = 2    # The trigger starts after the trigger associated has finished.
    uint8 DJIWaypointV2TriggerAssociatedTimingTypeUnknown = 255       # Unkown timing type.
    
    uint8 actionAssociatedType  # The type of assciate trigger.
    uint8 waitingTime           # Waiting time in seconds after ActionTrigger starts.
    uint16 actionIdAssociated # Associated action ID.
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2IntervalTrigger
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
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2TrajectoryTrigger
    # This class represents a trajectory trigger action when should be trigger.
    
    uint16 startIndex # It determines the index of the waypoint at which the trigger starts.
    uint16 endIndex   # It determines the waypoint when the trigger stops.
    
    
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2SampleReachPointTrigger
    uint16 waypointIndex # It determines the index of the waypoint at which the action will be triggered.
    uint16 terminateNum
    
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2CameraActuator
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
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2GimbalActuator
    # gimbal actuator will be performed when a waypoint mission is executed.
    #constant for DJIWaypointV2ActionActuatorGimbalOperationType
    # Rotates the gimbal. Only valid when the trigger type is
    # ``DJIWaypointV2MissionV2_DJIWaypointV2TriggerAssociatedTimingType_ReachPoint``.
    uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeRotateGimbal = 1
    # Unknown
    uint8 DJIWaypointV2ActionActuatorGimbalOperationTypeUnknown = 255
    
    uint8 DJIWaypointV2ActionActuatorGimbalOperationType
    uint16 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related
                          # to camera or gimbal and the connected product has multiple gimbals and cameras.
    WaypointV2GimbalActuatorRotationParam waypointV2GimbalActuatorRotationParam # The operation type of gimbal actuator.
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2GimbalActuatorRotationParam
      int16 x             # gimbal roll angle,  unit: 0.1 deg,range:[-3600, 3600]*/
      int16 y             # gimbal pitch angle, unit: 0.1 deg,range:[-3600, 3600]*/
      int16 z             # gimbal yaw angle,   unit: 0.1 deg,range:[-3600, 3600]*/
      uint8 ctrl_mode     # 0: absolute position control, 1:relative position control*/
      uint8 rollCmdIgnore # 0: roll command normal,  1: roll command ignore*/
      uint8 pitchCmdIgnore# 0: pitch command normal,  1: pitch command ignore*/
      uint8 yawCmdIgnore  # 0: yaw command normal,  1: yaw command ignore*/
      uint8 absYawModeRef # 0: absoluate rotate yaw relative to aircraft,
                          #  1: absoluate rotate yaw relative to North*/
      uint8 duationTime    # 0: rotate time,unit:0.1s, range[1,255]*/
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2AircraftControlActuator
    # Parameters for aircraft control actuator. It is valid only when the
    # ``DJIWaypointV2Action_DJIWaypointV2Actuator_type`` is
    # ``DJIWaypointV2MissionV2_DJIWaypointV2ActionActuatorType_AircraftControl``.
    #contant for DJIWaypointV2ActionActuatorAircraftControlOperationType
    # Rotates the aircraft's yaw.
    uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeRotateYaw = 1
    # Keeps the aircraft stop flying or start flying.
    uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeFlyingControl = 2
    # Unknown
    uint8 DJIWaypointV2ActionActuatorAircraftControlOperationTypeUnknown = 255
    
    uint8 actuatorIndex   # The index of actuator. It is valid when the diagnostics is related
                          # to camera or gimbal and the connected product has multiple gimbals and cameras.
    uint16 DJIWaypointV2ActionActuatorAircraftControlOperationType 
    WaypointV2AircraftControlActuatorFlying waypointV2AircraftControlActuatorFlying
    WaypointV2AircraftControlActuatorRotateHeading waypointV2AircraftControlActuatorRotateHeading
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorFlying
    # This class defines if the aircraft starts or stops the flight.s.
    uint8  isStartFlying  # Determines the aircraft start flying or stop flying.
                            # ``TRUE`` for the aircraft to start flying.
    ================================================================================
    MSG: dji_osdk_ros/WaypointV2AircraftControlActuatorRotateHeading
    # This class defines how the aircraft rotates on the yaw axis.
      uint8 isRelative # Determines the aircraft rotate heading relative.
                         # if ``TRUE``, when the aircraft is rotating, relative to the current angle.
      float32 yaw # Determines the direction how aircraft changes its heading.
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenerateWaypointV2ActionRequest(null);
    if (msg.actions !== undefined) {
      resolved.actions = new Array(msg.actions.length);
      for (let i = 0; i < resolved.actions.length; ++i) {
        resolved.actions[i] = WaypointV2Action.Resolve(msg.actions[i]);
      }
    }
    else {
      resolved.actions = []
    }

    return resolved;
    }
};

class GenerateWaypointV2ActionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateWaypointV2ActionResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateWaypointV2ActionResponse
    let len;
    let data = new GenerateWaypointV2ActionResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dji_osdk_ros/GenerateWaypointV2ActionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #response
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenerateWaypointV2ActionResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: GenerateWaypointV2ActionRequest,
  Response: GenerateWaypointV2ActionResponse,
  md5sum() { return 'ee1e22d538fec9eb15d560136ab324dc'; },
  datatype() { return 'dji_osdk_ros/GenerateWaypointV2Action'; }
};
