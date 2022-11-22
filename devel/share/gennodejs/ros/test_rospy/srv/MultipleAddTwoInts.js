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

class MultipleAddTwoIntsRequest {
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
    // Serializes a message object of type MultipleAddTwoIntsRequest
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
    //deserializes a message object of type MultipleAddTwoIntsRequest
    let len;
    let data = new MultipleAddTwoIntsRequest(null);
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
    return 'test_rospy/MultipleAddTwoIntsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55328e64986cccd71be7fe834e693c76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # test case for having multiple return values
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
    const resolved = new MultipleAddTwoIntsRequest(null);
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

class MultipleAddTwoIntsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ab = null;
      this.cd = null;
    }
    else {
      if (initObj.hasOwnProperty('ab')) {
        this.ab = initObj.ab
      }
      else {
        this.ab = 0;
      }
      if (initObj.hasOwnProperty('cd')) {
        this.cd = initObj.cd
      }
      else {
        this.cd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultipleAddTwoIntsResponse
    // Serialize message field [ab]
    bufferOffset = _serializer.int32(obj.ab, buffer, bufferOffset);
    // Serialize message field [cd]
    bufferOffset = _serializer.int32(obj.cd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultipleAddTwoIntsResponse
    let len;
    let data = new MultipleAddTwoIntsResponse(null);
    // Deserialize message field [ab]
    data.ab = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cd]
    data.cd = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rospy/MultipleAddTwoIntsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6fcb876df417a4130d2c7eb2d1b2436';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ab
    int32 cd
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultipleAddTwoIntsResponse(null);
    if (msg.ab !== undefined) {
      resolved.ab = msg.ab;
    }
    else {
      resolved.ab = 0
    }

    if (msg.cd !== undefined) {
      resolved.cd = msg.cd;
    }
    else {
      resolved.cd = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: MultipleAddTwoIntsRequest,
  Response: MultipleAddTwoIntsResponse,
  md5sum() { return '51899e11b54a9c6a1153d9517a921791'; },
  datatype() { return 'test_rospy/MultipleAddTwoInts'; }
};
