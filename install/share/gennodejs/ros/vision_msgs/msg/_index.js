
"use strict";

let ImageClustering = require('./ImageClustering.js');
let FrameResults = require('./FrameResults.js');
let ClassifiedObject = require('./ClassifiedObject.js');
let ImageQuality = require('./ImageQuality.js');
let FaceArray = require('./FaceArray.js');
let DetectedObjects = require('./DetectedObjects.js');
let ObjectFeatures = require('./ObjectFeatures.js');
let Face = require('./Face.js');
let ClassifiedObjects = require('./ClassifiedObjects.js');
let VisionCmdMsg = require('./VisionCmdMsg.js');

module.exports = {
  ImageClustering: ImageClustering,
  FrameResults: FrameResults,
  ClassifiedObject: ClassifiedObject,
  ImageQuality: ImageQuality,
  FaceArray: FaceArray,
  DetectedObjects: DetectedObjects,
  ObjectFeatures: ObjectFeatures,
  Face: Face,
  ClassifiedObjects: ClassifiedObjects,
  VisionCmdMsg: VisionCmdMsg,
};
