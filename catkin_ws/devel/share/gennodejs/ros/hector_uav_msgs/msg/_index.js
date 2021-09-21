
"use strict";

let YawrateCommand = require('./YawrateCommand.js');
let HeadingCommand = require('./HeadingCommand.js');
let Supply = require('./Supply.js');
let RuddersCommand = require('./RuddersCommand.js');
let MotorCommand = require('./MotorCommand.js');
let RC = require('./RC.js');
let ControllerState = require('./ControllerState.js');
let AttitudeCommand = require('./AttitudeCommand.js');
let Compass = require('./Compass.js');
let HeightCommand = require('./HeightCommand.js');
let RawRC = require('./RawRC.js');
let ThrustCommand = require('./ThrustCommand.js');
let VelocityZCommand = require('./VelocityZCommand.js');
let Altimeter = require('./Altimeter.js');
let RawMagnetic = require('./RawMagnetic.js');
let MotorPWM = require('./MotorPWM.js');
let VelocityXYCommand = require('./VelocityXYCommand.js');
let MotorStatus = require('./MotorStatus.js');
let RawImu = require('./RawImu.js');
let ServoCommand = require('./ServoCommand.js');
let PositionXYCommand = require('./PositionXYCommand.js');
let TakeoffAction = require('./TakeoffAction.js');
let TakeoffActionFeedback = require('./TakeoffActionFeedback.js');
let TakeoffGoal = require('./TakeoffGoal.js');
let LandingResult = require('./LandingResult.js');
let LandingActionResult = require('./LandingActionResult.js');
let LandingFeedback = require('./LandingFeedback.js');
let TakeoffFeedback = require('./TakeoffFeedback.js');
let LandingActionFeedback = require('./LandingActionFeedback.js');
let LandingActionGoal = require('./LandingActionGoal.js');
let PoseActionGoal = require('./PoseActionGoal.js');
let LandingAction = require('./LandingAction.js');
let TakeoffActionGoal = require('./TakeoffActionGoal.js');
let PoseActionFeedback = require('./PoseActionFeedback.js');
let PoseActionResult = require('./PoseActionResult.js');
let PoseFeedback = require('./PoseFeedback.js');
let TakeoffActionResult = require('./TakeoffActionResult.js');
let PoseResult = require('./PoseResult.js');
let LandingGoal = require('./LandingGoal.js');
let TakeoffResult = require('./TakeoffResult.js');
let PoseAction = require('./PoseAction.js');
let PoseGoal = require('./PoseGoal.js');

module.exports = {
  YawrateCommand: YawrateCommand,
  HeadingCommand: HeadingCommand,
  Supply: Supply,
  RuddersCommand: RuddersCommand,
  MotorCommand: MotorCommand,
  RC: RC,
  ControllerState: ControllerState,
  AttitudeCommand: AttitudeCommand,
  Compass: Compass,
  HeightCommand: HeightCommand,
  RawRC: RawRC,
  ThrustCommand: ThrustCommand,
  VelocityZCommand: VelocityZCommand,
  Altimeter: Altimeter,
  RawMagnetic: RawMagnetic,
  MotorPWM: MotorPWM,
  VelocityXYCommand: VelocityXYCommand,
  MotorStatus: MotorStatus,
  RawImu: RawImu,
  ServoCommand: ServoCommand,
  PositionXYCommand: PositionXYCommand,
  TakeoffAction: TakeoffAction,
  TakeoffActionFeedback: TakeoffActionFeedback,
  TakeoffGoal: TakeoffGoal,
  LandingResult: LandingResult,
  LandingActionResult: LandingActionResult,
  LandingFeedback: LandingFeedback,
  TakeoffFeedback: TakeoffFeedback,
  LandingActionFeedback: LandingActionFeedback,
  LandingActionGoal: LandingActionGoal,
  PoseActionGoal: PoseActionGoal,
  LandingAction: LandingAction,
  TakeoffActionGoal: TakeoffActionGoal,
  PoseActionFeedback: PoseActionFeedback,
  PoseActionResult: PoseActionResult,
  PoseFeedback: PoseFeedback,
  TakeoffActionResult: TakeoffActionResult,
  PoseResult: PoseResult,
  LandingGoal: LandingGoal,
  TakeoffResult: TakeoffResult,
  PoseAction: PoseAction,
  PoseGoal: PoseGoal,
};
