// Auto-generated. Do not edit!

// (in-package test_roscpp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Constants {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Constants
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Constants
    let len;
    let data = new Constants(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/Constants';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0032309c8dd2c569e0e0d0e75974e750';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 a = 1
    int8 b = 2
    uint16 c = 3
    int16 d = 4
    uint32 e = 5
    int32 f = 6
    uint64 g = 7
    int64 h = 8
    float32 fa = 1.5
    float64 fb = 40.9
    string str = hello there
    string str2 = this string has "quotes" and \slashes\ in it
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Constants(null);
    return resolved;
    }
};

// Constants for message
Constants.Constants = {
  A: 1,
  B: 2,
  C: 3,
  D: 4,
  E: 5,
  F: 6,
  G: 7,
  H: 8,
  FA: 1.5,
  FB: 40.9,
  STR: 'hello there',
  STR2: 'this string has "quotes" and \slashes\ in it',
}

module.exports = Constants;
