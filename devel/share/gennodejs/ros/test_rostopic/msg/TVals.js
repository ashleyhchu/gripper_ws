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

class TVals {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.t = null;
      this.d = null;
    }
    else {
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
    // Serializes a message object of type TVals
    // Serialize message field [t]
    bufferOffset = _serializer.time(obj.t, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.duration(obj.d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TVals
    let len;
    let data = new TVals(null);
    // Deserialize message field [t]
    data.t = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rostopic/TVals';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae4d4f9600b9ab683a5dc9372c031758';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # for rostopic tests
    time t
    duration d
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TVals(null);
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

module.exports = TVals;
