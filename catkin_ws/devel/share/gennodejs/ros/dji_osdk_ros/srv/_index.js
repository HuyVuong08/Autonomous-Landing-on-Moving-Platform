
"use strict";

let GetGoHomeAltitude = require('./GetGoHomeAltitude.js')
let CameraAperture = require('./CameraAperture.js')
let GetGlobalCruisespeed = require('./GetGlobalCruisespeed.js')
let SendMobileData = require('./SendMobileData.js')
let GetDroneType = require('./GetDroneType.js')
let SetGlobalCruisespeed = require('./SetGlobalCruisespeed.js')
let SubscribeWaypointV2State = require('./SubscribeWaypointV2State.js')
let MissionHpUpdateYawRate = require('./MissionHpUpdateYawRate.js')
let CameraZoomCtrl = require('./CameraZoomCtrl.js')
let KillSwitch = require('./KillSwitch.js')
let SetAvoidEnable = require('./SetAvoidEnable.js')
let CameraStartShootAEBPhoto = require('./CameraStartShootAEBPhoto.js')
let CameraTapZoomPoint = require('./CameraTapZoomPoint.js')
let GetSingleBatteryDynamicInfo = require('./GetSingleBatteryDynamicInfo.js')
let MissionHpResetYaw = require('./MissionHpResetYaw.js')
let Activation = require('./Activation.js')
let CameraEV = require('./CameraEV.js')
let InitWaypointV2Setting = require('./InitWaypointV2Setting.js')
let MFIOConfig = require('./MFIOConfig.js')
let SetHomePoint = require('./SetHomePoint.js')
let CameraSetZoomPara = require('./CameraSetZoomPara.js')
let MFIO = require('./MFIO.js')
let UploadWaypointV2Action = require('./UploadWaypointV2Action.js')
let GimbalAction = require('./GimbalAction.js')
let MissionWpUpload = require('./MissionWpUpload.js')
let DroneArmControl = require('./DroneArmControl.js')
let CameraStartShootIntervalPhoto = require('./CameraStartShootIntervalPhoto.js')
let MissionHpUpdateRadius = require('./MissionHpUpdateRadius.js')
let MissionWpGetSpeed = require('./MissionWpGetSpeed.js')
let SetCurrentAircraftLocAsHomePoint = require('./SetCurrentAircraftLocAsHomePoint.js')
let CameraRecordVideoAction = require('./CameraRecordVideoAction.js')
let CameraFocusPoint = require('./CameraFocusPoint.js')
let SetupCameraH264 = require('./SetupCameraH264.js')
let SetLocalPosRef = require('./SetLocalPosRef.js')
let StartWaypointV2Mission = require('./StartWaypointV2Mission.js')
let MissionWpAction = require('./MissionWpAction.js')
let MissionHpUpload = require('./MissionHpUpload.js')
let MissionHpGetInfo = require('./MissionHpGetInfo.js')
let QueryDroneVersion = require('./QueryDroneVersion.js')
let ObtainControlAuthority = require('./ObtainControlAuthority.js')
let SetGoHomeAltitude = require('./SetGoHomeAltitude.js')
let MissionStatus = require('./MissionStatus.js')
let MissionWpSetSpeed = require('./MissionWpSetSpeed.js')
let PauseWaypointV2Mission = require('./PauseWaypointV2Mission.js')
let StopWaypointV2Mission = require('./StopWaypointV2Mission.js')
let MFIOSetValue = require('./MFIOSetValue.js')
let GetHMSData = require('./GetHMSData.js')
let DownloadWaypointV2Mission = require('./DownloadWaypointV2Mission.js')
let JoystickAction = require('./JoystickAction.js')
let SubscribeWaypointV2Event = require('./SubscribeWaypointV2Event.js')
let CameraStartShootBurstPhoto = require('./CameraStartShootBurstPhoto.js')
let CameraStopShootPhoto = require('./CameraStopShootPhoto.js')
let SetupCameraStream = require('./SetupCameraStream.js')
let CameraISO = require('./CameraISO.js')
let MissionHpAction = require('./MissionHpAction.js')
let CameraStartShootSinglePhoto = require('./CameraStartShootSinglePhoto.js')
let SetHardSync = require('./SetHardSync.js')
let GetAvoidEnable = require('./GetAvoidEnable.js')
let UploadWaypointV2Mission = require('./UploadWaypointV2Mission.js')
let CameraAction = require('./CameraAction.js')
let EmergencyBrake = require('./EmergencyBrake.js')
let FlightTaskControl = require('./FlightTaskControl.js')
let GetM300StereoParams = require('./GetM300StereoParams.js')
let MissionWpGetInfo = require('./MissionWpGetInfo.js')
let ResumeWaypointV2Mission = require('./ResumeWaypointV2Mission.js')
let CameraShutterSpeed = require('./CameraShutterSpeed.js')
let SendPayloadData = require('./SendPayloadData.js')
let StereoVGASubscription = require('./StereoVGASubscription.js')
let Stereo240pSubscription = require('./Stereo240pSubscription.js')
let SDKControlAuthority = require('./SDKControlAuthority.js')
let GenerateWaypointV2Action = require('./GenerateWaypointV2Action.js')
let StereoDepthSubscription = require('./StereoDepthSubscription.js')
let GetWholeBatteryInfo = require('./GetWholeBatteryInfo.js')
let DroneTaskControl = require('./DroneTaskControl.js')
let SetJoystickMode = require('./SetJoystickMode.js')

