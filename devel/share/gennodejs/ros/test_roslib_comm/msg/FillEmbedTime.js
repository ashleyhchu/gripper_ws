// Auto-generated. Do not edit!

// (in-package test_roslib_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FillEmbedTime {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.t = null;
      this.d = null;
      this.str_msg = null;
      this.str_msg_array = null;
      this.i32 = null;
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
      if (initObj.hasOwnProperty('str_msg')) {
        this.str_msg = initObj.str_msg
      }
      else {
        this.str_msg = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('str_msg_array')) {
        this.str_msg_array = initObj.str_msg_array
      }
      else {
        this.str_msg_array = [];
      }
      if (initObj.hasOwnProperty('i32')) {
        this.i32 = initObj.i32
      }
      else {
        this.i32 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FillEmbedTime
    // Serialize message field [t]
    bufferOffset = _serializer.time(obj.t, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.duration(obj.d, buffer, bufferOffset);
    // Serialize message field [str_msg]
    bufferOffset = std_msgs.msg.String.serialize(obj.str_msg, buffer, bufferOffset);
    // Serialize message field [str_msg_array]
    // Serialize the length for message field [str_msg_array]
    bufferOffset = _serializer.uint32(obj.str_msg_array.length, buffer, bufferOffset);
    obj.str_msg_array.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [i32]
    bufferOffset = _serializer.int32(obj.i32, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FillEmbedTime
    let len;
    let data = new FillEmbedTime(null);
    // Deserialize message field [t]
    data.t = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [str_msg]
    data.str_msg = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [str_msg_array]
    // Deserialize array length for message field [str_msg_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.str_msg_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.str_msg_array[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [i32]
    data.i32 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.str_msg);
    object.str_msg_array.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roslib_comm/FillEmbedTime';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90e08039be001a899b8c20e680c289b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time t
    duration d
    std_msgs/String str_msg
    std_msgs/String[] str_msg_array
    int32 i32
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FillEmbedTime(null);
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

    if (msg.str_msg !== undefined) {
      resolved.str_msg = std_msgs.msg.String.Resolve(msg.str_msg)
    }
    else {
      resolved.str_msg = new std_msgs.msg.String()
    }

    if (msg.str_msg_array !== undefined) {
      resolved.str_msg_array = new Array(msg.str_msg_array.length);
      for (let i = 0; i < resolved.str_msg_array.length; ++i) {
        resolved.str_msg_array[i] = std_msgs.msg.String.Resolve(msg.str_msg_array[i]);
      }
    }
    else {
      resolved.str_msg_array = []
    }

    if (msg.i32 !== undefined) {
      resolved.i32 = msg.i32;
    }
    else {
      resolved.i32 = 0
    }

    return resolved;
    }
};

module.exports = FillEmbedTime;
