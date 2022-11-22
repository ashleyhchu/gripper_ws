// Auto-generated. Do not edit!

// (in-package test_rospy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EmbedTest = require('./EmbedTest.js');

//-----------------------------------------------------------

class TransitiveImport {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new EmbedTest();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransitiveImport
    // Serialize message field [data]
    bufferOffset = EmbedTest.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransitiveImport
    let len;
    let data = new TransitiveImport(null);
    // Deserialize message field [data]
    data.data = EmbedTest.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += EmbedTest.getMessageSize(object.data);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rospy/TransitiveImport';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27665539bacd6d2d02a7538692d3d3d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Bug #2133/2139: EmbedTest uses std_msgs, so TransitiveImport needs it as well
    EmbedTest data
    ================================================================================
    MSG: test_rospy/EmbedTest
    std_msgs/String str1
    std_msgs/Int32 int1
    std_msgs/Int32[] ints
    Val val
    Val[] vals
    ArrayVal[] arrayval
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: test_rospy/Val
    string val
    ================================================================================
    MSG: test_rospy/ArrayVal
    Val[] vals
    #Val[10] vals_fixed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TransitiveImport(null);
    if (msg.data !== undefined) {
      resolved.data = EmbedTest.Resolve(msg.data)
    }
    else {
      resolved.data = new EmbedTest()
    }

    return resolved;
    }
};

module.exports = TransitiveImport;
