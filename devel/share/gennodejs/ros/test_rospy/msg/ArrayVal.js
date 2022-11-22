// Auto-generated. Do not edit!

// (in-package test_rospy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Val = require('./Val.js');

//-----------------------------------------------------------

class ArrayVal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vals = null;
    }
    else {
      if (initObj.hasOwnProperty('vals')) {
        this.vals = initObj.vals
      }
      else {
        this.vals = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArrayVal
    // Serialize message field [vals]
    // Serialize the length for message field [vals]
    bufferOffset = _serializer.uint32(obj.vals.length, buffer, bufferOffset);
    obj.vals.forEach((val) => {
      bufferOffset = Val.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArrayVal
    let len;
    let data = new ArrayVal(null);
    // Deserialize message field [vals]
    // Deserialize array length for message field [vals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vals[i] = Val.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.vals.forEach((val) => {
      length += Val.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rospy/ArrayVal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94e095e6a59bceb3466e4b23c166732e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Val[] vals
    #Val[10] vals_fixed
    
    ================================================================================
    MSG: test_rospy/Val
    string val
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArrayVal(null);
    if (msg.vals !== undefined) {
      resolved.vals = new Array(msg.vals.length);
      for (let i = 0; i < resolved.vals.length; ++i) {
        resolved.vals[i] = Val.Resolve(msg.vals[i]);
      }
    }
    else {
      resolved.vals = []
    }

    return resolved;
    }
};

module.exports = ArrayVal;
