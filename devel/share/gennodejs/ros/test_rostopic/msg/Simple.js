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

class Simple {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.b = null;
      this.int16 = null;
      this.int32 = null;
      this.int64 = null;
      this.c = null;
      this.uint16 = null;
      this.uint32 = null;
      this.uint64 = null;
      this.str = null;
    }
    else {
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
      if (initObj.hasOwnProperty('int16')) {
        this.int16 = initObj.int16
      }
      else {
        this.int16 = 0;
      }
      if (initObj.hasOwnProperty('int32')) {
        this.int32 = initObj.int32
      }
      else {
        this.int32 = 0;
      }
      if (initObj.hasOwnProperty('int64')) {
        this.int64 = initObj.int64
      }
      else {
        this.int64 = 0;
      }
      if (initObj.hasOwnProperty('c')) {
        this.c = initObj.c
      }
      else {
        this.c = 0;
      }
      if (initObj.hasOwnProperty('uint16')) {
        this.uint16 = initObj.uint16
      }
      else {
        this.uint16 = 0;
      }
      if (initObj.hasOwnProperty('uint32')) {
        this.uint32 = initObj.uint32
      }
      else {
        this.uint32 = 0;
      }
      if (initObj.hasOwnProperty('uint64')) {
        this.uint64 = initObj.uint64
      }
      else {
        this.uint64 = 0;
      }
      if (initObj.hasOwnProperty('str')) {
        this.str = initObj.str
      }
      else {
        this.str = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Simple
    // Serialize message field [b]
    bufferOffset = _serializer.byte(obj.b, buffer, bufferOffset);
    // Serialize message field [int16]
    bufferOffset = _serializer.int16(obj.int16, buffer, bufferOffset);
    // Serialize message field [int32]
    bufferOffset = _serializer.int32(obj.int32, buffer, bufferOffset);
    // Serialize message field [int64]
    bufferOffset = _serializer.int64(obj.int64, buffer, bufferOffset);
    // Serialize message field [c]
    bufferOffset = _serializer.char(obj.c, buffer, bufferOffset);
    // Serialize message field [uint16]
    bufferOffset = _serializer.uint16(obj.uint16, buffer, bufferOffset);
    // Serialize message field [uint32]
    bufferOffset = _serializer.uint32(obj.uint32, buffer, bufferOffset);
    // Serialize message field [uint64]
    bufferOffset = _serializer.uint64(obj.uint64, buffer, bufferOffset);
    // Serialize message field [str]
    bufferOffset = _serializer.string(obj.str, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Simple
    let len;
    let data = new Simple(null);
    // Deserialize message field [b]
    data.b = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [int16]
    data.int16 = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [int32]
    data.int32 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [int64]
    data.int64 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [c]
    data.c = _deserializer.char(buffer, bufferOffset);
    // Deserialize message field [uint16]
    data.uint16 = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [uint32]
    data.uint32 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [uint64]
    data.uint64 = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [str]
    data.str = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.str.length;
    return length + 34;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rostopic/Simple';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9940b1313e61fed87cd22c50742578f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # for rostopic tests
    byte b
    int16 int16
    int32 int32
    int64 int64
    char c
    uint16 uint16
    uint32 uint32
    uint64 uint64
    string str
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Simple(null);
    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    if (msg.int16 !== undefined) {
      resolved.int16 = msg.int16;
    }
    else {
      resolved.int16 = 0
    }

    if (msg.int32 !== undefined) {
      resolved.int32 = msg.int32;
    }
    else {
      resolved.int32 = 0
    }

    if (msg.int64 !== undefined) {
      resolved.int64 = msg.int64;
    }
    else {
      resolved.int64 = 0
    }

    if (msg.c !== undefined) {
      resolved.c = msg.c;
    }
    else {
      resolved.c = 0
    }

    if (msg.uint16 !== undefined) {
      resolved.uint16 = msg.uint16;
    }
    else {
      resolved.uint16 = 0
    }

    if (msg.uint32 !== undefined) {
      resolved.uint32 = msg.uint32;
    }
    else {
      resolved.uint32 = 0
    }

    if (msg.uint64 !== undefined) {
      resolved.uint64 = msg.uint64;
    }
    else {
      resolved.uint64 = 0
    }

    if (msg.str !== undefined) {
      resolved.str = msg.str;
    }
    else {
      resolved.str = ''
    }

    return resolved;
    }
};

module.exports = Simple;
