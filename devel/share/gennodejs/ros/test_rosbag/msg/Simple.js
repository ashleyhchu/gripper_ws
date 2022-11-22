// Auto-generated. Do not edit!

// (in-package test_rosbag.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Simple {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.field1 = null;
    }
    else {
      if (initObj.hasOwnProperty('field1')) {
        this.field1 = initObj.field1
      }
      else {
        this.field1 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Simple
    // Serialize message field [field1]
    bufferOffset = _serializer.int32(obj.field1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Simple
    let len;
    let data = new Simple(null);
    // Deserialize message field [field1]
    data.field1 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosbag/Simple';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd13c87301de1ed73a1dd65764ac6019b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 field1 #42
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Simple(null);
    if (msg.field1 !== undefined) {
      resolved.field1 = msg.field1;
    }
    else {
      resolved.field1 = 0
    }

    return resolved;
    }
};

module.exports = Simple;
