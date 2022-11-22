// Auto-generated. Do not edit!

// (in-package test_rosmaster.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RossrvARequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.areq = null;
    }
    else {
      if (initObj.hasOwnProperty('areq')) {
        this.areq = initObj.areq
      }
      else {
        this.areq = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RossrvARequest
    // Serialize message field [areq]
    bufferOffset = _serializer.int32(obj.areq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RossrvARequest
    let len;
    let data = new RossrvARequest(null);
    // Deserialize message field [areq]
    data.areq = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rosmaster/RossrvARequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0217cf2f145df7686492b0471b5ecf7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 areq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RossrvARequest(null);
    if (msg.areq !== undefined) {
      resolved.areq = msg.areq;
    }
    else {
      resolved.areq = 0
    }

    return resolved;
    }
};

class RossrvAResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.aresp = null;
    }
    else {
      if (initObj.hasOwnProperty('aresp')) {
        this.aresp = initObj.aresp
      }
      else {
        this.aresp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RossrvAResponse
    // Serialize message field [aresp]
    bufferOffset = _serializer.int32(obj.aresp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RossrvAResponse
    let len;
    let data = new RossrvAResponse(null);
    // Deserialize message field [aresp]
    data.aresp = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rosmaster/RossrvAResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7714078796589731036f4da799e23357';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 aresp
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RossrvAResponse(null);
    if (msg.aresp !== undefined) {
      resolved.aresp = msg.aresp;
    }
    else {
      resolved.aresp = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: RossrvARequest,
  Response: RossrvAResponse,
  md5sum() { return '76c968b761b29d4bcc0a15cf4316a1e7'; },
  datatype() { return 'test_rosmaster/RossrvA'; }
};
