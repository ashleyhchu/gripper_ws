// Auto-generated. Do not edit!

// (in-package droidspeak.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DroidChat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
      this.spaces = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = '';
      }
      if (initObj.hasOwnProperty('spaces')) {
        this.spaces = initObj.spaces
      }
      else {
        this.spaces = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DroidChat
    // Serialize message field [data]
    bufferOffset = _serializer.string(obj.data, buffer, bufferOffset);
    // Serialize message field [spaces]
    bufferOffset = _arraySerializer.float32(obj.spaces, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DroidChat
    let len;
    let data = new DroidChat(null);
    // Deserialize message field [data]
    data.data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [spaces]
    data.spaces = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    length += 4 * object.spaces.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'droidspeak/DroidChat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14b3c1f13ca46764581966919c8bdd15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string data
    float32[] spaces
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DroidChat(null);
    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = ''
    }

    if (msg.spaces !== undefined) {
      resolved.spaces = msg.spaces;
    }
    else {
      resolved.spaces = []
    }

    return resolved;
    }
};

module.exports = DroidChat;
