// Auto-generated. Do not edit!

// (in-package test_rospy.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ListReturnRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
      this.c = null;
      this.d = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = 0;
      }
      if (initObj.hasOwnProperty('c')) {
        this.c = initObj.c
      }
      else {
        this.c = 0;
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListReturnRequest
    // Serialize message field [a]
    bufferOffset = _serializer.int32(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = _serializer.int32(obj.b, buffer, bufferOffset);
    // Serialize message field [c]
    bufferOffset = _serializer.int32(obj.c, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.int32(obj.d, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListReturnRequest
    let len;
    let data = new ListReturnRequest(null);
    // Deserialize message field [a]
    data.a = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [c]
    data.c = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rospy/ListReturnRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55328e64986cccd71be7fe834e693c76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # test case for having single list return value
    int32 a
    int32 b
    int32 c
    int32 d
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListReturnRequest(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    if (msg.b !== undefined) {
      resolved.b = msg.b;
    }
    else {
      resolved.b = 0
    }

    if (msg.c !== undefined) {
      resolved.c = msg.c;
    }
    else {
      resolved.c = 0
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0
    }

    return resolved;
    }
};

class ListReturnResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.abcd = null;
    }
    else {
      if (initObj.hasOwnProperty('abcd')) {
        this.abcd = initObj.abcd
      }
      else {
        this.abcd = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListReturnResponse
    // Serialize message field [abcd]
    bufferOffset = _arraySerializer.int32(obj.abcd, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListReturnResponse
    let len;
    let data = new ListReturnResponse(null);
    // Deserialize message field [abcd]
    data.abcd = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.abcd.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rospy/ListReturnResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f962153177b365e43b03cfe90160f33e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] abcd
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListReturnResponse(null);
    if (msg.abcd !== undefined) {
      resolved.abcd = msg.abcd;
    }
    else {
      resolved.abcd = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListReturnRequest,
  Response: ListReturnResponse,
  md5sum() { return '8083abf57e6eb0ff97ebb506984b66b8'; },
  datatype() { return 'test_rospy/ListReturn'; }
};
