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

class LatencyMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.publish_time = null;
      this.receipt_time = null;
      this.count = null;
      this.thread_index = null;
      this.array = null;
    }
    else {
      if (initObj.hasOwnProperty('publish_time')) {
        this.publish_time = initObj.publish_time
      }
      else {
        this.publish_time = 0.0;
      }
      if (initObj.hasOwnProperty('receipt_time')) {
        this.receipt_time = initObj.receipt_time
      }
      else {
        this.receipt_time = 0.0;
      }
      if (initObj.hasOwnProperty('count')) {
        this.count = initObj.count
      }
      else {
        this.count = 0;
      }
      if (initObj.hasOwnProperty('thread_index')) {
        this.thread_index = initObj.thread_index
      }
      else {
        this.thread_index = 0;
      }
      if (initObj.hasOwnProperty('array')) {
        this.array = initObj.array
      }
      else {
        this.array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LatencyMessage
    // Serialize message field [publish_time]
    bufferOffset = _serializer.float64(obj.publish_time, buffer, bufferOffset);
    // Serialize message field [receipt_time]
    bufferOffset = _serializer.float64(obj.receipt_time, buffer, bufferOffset);
    // Serialize message field [count]
    bufferOffset = _serializer.uint64(obj.count, buffer, bufferOffset);
    // Serialize message field [thread_index]
    bufferOffset = _serializer.uint32(obj.thread_index, buffer, bufferOffset);
    // Serialize message field [array]
    bufferOffset = _arraySerializer.uint8(obj.array, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LatencyMessage
    let len;
    let data = new LatencyMessage(null);
    // Deserialize message field [publish_time]
    data.publish_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [receipt_time]
    data.receipt_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [count]
    data.count = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [thread_index]
    data.thread_index = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [array]
    data.array = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.array.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/LatencyMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be90d117303321f392404ed7edeb7c8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 publish_time
    float64 receipt_time
    uint64 count
    uint32 thread_index
    uint8[] array
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LatencyMessage(null);
    if (msg.publish_time !== undefined) {
      resolved.publish_time = msg.publish_time;
    }
    else {
      resolved.publish_time = 0.0
    }

    if (msg.receipt_time !== undefined) {
      resolved.receipt_time = msg.receipt_time;
    }
    else {
      resolved.receipt_time = 0.0
    }

    if (msg.count !== undefined) {
      resolved.count = msg.count;
    }
    else {
      resolved.count = 0
    }

    if (msg.thread_index !== undefined) {
      resolved.thread_index = msg.thread_index;
    }
    else {
      resolved.thread_index = 0
    }

    if (msg.array !== undefined) {
      resolved.array = msg.array;
    }
    else {
      resolved.array = []
    }

    return resolved;
    }
};

module.exports = LatencyMessage;
