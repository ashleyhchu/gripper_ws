// Auto-generated. Do not edit!

// (in-package test_rosbag.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Simple = require('./Simple.js');

//-----------------------------------------------------------

class MigratedAddSub {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.field1 = null;
      this.field2 = null;
    }
    else {
      if (initObj.hasOwnProperty('field1')) {
        this.field1 = initObj.field1
      }
      else {
        this.field1 = new Simple();
      }
      if (initObj.hasOwnProperty('field2')) {
        this.field2 = initObj.field2
      }
      else {
        this.field2 = new Simple();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MigratedAddSub
    // Serialize message field [field1]
    bufferOffset = Simple.serialize(obj.field1, buffer, bufferOffset);
    // Serialize message field [field2]
    bufferOffset = Simple.serialize(obj.field2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MigratedAddSub
    let len;
    let data = new MigratedAddSub(null);
    // Deserialize message field [field1]
    data.field1 = Simple.deserialize(buffer, bufferOffset);
    // Deserialize message field [field2]
    data.field2 = Simple.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosbag/MigratedAddSub';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f54ff3b9ba622359fa96ac15d4498153';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Simple field1
    Simple field2
    ================================================================================
    MSG: test_rosbag/Simple
    int32 field1 #42
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MigratedAddSub(null);
    if (msg.field1 !== undefined) {
      resolved.field1 = Simple.Resolve(msg.field1)
    }
    else {
      resolved.field1 = new Simple()
    }

    if (msg.field2 !== undefined) {
      resolved.field2 = Simple.Resolve(msg.field2)
    }
    else {
      resolved.field2 = new Simple()
    }

    return resolved;
    }
};

module.exports = MigratedAddSub;
