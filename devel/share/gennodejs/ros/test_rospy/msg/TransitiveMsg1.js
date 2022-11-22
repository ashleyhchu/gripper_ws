// Auto-generated. Do not edit!

// (in-package test_rospy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TransitiveMsg2 = require('./TransitiveMsg2.js');

//-----------------------------------------------------------

class TransitiveMsg1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg2 = null;
    }
    else {
      if (initObj.hasOwnProperty('msg2')) {
        this.msg2 = initObj.msg2
      }
      else {
        this.msg2 = new TransitiveMsg2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransitiveMsg1
    // Serialize message field [msg2]
    bufferOffset = TransitiveMsg2.serialize(obj.msg2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransitiveMsg1
    let len;
    let data = new TransitiveMsg1(null);
    // Deserialize message field [msg2]
    data.msg2 = TransitiveMsg2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rospy/TransitiveMsg1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '72751523a989ee2c7a44c006464315e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TransitiveMsg1(null);
    if (msg.msg2 !== undefined) {
      resolved.msg2 = TransitiveMsg2.Resolve(msg.msg2)
    }
    else {
      resolved.msg2 = new TransitiveMsg2()
    }

    return resolved;
    }
};

module.exports = TransitiveMsg1;
