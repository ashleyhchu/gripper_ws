// Auto-generated. Do not edit!

// (in-package test_roscpp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class EmbeddedExternal {
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
        this.a = new std_msgs.msg.UInt8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EmbeddedExternal
    // Serialize message field [a]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EmbeddedExternal
    let len;
    let data = new EmbeddedExternal(null);
    // Deserialize message field [a]
    data.a = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/EmbeddedExternal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a09b324865f98bbf605e59ed0cefbc1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/UInt8 a
    ================================================================================
    MSG: std_msgs/UInt8
    uint8 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EmbeddedExternal(null);
    if (msg.a !== undefined) {
      resolved.a = std_msgs.msg.UInt8.Resolve(msg.a)
    }
    else {
      resolved.a = new std_msgs.msg.UInt8()
    }

    return resolved;
    }
};

module.exports = EmbeddedExternal;
