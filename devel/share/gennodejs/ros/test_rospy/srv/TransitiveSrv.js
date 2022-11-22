// Auto-generated. Do not edit!

// (in-package test_rospy.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TransitiveMsg1 = require('../msg/TransitiveMsg1.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class TransitiveSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg = null;
    }
    else {
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = new TransitiveMsg1();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransitiveSrvRequest
    // Serialize message field [msg]
    bufferOffset = TransitiveMsg1.serialize(obj.msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransitiveSrvRequest
    let len;
    let data = new TransitiveSrvRequest(null);
    // Deserialize message field [msg]
    data.msg = TransitiveMsg1.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rospy/TransitiveSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c9627b8665f2e2514f3d19406d2ed17d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    test_rospy/TransitiveMsg1 msg
    
    ================================================================================
    MSG: test_rospy/TransitiveMsg1
    TransitiveMsg2 msg2
    
    
    ================================================================================
    MSG: test_rospy/TransitiveMsg2
    test_rosmaster/Composite data
    
    ================================================================================
    MSG: test_rosmaster/Composite
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
    const resolved = new TransitiveSrvRequest(null);
    if (msg.msg !== undefined) {
      resolved.msg = TransitiveMsg1.Resolve(msg.msg)
    }
    else {
      resolved.msg = new TransitiveMsg1()
    }

    return resolved;
    }
};

class TransitiveSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.a = null;
    }
    else {
      if (initObj.hasOwnProperty('a')) {
        this.a = initObj.a
      }
      else {
        this.a = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransitiveSrvResponse
    // Serialize message field [a]
    bufferOffset = _serializer.int32(obj.a, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransitiveSrvResponse
    let len;
    let data = new TransitiveSrvResponse(null);
    // Deserialize message field [a]
    data.a = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rospy/TransitiveSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5c9fb1a886e81e3162a5c87bf55c072b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 a
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TransitiveSrvResponse(null);
    if (msg.a !== undefined) {
      resolved.a = msg.a;
    }
    else {
      resolved.a = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: TransitiveSrvRequest,
  Response: TransitiveSrvResponse,
  md5sum() { return '8b7918ee2b81eaf825f4c70de011f6fa'; },
  datatype() { return 'test_rospy/TransitiveSrv'; }
};
