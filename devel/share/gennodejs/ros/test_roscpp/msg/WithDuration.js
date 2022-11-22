// Auto-generated. Do not edit!

// (in-package test_roscpp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WithDuration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.my_duration = null;
    }
    else {
      if (initObj.hasOwnProperty('my_duration')) {
        this.my_duration = initObj.my_duration
      }
      else {
        this.my_duration = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WithDuration
    // Serialize message field [my_duration]
    bufferOffset = _serializer.duration(obj.my_duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WithDuration
    let len;
    let data = new WithDuration(null);
    // Deserialize message field [my_duration]
    data.my_duration = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/WithDuration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ad52ba9d0229ba8b9c032400c77c367';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    duration my_duration
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WithDuration(null);
    if (msg.my_duration !== undefined) {
      resolved.my_duration = msg.my_duration;
    }
    else {
      resolved.my_duration = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = WithDuration;
