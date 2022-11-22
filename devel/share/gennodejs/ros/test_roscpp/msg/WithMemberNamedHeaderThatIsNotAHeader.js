// Auto-generated. Do not edit!

// (in-package test_roscpp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CustomHeader = require('./CustomHeader.js');

//-----------------------------------------------------------

class WithMemberNamedHeaderThatIsNotAHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.a = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new CustomHeader();
      }
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WithMemberNamedHeaderThatIsNotAHeader
    // Serialize message field [header]
    bufferOffset = CustomHeader.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [a]
    bufferOffset = _serializer.uint32(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WithMemberNamedHeaderThatIsNotAHeader
    let len;
    let data = new WithMemberNamedHeaderThatIsNotAHeader(null);
    // Deserialize message field [header]
    data.header = CustomHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [a]
    data.a = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/WithMemberNamedHeaderThatIsNotAHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59a71bc6c7b0e5643fa9d213cdf4c63c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    CustomHeader header
    uint32 a
    ================================================================================
    MSG: test_roscpp/CustomHeader
    uint32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WithMemberNamedHeaderThatIsNotAHeader(null);
    if (msg.header !== undefined) {
      resolved.header = CustomHeader.Resolve(msg.header)
    }
    else {
      resolved.header = new CustomHeader()
    }

    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    return resolved;
    }
};

module.exports = WithMemberNamedHeaderThatIsNotAHeader;
