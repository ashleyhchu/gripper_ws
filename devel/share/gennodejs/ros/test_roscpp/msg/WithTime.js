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

class WithTime {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.my_time = null;
    }
    else {
      if (initObj.hasOwnProperty('my_time')) {
        this.my_time = initObj.my_time
      }
      else {
        this.my_time = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WithTime
    // Serialize message field [my_time]
    bufferOffset = _serializer.time(obj.my_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WithTime
    let len;
    let data = new WithTime(null);
    // Deserialize message field [my_time]
    data.my_time = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/WithTime';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60f189e40cfeaefbc79e6cdbd1605364';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time my_time
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WithTime(null);
    if (msg.my_time !== undefined) {
      resolved.my_time = msg.my_time;
    }
    else {
      resolved.my_time = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = WithTime;
