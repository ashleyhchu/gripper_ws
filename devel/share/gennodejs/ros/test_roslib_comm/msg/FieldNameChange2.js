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

class FieldNameChange2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = new SameSubMsg1();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FieldNameChange2
    // Serialize message field [b]
    bufferOffset = SameSubMsg1.serialize(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FieldNameChange2
    let len;
    let data = new FieldNameChange2(null);
    // Deserialize message field [b]
    data.b = SameSubMsg1.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SameSubMsg1.getMessageSize(object.b);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roslib_comm/FieldNameChange2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dde34a89b93706fc183fd13c24ae090a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SameSubMsg1 b
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
    const resolved = new FieldNameChange2(null);
    if (msg.b !== undefined) {
      resolved.b = SameSubMsg1.Resolve(msg.b)
    }
    else {
      resolved.b = new SameSubMsg1()
    }

    return resolved;
    }
};

module.exports = FieldNameChange2;
