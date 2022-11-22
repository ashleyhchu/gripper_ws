// Auto-generated. Do not edit!

// (in-package test_rospy.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Val = require('../msg/Val.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class StringStringRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.str = null;
      this.str2 = null;
    }
    else {
      if (initObj.hasOwnProperty('str')) {
        this.str = initObj.str
      }
      else {
        this.str = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('str2')) {
        this.str2 = initObj.str2
      }
      else {
        this.str2 = new Val();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StringStringRequest
    // Serialize message field [str]
    bufferOffset = std_msgs.msg.String.serialize(obj.str, buffer, bufferOffset);
    // Serialize message field [str2]
    bufferOffset = Val.serialize(obj.str2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StringStringRequest
    let len;
    let data = new StringStringRequest(null);
    // Deserialize message field [str]
    data.str = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [str2]
    data.str2 = Val.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.str);
    length += Val.getMessageSize(object.str2);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rospy/StringStringRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1546156fedebbd48201e9764f27ae3e2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String str
    Val str2
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
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
    const resolved = new StringStringRequest(null);
    if (msg.str !== undefined) {
      resolved.str = std_msgs.msg.String.Resolve(msg.str)
    }
    else {
      resolved.str = new std_msgs.msg.String()
    }

    if (msg.str2 !== undefined) {
      resolved.str2 = Val.Resolve(msg.str2)
    }
    else {
      resolved.str2 = new Val()
    }

    return resolved;
    }
};

class StringStringResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.str = null;
    }
    else {
      if (initObj.hasOwnProperty('str')) {
        this.str = initObj.str
      }
      else {
        this.str = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StringStringResponse
    // Serialize message field [str]
    bufferOffset = std_msgs.msg.String.serialize(obj.str, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StringStringResponse
    let len;
    let data = new StringStringResponse(null);
    // Deserialize message field [str]
    data.str = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.str);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rospy/StringStringResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32224c1636e75e68745b61629dfa07c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String str
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StringStringResponse(null);
    if (msg.str !== undefined) {
      resolved.str = std_msgs.msg.String.Resolve(msg.str)
    }
    else {
      resolved.str = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = {
  Request: StringStringRequest,
  Response: StringStringResponse,
  md5sum() { return '37bf11bf0378473e105b4a52f61d1a75'; },
  datatype() { return 'test_rospy/StringString'; }
};
