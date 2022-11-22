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

class VariableLengthStringArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.foo = null;
    }
    else {
      if (initObj.hasOwnProperty('foo')) {
        this.foo = initObj.foo
      }
      else {
        this.foo = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VariableLengthStringArray
    // Serialize message field [foo]
    bufferOffset = _arraySerializer.string(obj.foo, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VariableLengthStringArray
    let len;
    let data = new VariableLengthStringArray(null);
    // Deserialize message field [foo]
    data.foo = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.foo.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/VariableLengthStringArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa992b5cca963995275d2a2f3ee7615f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] foo
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VariableLengthStringArray(null);
    if (msg.foo !== undefined) {
      resolved.foo = msg.foo;
    }
    else {
      resolved.foo = []
    }

    return resolved;
    }
};

module.exports = VariableLengthStringArray;