module.exports = {
  GetGoHomeAltitude: GetGoHomeAltitude,
  CameraAperture: CameraAperture,
  GetGlobalCruisespeed: GetGlobalCruisespeed,
  SendMobileData: SendMobileData,
  GetDroneType: GetDroneType,
  SetGlobalCruisespeed: SetGlobalCruisespeed,
  SubscribeWaypointV2State: SubscribeWaypointV2State,
  MissionHpUpdateYawRate: MissionHpUpdateYawRate,
  CameraZoomCtrl: CameraZoomCtrl,
  KillSwitch: KillSwitch,
  SetAvoidEnable: SetAvoidEnable,
  CameraStartShootAEBPhoto: CameraStartShootAEBPhoto,
  CameraTapZoomPoint: CameraTapZoomPoint,
  GetSingleBatteryDynamicInfo: GetSingleBatteryDynamicInfo,
  MissionHpResetYaw: MissionHpResetYaw,
  Activation: Activation,
  CameraEV: CameraEV,
  InitWaypointV2Setting: InitWaypointV2Setting,
  MFIOConfig: MFIOConfig,
  SetHomePoint: SetHomePoint,
  CameraSetZoomPara: CameraSetZoomPara,
  MFIO: MFIO,
  UploadWaypointV2Action: UploadWaypointV2Action,
  GimbalAction: GimbalAction,
  MissionWpUpload: MissionWpUpload,
  DroneArmControl: DroneArmControl,
  CameraStartShootIntervalPhoto: CameraStartShootIntervalPhoto,
  MissionHpUpdateRadius: MissionHpUpdateRadius,
  MissionWpGetSpeed: MissionWpGetSpeed,
  SetCurrentAircraftLocAsHomePoint: SetCurrentAircraftLocAsHomePoint,
  CameraRecordVideoAction: CameraRecordVideoAction,
  CameraFocusPoint: CameraFocusPoint,
  SetupCameraH264: SetupCameraH264,
  SetLocalPosRef: SetLocalPosRef,
  StartWaypointV2Mission: StartWaypointV2Mission,
  MissionWpAction: MissionWpAction,
  MissionHpUpload: MissionHpUpload,
  MissionHpGetInfo: MissionHpGetInfo,
  QueryDroneVersion: QueryDroneVersion,
  ObtainControlAuthority: ObtainControlAuthority,
  SetGoHomeAltitude: SetGoHomeAltitude,
  MissionStatus: MissionStatus,
  MissionWpSetSpeed: MissionWpSetSpeed,
  PauseWaypointV2Mission: PauseWaypointV2Mission,
  StopWaypointV2Mission: StopWaypointV2Mission,
  MFIOSetValue: MFIOSetValue,
  GetHMSData: GetHMSData,
  DownloadWaypointV2Mission: DownloadWaypointV2Mission,
  JoystickAction: JoystickAction,
  SubscribeWaypointV2Event: SubscribeWaypointV2Event,
  CameraStartShootBurstPhoto: CameraStartShootBurstPhoto,
  CameraStopShootPhoto: CameraStopShootPhoto,
  SetupCameraStream: SetupCameraStream,
  CameraISO: CameraISO,
  MissionHpAction: MissionHpAction,
  CameraStartShootSinglePhoto: CameraStartShootSinglePhoto,
  SetHardSync: SetHardSync,
  GetAvoidEnable: GetAvoidEnable,
  UploadWaypointV2Mission: UploadWaypointV2Mission,
  CameraAction: CameraAction,
  EmergencyBrake: EmergencyBrake,
  FlightTaskControl: FlightTaskControl,
  GetM300StereoParams: GetM300StereoParams,
  MissionWpGetInfo: MissionWpGetInfo,
  ResumeWaypointV2Mission: ResumeWaypointV2Mission,
  CameraShutterSpeed: CameraShutterSpeed,
  SendPayloadData: SendPayloadData,
  StereoVGASubscription: StereoVGASubscription,
  Stereo240pSubscription: Stereo240pSubscription,
  SDKControlAuthority: SDKControlAuthority,
  GenerateWaypointV2Action: GenerateWaypointV2Action,
  StereoDepthSubscription: StereoDepthSubscription,
  GetWholeBatteryInfo: GetWholeBatteryInfo,
  DroneTaskControl: DroneTaskControl,
  SetJoystickMode: SetJoystickMode,
};
