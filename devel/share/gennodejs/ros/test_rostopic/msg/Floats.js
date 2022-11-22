// Auto-generated. Do not edit!

// (in-package test_rostopic.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Floats {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.float32 = null;
      this.float64 = null;
    }
    else {
      if (initObj.hasOwnProperty('float32')) {
        this.float32 = initObj.float32
      }
      else {
        this.float32 = 0.0;
      }
      if (initObj.hasOwnProperty('float64')) {
        this.float64 = initObj.float64
      }
      else {
        this.float64 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Floats
    // Serialize message field [float32]
    bufferOffset = _serializer.float32(obj.float32, buffer, bufferOffset);
    // Serialize message field [float64]
    bufferOffset = _serializer.float64(obj.float64, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Floats
    let len;
    let data = new Floats(null);
    // Deserialize message field [float32]
    data.float32 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [float64]
    data.float64 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rostopic/Floats';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ee8aba2d870f75f2b5916e2cddbd928';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # for rostopic tests
    float32 float32
    float64 float64
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Floats(null);
    if (msg.float32 !== undefined) {
      resolved.float32 = msg.float32;
    }
    else {
      resolved.float32 = 0.0
    }

    if (msg.float64 !== undefined) {
      resolved.float64 = msg.float64;
    }
    else {
      resolved.float64 = 0.0
    }

    return resolved;
    }
};

module.exports = Floats;
