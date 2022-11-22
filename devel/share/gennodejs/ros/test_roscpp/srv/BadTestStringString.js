// Auto-generated. Do not edit!

// (in-package test_roscpp.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class BadTestStringStringRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.strbad = null;
    }
    else {
      if (initObj.hasOwnProperty('strbad')) {
        this.strbad = initObj.strbad
      }
      else {
        this.strbad = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BadTestStringStringRequest
    // Serialize message field [strbad]
    bufferOffset = _serializer.string(obj.strbad, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BadTestStringStringRequest
    let len;
    let data = new BadTestStringStringRequest(null);
    // Deserialize message field [strbad]
    data.strbad = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.strbad.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_roscpp/BadTestStringStringRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0eb2dbe383c40e9fd573702d3024aa21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # field name is different, so md5 sum should be different
    string strbad
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BadTestStringStringRequest(null);
    if (msg.strbad !== undefined) {
      resolved.strbad = msg.strbad;
    }
    else {
      resolved.strbad = ''
    }

    return resolved;
    }
};

class BadTestStringStringResponse {
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
        this.str = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BadTestStringStringResponse
    // Serialize message field [str]
    bufferOffset = _serializer.string(obj.str, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BadTestStringStringResponse
    let len;
    let data = new BadTestStringStringResponse(null);
    // Deserialize message field [str]
    data.str = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.str.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_roscpp/BadTestStringStringResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '994972b6e03928b2476860ce6c4c8e17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string str
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BadTestStringStringResponse(null);
    if (msg.str !== undefined) {
      resolved.str = msg.str;
    }
    else {
      resolved.str = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: BadTestStringStringRequest,
  Response: BadTestStringStringResponse,
  md5sum() { return '6b193467bc2d41be616d6b0e985e2a63'; },
  datatype() { return 'test_roscpp/BadTestStringString'; }
};
