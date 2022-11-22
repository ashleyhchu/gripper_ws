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

class FixedLengthStringArray {
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
        this.foo = new Array(5).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FixedLengthStringArray
    // Check that the constant length array field [foo] has the right length
    if (obj.foo.length !== 5) {
      throw new Error('Unable to serialize array field foo - length must be 5')
    }
    // Serialize message field [foo]
    bufferOffset = _arraySerializer.string(obj.foo, buffer, bufferOffset, 5);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FixedLengthStringArray
    let len;
    let data = new FixedLengthStringArray(null);
    // Deserialize message field [foo]
    data.foo = _arrayDeserializer.string(buffer, bufferOffset, 5)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.foo.forEach((val) => {
      length += 4 + val.length;
    });
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/FixedLengthStringArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8e291ac046196a95bbe34c1555b382cc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[5] foo
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FixedLengthStringArray(null);
    if (msg.foo !== undefined) {
      resolved.foo = msg.foo;
    }
    else {
      resolved.foo = new Array(5).fill(0)
    }

    return resolved;
    }
};

module.exports = FixedLengthStringArray;
