// Auto-generated. Do not edit!

// (in-package test_roscpp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VariableLength = require('./VariableLength.js');

//-----------------------------------------------------------

class ArrayOfVariableLength {
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
        this.a = new Array(4).fill(new VariableLength());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArrayOfVariableLength
    // Check that the constant length array field [a] has the right length
    if (obj.a.length !== 4) {
      throw new Error('Unable to serialize array field a - length must be 4')
    }
    // Serialize message field [a]
    obj.a.forEach((val) => {
      bufferOffset = VariableLength.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArrayOfVariableLength
    let len;
    let data = new ArrayOfVariableLength(null);
    // Deserialize message field [a]
    len = 4;
    data.a = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.a[i] = VariableLength.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.a.forEach((val) => {
      length += VariableLength.getMessageSize(val);
    });
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/ArrayOfVariableLength';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7404d454a50b82c426a3a2c76fbcefd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    VariableLength[4] a
    ================================================================================
    MSG: test_roscpp/VariableLength
    uint32[] a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArrayOfVariableLength(null);
    if (msg.a !== undefined) {
      resolved.a = new Array(4)
      for (let i = 0; i < resolved.a.length; ++i) {
        if (msg.a.length > i) {
          resolved.a[i] = VariableLength.Resolve(msg.a[i]);
        }
        else {
          resolved.a[i] = new VariableLength();
        }
      }
    }
    else {
      resolved.a = new Array(4).fill(new VariableLength())
    }

    return resolved;
    }
};

module.exports = ArrayOfVariableLength;
