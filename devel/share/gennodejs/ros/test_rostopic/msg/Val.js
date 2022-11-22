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

class Val {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.val = null;
    }
    else {
      if (initObj.hasOwnProperty('val')) {
        this.val = initObj.val
      }
      else {
        this.val = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Val
    // Serialize message field [val]
    bufferOffset = _serializer.string(obj.val, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Val
    let len;
    let data = new Val(null);
    // Deserialize message field [val]
    data.val = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.val.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rostopic/Val';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c45577ce53559408f0f69fe465be7c70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string val
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Val(null);
    if (msg.val !== undefined) {
      resolved.val = msg.val;
    }
    else {
      resolved.val = ''
    }

    return resolved;
    }
};

module.exports = Val;
