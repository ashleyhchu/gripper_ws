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

class Renamed5 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.foo = null;
      this.bar = null;
    }
    else {
      if (initObj.hasOwnProperty('foo')) {
        this.foo = initObj.foo
      }
      else {
        this.foo = 0.0;
      }
      if (initObj.hasOwnProperty('bar')) {
        this.bar = initObj.bar
      }
      else {
        this.bar = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Renamed5
    // Serialize message field [foo]
    bufferOffset = _serializer.float64(obj.foo, buffer, bufferOffset);
    // Check that the constant length array field [bar] has the right length
    if (obj.bar.length !== 4) {
      throw new Error('Unable to serialize array field bar - length must be 4')
    }
    // Serialize message field [bar]
    bufferOffset = _arraySerializer.int32(obj.bar, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Renamed5
    let len;
    let data = new Renamed5(null);
    // Deserialize message field [foo]
    data.foo = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bar]
    data.bar = _arrayDeserializer.int32(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosbag/Renamed5';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd19d6452bb5e45bb900f81fed30ae83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64  foo  # 2.17
    int32[4] bar  # [8, 2, 5, 1]
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Renamed5(null);
    if (msg.foo !== undefined) {
      resolved.foo = msg.foo;
    }
    else {
      resolved.foo = 0.0
    }

    if (msg.bar !== undefined) {
      resolved.bar = msg.bar;
    }
    else {
      resolved.bar = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = Renamed5;
