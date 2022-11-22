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

class Arrays {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.int8_arr = null;
      this.uint8_arr = null;
      this.int32_arr = null;
      this.uint32_arr = null;
      this.string_arr = null;
      this.time_arr = null;
    }
    else {
      if (initObj.hasOwnProperty('int8_arr')) {
        this.int8_arr = initObj.int8_arr
      }
      else {
        this.int8_arr = [];
      }
      if (initObj.hasOwnProperty('uint8_arr')) {
        this.uint8_arr = initObj.uint8_arr
      }
      else {
        this.uint8_arr = [];
      }
      if (initObj.hasOwnProperty('int32_arr')) {
        this.int32_arr = initObj.int32_arr
      }
      else {
        this.int32_arr = [];
      }
      if (initObj.hasOwnProperty('uint32_arr')) {
        this.uint32_arr = initObj.uint32_arr
      }
      else {
        this.uint32_arr = [];
      }
      if (initObj.hasOwnProperty('string_arr')) {
        this.string_arr = initObj.string_arr
      }
      else {
        this.string_arr = [];
      }
      if (initObj.hasOwnProperty('time_arr')) {
        this.time_arr = initObj.time_arr
      }
      else {
        this.time_arr = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Arrays
    // Serialize message field [int8_arr]
    bufferOffset = _arraySerializer.int8(obj.int8_arr, buffer, bufferOffset, null);
    // Serialize message field [uint8_arr]
    bufferOffset = _arraySerializer.uint8(obj.uint8_arr, buffer, bufferOffset, null);
    // Serialize message field [int32_arr]
    bufferOffset = _arraySerializer.int32(obj.int32_arr, buffer, bufferOffset, null);
    // Serialize message field [uint32_arr]
    bufferOffset = _arraySerializer.uint32(obj.uint32_arr, buffer, bufferOffset, null);
    // Serialize message field [string_arr]
    bufferOffset = _arraySerializer.string(obj.string_arr, buffer, bufferOffset, null);
    // Serialize message field [time_arr]
    bufferOffset = _arraySerializer.time(obj.time_arr, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Arrays
    let len;
    let data = new Arrays(null);
    // Deserialize message field [int8_arr]
    data.int8_arr = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [uint8_arr]
    data.uint8_arr = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [int32_arr]
    data.int32_arr = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [uint32_arr]
    data.uint32_arr = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [string_arr]
    data.string_arr = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [time_arr]
    data.time_arr = _arrayDeserializer.time(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.int8_arr.length;
    length += object.uint8_arr.length;
    length += 4 * object.int32_arr.length;
    length += 4 * object.uint32_arr.length;
    object.string_arr.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.time_arr.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rostopic/Arrays';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5a1f18379b10bdd4df210944f6007a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #for rostopic tests
    int8[] int8_arr
    uint8[] uint8_arr
    int32[] int32_arr
    uint32[] uint32_arr
    string[] string_arr
    time[] time_arr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Arrays(null);
    if (msg.int8_arr !== undefined) {
      resolved.int8_arr = msg.int8_arr;
    }
    else {
      resolved.int8_arr = []
    }

    if (msg.uint8_arr !== undefined) {
      resolved.uint8_arr = msg.uint8_arr;
    }
    else {
      resolved.uint8_arr = []
    }

    if (msg.int32_arr !== undefined) {
      resolved.int32_arr = msg.int32_arr;
    }
    else {
      resolved.int32_arr = []
    }

    if (msg.uint32_arr !== undefined) {
      resolved.uint32_arr = msg.uint32_arr;
    }
    else {
      resolved.uint32_arr = []
    }

    if (msg.string_arr !== undefined) {
      resolved.string_arr = msg.string_arr;
    }
    else {
      resolved.string_arr = []
    }

    if (msg.time_arr !== undefined) {
      resolved.time_arr = msg.time_arr;
    }
    else {
      resolved.time_arr = []
    }

    return resolved;
    }
};

module.exports = Arrays;
