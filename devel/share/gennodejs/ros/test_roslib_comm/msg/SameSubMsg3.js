// Auto-generated. Do not edit!

// (in-package test_roslib_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SameSubMsg3 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
      this.c = null;
      this.d = null;
      this.e = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0.0;
      }
      if (initObj.hasOwnProperty('c')) {
        this.c = initObj.c
      }
      else {
        this.c = '';
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = new Array(10).fill(0);
      }
      if (initObj.hasOwnProperty('e')) {
        this.e = initObj.e
      }
      else {
        this.e = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SameSubMsg3
    // Serialize message field [a]
    bufferOffset = _serializer.int32(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.float32(obj.b, buffer, bufferOffset);
    // Serialize message field [c]
    bufferOffset = _serializer.string(obj.c, buffer, bufferOffset);
    // Check that the constant length array field [d] has the right length
    if (obj.d.length !== 10) {
      throw new Error('Unable to serialize array field d - length must be 10')
    }
    // Serialize message field [d]
    bufferOffset = _arraySerializer.uint64(obj.d, buffer, bufferOffset, 10);
    // Serialize message field [e]
    bufferOffset = _arraySerializer.float64(obj.e, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SameSubMsg3
    let len;
    let data = new SameSubMsg3(null);
    // Deserialize message field [a]
    data.a = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [c]
    data.c = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _arrayDeserializer.uint64(buffer, bufferOffset, 10)
    // Deserialize message field [e]
    data.e = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.c.length;
    length += 8 * object.e.length;
    return length + 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roslib_comm/SameSubMsg3';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '49145a54e4be1a218629e518575a0bf3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    # Lots of comments
    int32 a  #And more comments
    float32 b
    string c
    # And also some white space
    
    
    uint64[10] d
     float64[] e
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SameSubMsg3(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0.0
    }

    if (msg.c !== undefined) {
      resolved.c = msg.c;
    }
    else {
      resolved.c = ''
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = new Array(10).fill(0)
    }

    if (msg.e !== undefined) {
      resolved.e = msg.e;
    }
    else {
      resolved.e = []
    }

    return resolved;
    }
};

module.exports = SameSubMsg3;
