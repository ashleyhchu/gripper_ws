// Auto-generated. Do not edit!

// (in-package test_rosmaster.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TestString = require('./TestString.js');

//-----------------------------------------------------------

class TestArrays {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.caller_id = null;
      this.orig_caller_id = null;
      this.int32_array = null;
      this.float32_array = null;
      this.time_array = null;
      this.test_string_array = null;
    }
    else {
      if (initObj.hasOwnProperty('caller_id')) {
        this.caller_id = initObj.caller_id
      }
      else {
        this.caller_id = '';
      }
      if (initObj.hasOwnProperty('orig_caller_id')) {
        this.orig_caller_id = initObj.orig_caller_id
      }
      else {
        this.orig_caller_id = '';
      }
      if (initObj.hasOwnProperty('int32_array')) {
        this.int32_array = initObj.int32_array
      }
      else {
        this.int32_array = [];
      }
      if (initObj.hasOwnProperty('float32_array')) {
        this.float32_array = initObj.float32_array
      }
      else {
        this.float32_array = [];
      }
      if (initObj.hasOwnProperty('time_array')) {
        this.time_array = initObj.time_array
      }
      else {
        this.time_array = [];
      }
      if (initObj.hasOwnProperty('test_string_array')) {
        this.test_string_array = initObj.test_string_array
      }
      else {
        this.test_string_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestArrays
    // Serialize message field [caller_id]
    bufferOffset = _serializer.string(obj.caller_id, buffer, bufferOffset);
    // Serialize message field [orig_caller_id]
    bufferOffset = _serializer.string(obj.orig_caller_id, buffer, bufferOffset);
    // Serialize message field [int32_array]
    bufferOffset = _arraySerializer.int32(obj.int32_array, buffer, bufferOffset, null);
    // Serialize message field [float32_array]
    bufferOffset = _arraySerializer.float32(obj.float32_array, buffer, bufferOffset, null);
    // Serialize message field [time_array]
    bufferOffset = _arraySerializer.time(obj.time_array, buffer, bufferOffset, null);
    // Serialize message field [test_string_array]
    // Serialize the length for message field [test_string_array]
    bufferOffset = _serializer.uint32(obj.test_string_array.length, buffer, bufferOffset);
    obj.test_string_array.forEach((val) => {
      bufferOffset = TestString.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestArrays
    let len;
    let data = new TestArrays(null);
    // Deserialize message field [caller_id]
    data.caller_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [orig_caller_id]
    data.orig_caller_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [int32_array]
    data.int32_array = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [float32_array]
    data.float32_array = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [time_array]
    data.time_array = _arrayDeserializer.time(buffer, bufferOffset, null)
    // Deserialize message field [test_string_array]
    // Deserialize array length for message field [test_string_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.test_string_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.test_string_array[i] = TestString.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.caller_id.length;
    length += object.orig_caller_id.length;
    length += 4 * object.int32_array.length;
    length += 4 * object.float32_array.length;
    length += 8 * object.time_array.length;
    object.test_string_array.forEach((val) => {
      length += TestString.getMessageSize(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosmaster/TestArrays';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4cc9b5e2cebe791aa3e994f5bc159eb6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # caller_id of most recent node to send this message
    string caller_id
    # caller_id of the original node to send this message
    string orig_caller_id
    
    int32[] int32_array
    float32[] float32_array
    time[] time_array
    TestString[] test_string_array
    # TODO: array of arrays
    
    ================================================================================
    MSG: test_rosmaster/TestString
    # Integration test message
    # caller_id of most recent node to send this message
    string caller_id
    # caller_id of the original node to send this message
    string orig_caller_id
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestArrays(null);
    if (msg.caller_id !== undefined) {
      resolved.caller_id = msg.caller_id;
    }
    else {
      resolved.caller_id = ''
    }

    if (msg.orig_caller_id !== undefined) {
      resolved.orig_caller_id = msg.orig_caller_id;
    }
    else {
      resolved.orig_caller_id = ''
    }

    if (msg.int32_array !== undefined) {
      resolved.int32_array = msg.int32_array;
    }
    else {
      resolved.int32_array = []
    }

    if (msg.float32_array !== undefined) {
      resolved.float32_array = msg.float32_array;
    }
    else {
      resolved.float32_array = []
    }

    if (msg.time_array !== undefined) {
      resolved.time_array = msg.time_array;
    }
    else {
      resolved.time_array = []
    }

    if (msg.test_string_array !== undefined) {
      resolved.test_string_array = new Array(msg.test_string_array.length);
      for (let i = 0; i < resolved.test_string_array.length; ++i) {
        resolved.test_string_array[i] = TestString.Resolve(msg.test_string_array[i]);
      }
    }
    else {
      resolved.test_string_array = []
    }

    return resolved;
    }
};

module.exports = TestArrays;
