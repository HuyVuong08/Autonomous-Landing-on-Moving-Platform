
"use strict";

let MissionWaypointTask = require('./MissionWaypointTask.js');
let MissionWaypointAction = require('./MissionWaypointAction.js');
let WaypointV2Action = require('./WaypointV2Action.js');
let BatteryState = require('./BatteryState.js');
let WaypointV2CameraActuatorFocalLengthParam = require('./WaypointV2CameraActuatorFocalLengthParam.js');
let WaypointV2CameraActuatorFocusParam = require('./WaypointV2CameraActuatorFocusParam.js');
let BatteryWholeInfo = require('./BatteryWholeInfo.js');
let WaypointV2AircraftControlActuatorFlying = require('./WaypointV2AircraftControlActuatorFlying.js');
let VOPosition = require('./VOPosition.js');
let MissionHotpointTask = require('./MissionHotpointTask.js');
let SmartBatteryState = require('./SmartBatteryState.js');
let WaypointV2CameraActuator = require('./WaypointV2CameraActuator.js');
let Waypoint = require('./Waypoint.js');
let WaypointV2AircraftControlActuatorRotateHeading = require('./WaypointV2AircraftControlActuatorRotateHeading.js');
let JoystickParams = require('./JoystickParams.js');
let MobileData = require('./MobileData.js');
let PayloadData = require('./PayloadData.js');
let WaypointV2 = require('./WaypointV2.js');
let SmartBatteryDynamicInfo = require('./SmartBatteryDynamicInfo.js');
let WaypointV2InitSetting = require('./WaypointV2InitSetting.js');
let WaypointV2GimbalActuatorRotationParam = require('./WaypointV2GimbalActuatorRotationParam.js');
let HMSPushInfo = require('./HMSPushInfo.js');
let WaypointV2Config = require('./WaypointV2Config.js');
let FlightAnomaly = require('./FlightAnomaly.js');
let WaypointV2TrajectoryTrigger = require('./WaypointV2TrajectoryTrigger.js');
let GPSUTC = require('./GPSUTC.js');
let Gimbal = require('./Gimbal.js');
let WaypointList = require('./WaypointList.js');
let WaypointV2MissionEventPush = require('./WaypointV2MissionEventPush.js');
let WaypointV2IntervalTrigger = require('./WaypointV2IntervalTrigger.js');
let WaypointV2MissionStatePush = require('./WaypointV2MissionStatePush.js');
let WaypointV2GimbalActuator = require('./WaypointV2GimbalActuator.js');
let WaypointV2ReachpointTrigger = require('./WaypointV2ReachpointTrigger.js');
let MissionWaypoint = require('./MissionWaypoint.js');
let WaypointV2AssociateTrigger = require('./WaypointV2AssociateTrigger.js');
let WaypointV2AircraftControlActuator = require('./WaypointV2AircraftControlActuator.js');
let WaypointV2SampleReachPointTrigger = require('./WaypointV2SampleReachPointTrigger.js');
let FCTimeInUTC = require('./FCTimeInUTC.js');

module.exports = {
  MissionWaypointTask: MissionWaypointTask,
  MissionWaypointAction: MissionWaypointAction,
  WaypointV2Action: WaypointV2Action,
  BatteryState: BatteryState,
  WaypointV2CameraActuatorFocalLengthParam: WaypointV2CameraActuatorFocalLengthParam,
  WaypointV2CameraActuatorFocusParam: WaypointV2CameraActuatorFocusParam,
  BatteryWholeInfo: BatteryWholeInfo,
  WaypointV2AircraftControlActuatorFlying: WaypointV2AircraftControlActuatorFlying,
  VOPosition: VOPosition,
  MissionHotpointTask: MissionHotpointTask,
  SmartBatteryState: SmartBatteryState,
  WaypointV2CameraActuator: WaypointV2CameraActuator,
  Waypoint: Waypoint,
  WaypointV2AircraftControlActuatorRotateHeading: WaypointV2AircraftControlActuatorRotateHeading,
  JoystickParams: JoystickParams,
  MobileData: MobileData,
  PayloadData: PayloadData,
  WaypointV2: WaypointV2,
  SmartBatteryDynamicInfo: SmartBatteryDynamicInfo,
  WaypointV2InitSetting: WaypointV2InitSetting,
  WaypointV2GimbalActuatorRotationParam: WaypointV2GimbalActuatorRotationParam,
  HMSPushInfo: HMSPushInfo,
  WaypointV2Config: WaypointV2Config,
  FlightAnomaly: FlightAnomaly,
  WaypointV2TrajectoryTrigger: WaypointV2TrajectoryTrigger,
  GPSUTC: GPSUTC,
  Gimbal: Gimbal,
  WaypointList: WaypointList,
  WaypointV2MissionEventPush: WaypointV2MissionEventPush,
  WaypointV2IntervalTrigger: WaypointV2IntervalTrigger,
  WaypointV2MissionStatePush: WaypointV2MissionStatePush,
  WaypointV2GimbalActuator: WaypointV2GimbalActuator,
  WaypointV2ReachpointTrigger: WaypointV2ReachpointTrigger,
  MissionWaypoint: MissionWaypoint,
  WaypointV2AssociateTrigger: WaypointV2AssociateTrigger,
  WaypointV2AircraftControlActuator: WaypointV2AircraftControlActuator,
  WaypointV2SampleReachPointTrigger: WaypointV2SampleReachPointTrigger,
  FCTimeInUTC: FCTimeInUTC,
};
