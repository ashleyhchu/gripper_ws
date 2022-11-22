// Auto-generated. Do not edit!

// (in-package test_rosmaster.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TestPrimitives {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.caller_id = null;
      this.orig_caller_id = null;
      this.str = null;
      this.b = null;
      this.int16 = null;
      this.int32 = null;
      this.int64 = null;
      this.c = null;
      this.uint16 = null;
      this.uint32 = null;
      this.uint64 = null;
      this.float32 = null;
      this.float64 = null;
      this.t = null;
      this.d = null;
    }
    else {
      if (initObj.hasOwnProperty('caller_id')) {
        this.caller_id = initObj.caller_id
      }
      else {
        this.caller_id = '';
      }
      if (initObj.hasOwnProperty('orig_caller_id')) {
        this.orig_caller_id = initObj.orig_caller_id
      }
      else {
        this.orig_caller_id = '';
      }
      if (initObj.hasOwnProperty('str')) {
        this.str = initObj.str
      }
      else {
        this.str = '';
      }
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
      if (initObj.hasOwnProperty('t')) {
        this.t = initObj.t
      }
      else {
        this.t = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestPrimitives
    // Serialize message field [caller_id]
    bufferOffset = _serializer.string(obj.caller_id, buffer, bufferOffset);
    // Serialize message field [orig_caller_id]
    bufferOffset = _serializer.string(obj.orig_caller_id, buffer, bufferOffset);
    // Serialize message field [str]
    bufferOffset = _serializer.string(obj.str, buffer, bufferOffset);
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
    // Serialize message field [float32]
    bufferOffset = _serializer.float32(obj.float32, buffer, bufferOffset);
    // Serialize message field [float64]
    bufferOffset = _serializer.float64(obj.float64, buffer, bufferOffset);
    // Serialize message field [t]
    bufferOffset = _serializer.time(obj.t, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.duration(obj.d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestPrimitives
    let len;
    let data = new TestPrimitives(null);
    // Deserialize message field [caller_id]
    data.caller_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [orig_caller_id]
    data.orig_caller_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [str]
    data.str = _deserializer.string(buffer, bufferOffset);
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
    // Deserialize message field [float32]
    data.float32 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [float64]
    data.float64 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [t]
    data.t = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.caller_id.length;
    length += object.orig_caller_id.length;
    length += object.str.length;
    return length + 70;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosmaster/TestPrimitives';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e70f428a22c0d26ca67f87802c8e00f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Integration test message of all primitive types
    
    # caller_id of most recent node to send this message
    string caller_id
    # caller_id of the original node to send this message
    string orig_caller_id
    
    string str
    byte b
    int16 int16
    int32 int32
    int64 int64
    char c
    uint16 uint16
    uint32 uint32
    uint64 uint64
    float32 float32
    float64 float64
    time t
    duration d
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestPrimitives(null);
    if (msg.caller_id !== undefined) {
      resolved.caller_id = msg.caller_id;
    }
    else {
      resolved.caller_id = ''
    }

    if (msg.orig_caller_id !== undefined) {
      resolved.orig_caller_id = msg.orig_caller_id;
    }
    else {
      resolved.orig_caller_id = ''
    }

    if (msg.str !== undefined) {
      resolved.str = msg.str;
    }
    else {
      resolved.str = ''
    }

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

    if (msg.t !== undefined) {
      resolved.t = msg.t;
    }
    else {
      resolved.t = {secs: 0, nsecs: 0}
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = TestPrimitives;
