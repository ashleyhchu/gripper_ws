// Auto-generated. Do not edit!

// (in-package test_rosmaster.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let String = require('./String.js');

//-----------------------------------------------------------

class RosmsgC {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s1 = null;
      this.s2 = null;
    }
    else {
      if (initObj.hasOwnProperty('s1')) {
        this.s1 = initObj.s1
      }
      else {
        this.s1 = new String();
      }
      if (initObj.hasOwnProperty('s2')) {
        this.s2 = initObj.s2
      }
      else {
        this.s2 = new String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RosmsgC
    // Serialize message field [s1]
    bufferOffset = String.serialize(obj.s1, buffer, bufferOffset);
    // Serialize message field [s2]
    bufferOffset = String.serialize(obj.s2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RosmsgC
    let len;
    let data = new RosmsgC(null);
    // Deserialize message field [s1]
    data.s1 = String.deserialize(buffer, bufferOffset);
    // Deserialize message field [s2]
    data.s2 = String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += String.getMessageSize(object.s1);
    length += String.getMessageSize(object.s2);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosmaster/RosmsgC';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc91a7e3c1498150f3554cbcab2800d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    String s1
    String s2
    
    ================================================================================
    MSG: test_rosmaster/String
    # Copy of std_msgs/String.msg to avoid having tests require a dependency on std_msgs.
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RosmsgC(null);
    if (msg.s1 !== undefined) {
      resolved.s1 = String.Resolve(msg.s1)
    }
    else {
      resolved.s1 = new String()
    }

    if (msg.s2 !== undefined) {
      resolved.s2 = String.Resolve(msg.s2)
    }
    else {
      resolved.s2 = new String()
    }

    return resolved;
    }
};

module.exports = RosmsgC;
