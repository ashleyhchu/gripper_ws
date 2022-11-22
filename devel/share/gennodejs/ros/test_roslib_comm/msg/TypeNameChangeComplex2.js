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
let SameSubMsg3 = require('./SameSubMsg3.js');

//-----------------------------------------------------------

class TypeNameChangeComplex2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = [];
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = new Array(10).fill(new SameSubMsg3());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TypeNameChangeComplex2
    // Serialize message field [a]
    // Serialize the length for message field [a]
    bufferOffset = _serializer.uint32(obj.a.length, buffer, bufferOffset);
    obj.a.forEach((val) => {
      bufferOffset = SameSubMsg2.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [b] has the right length
    if (obj.b.length !== 10) {
      throw new Error('Unable to serialize array field b - length must be 10')
    }
    // Serialize message field [b]
    obj.b.forEach((val) => {
      bufferOffset = SameSubMsg3.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TypeNameChangeComplex2
    let len;
    let data = new TypeNameChangeComplex2(null);
    // Deserialize message field [a]
    // Deserialize array length for message field [a]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.a = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.a[i] = SameSubMsg2.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [b]
    len = 10;
    data.b = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.b[i] = SameSubMsg3.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.a.forEach((val) => {
      length += SameSubMsg2.getMessageSize(val);
    });
    object.b.forEach((val) => {
      length += SameSubMsg3.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roslib_comm/TypeNameChangeComplex2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a01688a0991b9d7d9facf6d94b993e93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SameSubMsg2[] a
    SameSubMsg3[10] b
    
    ================================================================================
    MSG: test_roslib_comm/SameSubMsg2
    int32 a
    float32 b
    string c
    uint64[10] d
    float64[] e
    ================================================================================
    MSG: test_roslib_comm/SameSubMsg3
    
    # Lots of comments
    int32 a  #And more comments
    float32 b
    string c
    # And also some white space
    
    
    uint64[10] d
     float64[] e
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TypeNameChangeComplex2(null);
    if (msg.a !== undefined) {
      resolved.a = new Array(msg.a.length);
      for (let i = 0; i < resolved.a.length; ++i) {
        resolved.a[i] = SameSubMsg2.Resolve(msg.a[i]);
      }
    }
    else {
      resolved.a = []
    }

    if (msg.b !== undefined) {
      resolved.b = new Array(10)
      for (let i = 0; i < resolved.b.length; ++i) {
        if (msg.b.length > i) {
          resolved.b[i] = SameSubMsg3.Resolve(msg.b[i]);
        }
        else {
          resolved.b[i] = new SameSubMsg3();
        }
      }
    }
    else {
      resolved.b = new Array(10).fill(new SameSubMsg3())
    }

    return resolved;
    }
};

module.exports = TypeNameChangeComplex2;
