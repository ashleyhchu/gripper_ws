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
let ArrayVal = require('./ArrayVal.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class EmbedTest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.str1 = null;
      this.int1 = null;
      this.ints = null;
      this.val = null;
      this.vals = null;
      this.arrayval = null;
    }
    else {
      if (initObj.hasOwnProperty('str1')) {
        this.str1 = initObj.str1
      }
      else {
        this.str1 = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('int1')) {
        this.int1 = initObj.int1
      }
      else {
        this.int1 = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('ints')) {
        this.ints = initObj.ints
      }
      else {
        this.ints = [];
      }
      if (initObj.hasOwnProperty('val')) {
        this.val = initObj.val
      }
      else {
        this.val = new Val();
      }
      if (initObj.hasOwnProperty('vals')) {
        this.vals = initObj.vals
      }
      else {
        this.vals = [];
      }
      if (initObj.hasOwnProperty('arrayval')) {
        this.arrayval = initObj.arrayval
      }
      else {
        this.arrayval = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EmbedTest
    // Serialize message field [str1]
    bufferOffset = std_msgs.msg.String.serialize(obj.str1, buffer, bufferOffset);
    // Serialize message field [int1]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.int1, buffer, bufferOffset);
    // Serialize message field [ints]
    // Serialize the length for message field [ints]
    bufferOffset = _serializer.uint32(obj.ints.length, buffer, bufferOffset);
    obj.ints.forEach((val) => {
      bufferOffset = std_msgs.msg.Int32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [val]
    bufferOffset = Val.serialize(obj.val, buffer, bufferOffset);
    // Serialize message field [vals]
    // Serialize the length for message field [vals]
    bufferOffset = _serializer.uint32(obj.vals.length, buffer, bufferOffset);
    obj.vals.forEach((val) => {
      bufferOffset = Val.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [arrayval]
    // Serialize the length for message field [arrayval]
    bufferOffset = _serializer.uint32(obj.arrayval.length, buffer, bufferOffset);
    obj.arrayval.forEach((val) => {
      bufferOffset = ArrayVal.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EmbedTest
    let len;
    let data = new EmbedTest(null);
    // Deserialize message field [str1]
    data.str1 = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [int1]
    data.int1 = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [ints]
    // Deserialize array length for message field [ints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ints[i] = std_msgs.msg.Int32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [val]
    data.val = Val.deserialize(buffer, bufferOffset);
    // Deserialize message field [vals]
    // Deserialize array length for message field [vals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.vals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.vals[i] = Val.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [arrayval]
    // Deserialize array length for message field [arrayval]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.arrayval = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.arrayval[i] = ArrayVal.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.str1);
    length += 4 * object.ints.length;
    length += Val.getMessageSize(object.val);
    object.vals.forEach((val) => {
      length += Val.getMessageSize(val);
    });
    object.arrayval.forEach((val) => {
      length += ArrayVal.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rospy/EmbedTest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f8b1fc6a0f70f541c9d6bd2886b9e249';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String str1
    std_msgs/Int32 int1
    std_msgs/Int32[] ints
    Val val
    Val[] vals
    ArrayVal[] arrayval
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: test_rospy/Val
    string val
    ================================================================================
    MSG: test_rospy/ArrayVal
    Val[] vals
    #Val[10] vals_fixed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EmbedTest(null);
    if (msg.str1 !== undefined) {
      resolved.str1 = std_msgs.msg.String.Resolve(msg.str1)
    }
    else {
      resolved.str1 = new std_msgs.msg.String()
    }

    if (msg.int1 !== undefined) {
      resolved.int1 = std_msgs.msg.Int32.Resolve(msg.int1)
    }
    else {
      resolved.int1 = new std_msgs.msg.Int32()
    }

    if (msg.ints !== undefined) {
      resolved.ints = new Array(msg.ints.length);
      for (let i = 0; i < resolved.ints.length; ++i) {
        resolved.ints[i] = std_msgs.msg.Int32.Resolve(msg.ints[i]);
      }
    }
    else {
      resolved.ints = []
    }

    if (msg.val !== undefined) {
      resolved.val = Val.Resolve(msg.val)
    }
    else {
      resolved.val = new Val()
    }

    if (msg.vals !== undefined) {
      resolved.vals = new Array(msg.vals.length);
      for (let i = 0; i < resolved.vals.length; ++i) {
        resolved.vals[i] = Val.Resolve(msg.vals[i]);
      }
    }
    else {
      resolved.vals = []
    }

    if (msg.arrayval !== undefined) {
      resolved.arrayval = new Array(msg.arrayval.length);
      for (let i = 0; i < resolved.arrayval.length; ++i) {
        resolved.arrayval[i] = ArrayVal.Resolve(msg.arrayval[i]);
      }
    }
    else {
      resolved.arrayval = []
    }

    return resolved;
    }
};

module.exports = EmbedTest;
