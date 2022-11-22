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

class ChannelFloat32 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.vals = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('vals')) {
        this.vals = initObj.vals
      }
      else {
        this.vals = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChannelFloat32
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [vals]
    bufferOffset = _arraySerializer.float32(obj.vals, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChannelFloat32
    let len;
    let data = new ChannelFloat32(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [vals]
    data.vals = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += 4 * object.vals.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/ChannelFloat32';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '61c47e4621e471c885edb248b5dcafd5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    float32[] vals
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChannelFloat32(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.vals !== undefined) {
      resolved.vals = msg.vals;
    }
    else {
      resolved.vals = []
    }

    return resolved;
    }
};

module.exports = ChannelFloat32;
