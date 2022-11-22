
"use strict";

let TestWithHeader = require('./TestWithHeader.js');
let TestEmpty = require('./TestEmpty.js');
let TestArray = require('./TestArray.js');
let TestStringInt = require('./TestStringInt.js');
let EmbeddedVariableLength = require('./EmbeddedVariableLength.js');
let EmbeddedFixedLength = require('./EmbeddedFixedLength.js');
let VariableLengthArrayOfExternal = require('./VariableLengthArrayOfExternal.js');
let WithTime = require('./WithTime.js');
let EmbeddedExternal = require('./EmbeddedExternal.js');
let WithHeader = require('./WithHeader.js');
let VariableLengthStringArray = require('./VariableLengthStringArray.js');
let VariableLength = require('./VariableLength.js');
let FixedLength = require('./FixedLength.js');
let CustomHeader = require('./CustomHeader.js');
let ArrayOfFixedLength = require('./ArrayOfFixedLength.js');
let WithDuration = require('./WithDuration.js');
let Constants = require('./Constants.js');
let WithMemberNamedHeaderThatIsNotAHeader = require('./WithMemberNamedHeaderThatIsNotAHeader.js');
let ArrayOfVariableLength = require('./ArrayOfVariableLength.js');
let HeaderNotFirstMember = require('./HeaderNotFirstMember.js');
let FixedLengthArrayOfExternal = require('./FixedLengthArrayOfExternal.js');
let FixedLengthStringArray = require('./FixedLengthStringArray.js');
let ThroughputMessage = require('./ThroughputMessage.js');
let LatencyMessage = require('./LatencyMessage.js');
let PointCloud = require('./PointCloud.js');
let ChannelFloat32 = require('./ChannelFloat32.js');
let Point32 = require('./Point32.js');

module.exports = {
  TestWithHeader: TestWithHeader,
  TestEmpty: TestEmpty,
  TestArray: TestArray,
  TestStringInt: TestStringInt,
  EmbeddedVariableLength: EmbeddedVariableLength,
  EmbeddedFixedLength: EmbeddedFixedLength,
  VariableLengthArrayOfExternal: VariableLengthArrayOfExternal,
  WithTime: WithTime,
  EmbeddedExternal: EmbeddedExternal,
  WithHeader: WithHeader,
  VariableLengthStringArray: VariableLengthStringArray,
  VariableLength: VariableLength,
  FixedLength: FixedLength,
  CustomHeader: CustomHeader,
  ArrayOfFixedLength: ArrayOfFixedLength,
  WithDuration: WithDuration,
  Constants: Constants,
  WithMemberNamedHeaderThatIsNotAHeader: WithMemberNamedHeaderThatIsNotAHeader,
  ArrayOfVariableLength: ArrayOfVariableLength,
  HeaderNotFirstMember: HeaderNotFirstMember,
  FixedLengthArrayOfExternal: FixedLengthArrayOfExternal,
  FixedLengthStringArray: FixedLengthStringArray,
  ThroughputMessage: ThroughputMessage,
  LatencyMessage: LatencyMessage,
  PointCloud: PointCloud,
  ChannelFloat32: ChannelFloat32,
  Point32: Point32,
};
