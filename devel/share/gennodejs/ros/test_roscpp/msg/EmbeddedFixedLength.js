// Auto-generated. Do not edit!

// (in-package test_roscpp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FixedLength = require('./FixedLength.js');

//-----------------------------------------------------------

class EmbeddedFixedLength {
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
        this.a = new FixedLength();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EmbeddedFixedLength
    // Serialize message field [a]
    bufferOffset = FixedLength.serialize(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EmbeddedFixedLength
    let len;
    let data = new EmbeddedFixedLength(null);
    // Deserialize message field [a]
    data.a = FixedLength.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/EmbeddedFixedLength';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '770e15962592d1fbea70b6b820ba16d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    FixedLength a
    
    ================================================================================
    MSG: test_roscpp/FixedLength
    uint32 a
    float32 b
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EmbeddedFixedLength(null);
    if (msg.a !== undefined) {
      resolved.a = FixedLength.Resolve(msg.a)
    }
    else {
      resolved.a = new FixedLength()
    }

    return resolved;
    }
};

module.exports = EmbeddedFixedLength;
