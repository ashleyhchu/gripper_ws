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

class FillSimple {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.i32 = null;
      this.str = null;
      this.i32_array = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('i32')) {
        this.i32 = initObj.i32
      }
      else {
        this.i32 = 0;
      }
      if (initObj.hasOwnProperty('str')) {
        this.str = initObj.str
      }
      else {
        this.str = '';
      }
      if (initObj.hasOwnProperty('i32_array')) {
        this.i32_array = initObj.i32_array
      }
      else {
        this.i32_array = [];
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FillSimple
    // Serialize message field [i32]
    bufferOffset = _serializer.int32(obj.i32, buffer, bufferOffset);
    // Serialize message field [str]
    bufferOffset = _serializer.string(obj.str, buffer, bufferOffset);
    // Serialize message field [i32_array]
    bufferOffset = _arraySerializer.int32(obj.i32_array, buffer, bufferOffset, null);
    // Serialize message field [b]
    bufferOffset = _serializer.bool(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FillSimple
    let len;
    let data = new FillSimple(null);
    // Deserialize message field [i32]
    data.i32 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [str]
    data.str = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [i32_array]
    data.i32_array = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [b]
    data.b = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.str.length;
    length += 4 * object.i32_array.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roslib_comm/FillSimple';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da04a60d03fa22f7d301f9bd5f9a08ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 i32
    string str
    int32[] i32_array
    bool b
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FillSimple(null);
    if (msg.i32 !== undefined) {
      resolved.i32 = msg.i32;
    }
    else {
      resolved.i32 = 0
    }

    if (msg.str !== undefined) {
      resolved.str = msg.str;
    }
    else {
      resolved.str = ''
    }

    if (msg.i32_array !== undefined) {
      resolved.i32_array = msg.i32_array;
    }
    else {
      resolved.i32_array = []
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = false
    }

    return resolved;
    }
};

module.exports = FillSimple;
