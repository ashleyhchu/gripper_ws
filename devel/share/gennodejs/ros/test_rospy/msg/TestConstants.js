// Auto-generated. Do not edit!

// (in-package test_rospy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TestConstants {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestConstants
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestConstants
    let len;
    let data = new TestConstants(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rospy/TestConstants';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e60959d2ccf9718dc5e42767bebd1644';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 A=-123.0
    float32 B=124.0
    float64 C=125.0
    int32 X=123
    int32 Y=-123
    uint32 Z=124
    string FOO=foo
    string SINGLEQUOTE='hi
    string DOUBLEQUOTE="hello" there
    string MULTIQUOTE="hello" 'goodbye'
    string EXAMPLE="#comments" are ignored, and leading and trailing whitespace removed
    string WHITESPACE= strip  
    string EMPTY= 
    bool TRUE=1
    bool FALSE=0
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestConstants(null);
    return resolved;
    }
};

// Constants for message
TestConstants.Constants = {
  A: -123.0,
  B: 124.0,
  C: 125.0,
  X: 123,
  Y: -123,
  Z: 124,
  FOO: 'foo',
  SINGLEQUOTE: ''hi',
  DOUBLEQUOTE: '"hello" there',
  MULTIQUOTE: '"hello" 'goodbye'',
  EXAMPLE: '"#comments" are ignored, and leading and trailing whitespace removed',
  WHITESPACE: 'strip',
  EMPTY: '',
  TRUE: true,
  FALSE: false,
}

module.exports = TestConstants;
