// Auto-generated. Do not edit!

// (in-package test_roslib_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SameSubMsg1 = require('./SameSubMsg1.js');

//-----------------------------------------------------------

class TypeNameChange1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = new SameSubMsg1();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TypeNameChange1
    // Serialize message field [a]
    bufferOffset = SameSubMsg1.serialize(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TypeNameChange1
    let len;
    let data = new TypeNameChange1(null);
    // Deserialize message field [a]
    data.a = SameSubMsg1.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SameSubMsg1.getMessageSize(object.a);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roslib_comm/TypeNameChange1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31a9992534c4d020bfc4045e7dc1a786';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SameSubMsg1 a
    ================================================================================
    MSG: test_roslib_comm/SameSubMsg1
    int32 a
    float32 b
    string c
    uint64[10] d
    float64[] e
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TypeNameChange1(null);
    if (msg.a !== undefined) {
      resolved.a = SameSubMsg1.Resolve(msg.a)
    }
    else {
      resolved.a = new SameSubMsg1()
    }

    return resolved;
    }
};

module.exports = TypeNameChange1;
