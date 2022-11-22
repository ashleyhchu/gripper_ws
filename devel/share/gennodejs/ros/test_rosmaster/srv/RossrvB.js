// Auto-generated. Do not edit!

// (in-package test_rosmaster.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Empty = require('../msg/Empty.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class RossrvBRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.empty = null;
    }
    else {
      if (initObj.hasOwnProperty('empty')) {
        this.empty = initObj.empty
      }
      else {
        this.empty = new Empty();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RossrvBRequest
    // Serialize message field [empty]
    bufferOffset = Empty.serialize(obj.empty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RossrvBRequest
    let len;
    let data = new RossrvBRequest(null);
    // Deserialize message field [empty]
    data.empty = Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rosmaster/RossrvBRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6aac6c697d5414bc0fcede8c33981d0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Empty empty
    
    ================================================================================
    MSG: test_rosmaster/Empty
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RossrvBRequest(null);
    if (msg.empty !== undefined) {
      resolved.empty = Empty.Resolve(msg.empty)
    }
    else {
      resolved.empty = new Empty()
    }

    return resolved;
    }
};

class RossrvBResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.empty = null;
    }
    else {
      if (initObj.hasOwnProperty('empty')) {
        this.empty = initObj.empty
      }
      else {
        this.empty = new Empty();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RossrvBResponse
    // Serialize message field [empty]
    bufferOffset = Empty.serialize(obj.empty, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RossrvBResponse
    let len;
    let data = new RossrvBResponse(null);
    // Deserialize message field [empty]
    data.empty = Empty.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rosmaster/RossrvBResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6aac6c697d5414bc0fcede8c33981d0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Empty empty
    
    
    ================================================================================
    MSG: test_rosmaster/Empty
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RossrvBResponse(null);
    if (msg.empty !== undefined) {
      resolved.empty = Empty.Resolve(msg.empty)
    }
    else {
      resolved.empty = new Empty()
    }

    return resolved;
    }
};

module.exports = {
  Request: RossrvBRequest,
  Response: RossrvBResponse,
  md5sum() { return '928fb104d412cd4f5983340b98df1876'; },
  datatype() { return 'test_rosmaster/RossrvB'; }
};
