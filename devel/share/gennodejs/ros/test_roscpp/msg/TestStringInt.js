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

class TestStringInt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.str = null;
      this.counter = null;
    }
    else {
      if (initObj.hasOwnProperty('str')) {
        this.str = initObj.str
      }
      else {
        this.str = '';
      }
      if (initObj.hasOwnProperty('counter')) {
        this.counter = initObj.counter
      }
      else {
        this.counter = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestStringInt
    // Serialize message field [str]
    bufferOffset = _serializer.string(obj.str, buffer, bufferOffset);
    // Serialize message field [counter]
    bufferOffset = _serializer.int32(obj.counter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestStringInt
    let len;
    let data = new TestStringInt(null);
    // Deserialize message field [str]
    data.str = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [counter]
    data.counter = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.str.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/TestStringInt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f0ceb8aa4bbf4dbd240039d0bf240ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string str
    int32 counter
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestStringInt(null);
    if (msg.str !== undefined) {
      resolved.str = msg.str;
    }
    else {
      resolved.str = ''
    }

    if (msg.counter !== undefined) {
      resolved.counter = msg.counter;
    }
    else {
      resolved.counter = 0
    }

    return resolved;
    }
};

module.exports = TestStringInt;
