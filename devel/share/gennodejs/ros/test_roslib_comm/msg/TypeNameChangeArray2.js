// Auto-generated. Do not edit!

// (in-package test_roslib_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SameSubMsg2 = require('./SameSubMsg2.js');

//-----------------------------------------------------------

class TypeNameChangeArray2 {
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
        this.a = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TypeNameChangeArray2
    // Serialize message field [a]
    // Serialize the length for message field [a]
    bufferOffset = _serializer.uint32(obj.a.length, buffer, bufferOffset);
    obj.a.forEach((val) => {
      bufferOffset = SameSubMsg2.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TypeNameChangeArray2
    let len;
    let data = new TypeNameChangeArray2(null);
    // Deserialize message field [a]
    // Deserialize array length for message field [a]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.a = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.a[i] = SameSubMsg2.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.a.forEach((val) => {
      length += SameSubMsg2.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roslib_comm/TypeNameChangeArray2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '31a9992534c4d020bfc4045e7dc1a786';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SameSubMsg2[] a
    ================================================================================
    MSG: test_roslib_comm/SameSubMsg2
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
    const resolved = new TypeNameChangeArray2(null);
    if (msg.a !== undefined) {
      resolved.a = new Array(msg.a.length);
      for (let i = 0; i < resolved.a.length; ++i) {
        resolved.a[i] = SameSubMsg2.Resolve(msg.a[i]);
      }
    }
    else {
      resolved.a = []
    }

    return resolved;
    }
};

module.exports = TypeNameChangeArray2;
