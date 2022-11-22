// Auto-generated. Do not edit!

// (in-package test_rosmaster.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TestString {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.caller_id = null;
      this.orig_caller_id = null;
      this.data = null;
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
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestString
    // Serialize message field [caller_id]
    bufferOffset = _serializer.string(obj.caller_id, buffer, bufferOffset);
    // Serialize message field [orig_caller_id]
    bufferOffset = _serializer.string(obj.orig_caller_id, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestString
    let len;
    let data = new TestString(null);
    // Deserialize message field [caller_id]
    data.caller_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [orig_caller_id]
    data.orig_caller_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.caller_id.length;
    length += object.orig_caller_id.length;
    length += object.data.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosmaster/TestString';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '334ff4377be93faa44ebc66d23d40fd3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TestString(null);
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

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    return resolved;
    }
};

module.exports = TestString;
