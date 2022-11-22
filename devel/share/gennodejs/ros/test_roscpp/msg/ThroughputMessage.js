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

class ThroughputMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.array = null;
    }
    else {
      if (initObj.hasOwnProperty('array')) {
        this.array = initObj.array
      }
      else {
        this.array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThroughputMessage
    // Serialize message field [array]
    bufferOffset = _arraySerializer.uint8(obj.array, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThroughputMessage
    let len;
    let data = new ThroughputMessage(null);
    // Deserialize message field [array]
    data.array = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.array.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/ThroughputMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dda33390139e301b6c212139192418ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] array
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ThroughputMessage(null);
    if (msg.array !== undefined) {
      resolved.array = msg.array;
    }
    else {
      resolved.array = []
    }

    return resolved;
    }
};

module.exports = ThroughputMessage;
