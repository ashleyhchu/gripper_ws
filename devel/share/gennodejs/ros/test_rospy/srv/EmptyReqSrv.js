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

class EmptyReqSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EmptyReqSrvRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EmptyReqSrvRequest
    let len;
    let data = new EmptyReqSrvRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rospy/EmptyReqSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EmptyReqSrvRequest(null);
    return resolved;
    }
};

class EmptyReqSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fake_secret = null;
    }
    else {
      if (initObj.hasOwnProperty('fake_secret')) {
        this.fake_secret = initObj.fake_secret
      }
      else {
        this.fake_secret = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EmptyReqSrvResponse
    // Serialize message field [fake_secret]
    bufferOffset = _serializer.int32(obj.fake_secret, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EmptyReqSrvResponse
    let len;
    let data = new EmptyReqSrvResponse(null);
    // Deserialize message field [fake_secret]
    data.fake_secret = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rospy/EmptyReqSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1280578cbe4073963a4321b9248d566e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 fake_secret
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EmptyReqSrvResponse(null);
    if (msg.fake_secret !== undefined) {
      resolved.fake_secret = msg.fake_secret;
    }
    else {
      resolved.fake_secret = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: EmptyReqSrvRequest,
  Response: EmptyReqSrvResponse,
  md5sum() { return '1280578cbe4073963a4321b9248d566e'; },
  datatype() { return 'test_rospy/EmptyReqSrv'; }
};
