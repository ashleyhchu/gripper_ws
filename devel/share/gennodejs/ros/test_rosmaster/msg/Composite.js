// Auto-generated. Do not edit!

// (in-package test_rosmaster.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CompositeA = require('./CompositeA.js');
let CompositeB = require('./CompositeB.js');

//-----------------------------------------------------------

class Composite {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
      this.b = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = new CompositeA();
      }
      if (initObj.hasOwnProperty('b')) {
        this.b = initObj.b
      }
      else {
        this.b = new CompositeB();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Composite
    // Serialize message field [a]
    bufferOffset = CompositeA.serialize(obj.a, buffer, bufferOffset);
    // Serialize message field [b]
    bufferOffset = CompositeB.serialize(obj.b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Composite
    let len;
    let data = new Composite(null);
    // Deserialize message field [a]
    data.a = CompositeA.deserialize(buffer, bufferOffset);
    // Deserialize message field [b]
    data.b = CompositeB.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosmaster/Composite';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd8fb6eb869ad3956b50e8737d96dc9fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # composite message. required for testing import calculation in generators
    CompositeA a
    CompositeB b
    
    ================================================================================
    MSG: test_rosmaster/CompositeA
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: test_rosmaster/CompositeB
    # copy of geometry_msgs/Point for testing
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Composite(null);
    if (msg.a !== undefined) {
      resolved.a = CompositeA.Resolve(msg.a)
    }
    else {
      resolved.a = new CompositeA()
    }

    if (msg.b !== undefined) {
      resolved.b = CompositeB.Resolve(msg.b)
    }
    else {
      resolved.b = new CompositeB()
    }

    return resolved;
    }
};

module.exports = Composite;
