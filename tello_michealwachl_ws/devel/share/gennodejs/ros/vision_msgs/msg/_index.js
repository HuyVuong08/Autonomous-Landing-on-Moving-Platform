
"use strict";

let Detection2D = require('./Detection2D.js');
let ObjectHypothesis = require('./ObjectHypothesis.js');
let Detection3D = require('./Detection3D.js');
let Detection2DArray = require('./Detection2DArray.js');
let ObjectHypothesisWithPose = require('./ObjectHypothesisWithPose.js');
let Classification2D = require('./Classification2D.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let Classification3D = require('./Classification3D.js');
let VisionInfo = require('./VisionInfo.js');
let BoundingBox2D = require('./BoundingBox2D.js');
let Detection3DArray = require('./Detection3DArray.js');

module.exports = {
  Detection2D: Detection2D,
  ObjectHypothesis: ObjectHypothesis,
  Detection3D: Detection3D,
  Detection2DArray: Detection2DArray,
  ObjectHypothesisWithPose: ObjectHypothesisWithPose,
  Classification2D: Classification2D,
  BoundingBox3D: BoundingBox3D,
  Classification3D: Classification3D,
  VisionInfo: VisionInfo,
  BoundingBox2D: BoundingBox2D,
  Detection3DArray: Detection3DArray,
};
