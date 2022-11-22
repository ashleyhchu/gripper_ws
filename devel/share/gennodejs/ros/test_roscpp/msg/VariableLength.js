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

class VariableLength {
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
    // Serializes a message object of type VariableLength
    // Serialize message field [a]
    bufferOffset = _arraySerializer.uint32(obj.a, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VariableLength
    let len;
    let data = new VariableLength(null);
    // Deserialize message field [a]
    data.a = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.a.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/VariableLength';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9a532f93b9aeffe09e3bc21ff3de0f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32[] a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VariableLength(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = []
    }

    return resolved;
    }
};

module.exports = VariableLength;
