// Auto-generated. Do not edit!

// (in-package test_rostopic.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Simple = require('./Simple.js');
let Arrays = require('./Arrays.js');

//-----------------------------------------------------------

class Embed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.simple = null;
      this.arrays = null;
    }
    else {
      if (initObj.hasOwnProperty('simple')) {
        this.simple = initObj.simple
      }
      else {
        this.simple = new Simple();
      }
      if (initObj.hasOwnProperty('arrays')) {
        this.arrays = initObj.arrays
      }
      else {
        this.arrays = new Arrays();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Embed
    // Serialize message field [simple]
    bufferOffset = Simple.serialize(obj.simple, buffer, bufferOffset);
    // Serialize message field [arrays]
    bufferOffset = Arrays.serialize(obj.arrays, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Embed
    let len;
    let data = new Embed(null);
    // Deserialize message field [simple]
    data.simple = Simple.deserialize(buffer, bufferOffset);
    // Deserialize message field [arrays]
    data.arrays = Arrays.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Simple.getMessageSize(object.simple);
    length += Arrays.getMessageSize(object.arrays);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rostopic/Embed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6dec891298f3675c2d964c161d28efaa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #for rostopic tests
    Simple simple
    Arrays arrays
    
    ================================================================================
    MSG: test_rostopic/Simple
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
    
    ================================================================================
    MSG: test_rostopic/Arrays
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
    const resolved = new Embed(null);
    if (msg.simple !== undefined) {
      resolved.simple = Simple.Resolve(msg.simple)
    }
    else {
      resolved.simple = new Simple()
    }

    if (msg.arrays !== undefined) {
      resolved.arrays = Arrays.Resolve(msg.arrays)
    }
    else {
      resolved.arrays = new Arrays()
    }

    return resolved;
    }
};

module.exports = Embed;
