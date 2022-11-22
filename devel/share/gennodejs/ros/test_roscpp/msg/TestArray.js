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

class TestArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.counter = null;
      this.float_arr = null;
    }
    else {
      if (initObj.hasOwnProperty('counter')) {
        this.counter = initObj.counter
      }
      else {
        this.counter = 0;
      }
      if (initObj.hasOwnProperty('float_arr')) {
        this.float_arr = initObj.float_arr
      }
      else {
        this.float_arr = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestArray
    // Serialize message field [counter]
    bufferOffset = _serializer.int32(obj.counter, buffer, bufferOffset);
    // Serialize message field [float_arr]
    bufferOffset = _arraySerializer.float64(obj.float_arr, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestArray
    let len;
    let data = new TestArray(null);
    // Deserialize message field [counter]
    data.counter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [float_arr]
    data.float_arr = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.float_arr.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/TestArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7c2f87680985b118316f81f28b4cfd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 counter
    float64[] float_arr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestArray(null);
    if (msg.counter !== undefined) {
      resolved.counter = msg.counter;
    }
    else {
      resolved.counter = 0
    }

    if (msg.float_arr !== undefined) {
      resolved.float_arr = msg.float_arr;
    }
    else {
      resolved.float_arr = []
    }

    return resolved;
    }
};

module.exports = TestArray;
