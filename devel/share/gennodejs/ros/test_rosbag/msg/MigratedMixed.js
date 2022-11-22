// Auto-generated. Do not edit!

// (in-package test_rosbag.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MigratedImplicit = require('./MigratedImplicit.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MigratedMixed {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.field1 = null;
      this.field2 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('field1')) {
        this.field1 = initObj.field1
      }
      else {
        this.field1 = new MigratedImplicit();
      }
      if (initObj.hasOwnProperty('field2')) {
        this.field2 = initObj.field2
      }
      else {
        this.field2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MigratedMixed
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [field1]
    bufferOffset = MigratedImplicit.serialize(obj.field1, buffer, bufferOffset);
    // Serialize message field [field2]
    bufferOffset = _serializer.int32(obj.field2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MigratedMixed
    let len;
    let data = new MigratedMixed(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [field1]
    data.field1 = MigratedImplicit.deserialize(buffer, bufferOffset);
    // Deserialize message field [field2]
    data.field2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += MigratedImplicit.getMessageSize(object.field1);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosbag/MigratedMixed';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5edc5b4f4c64456755b51dacf2f13c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header             header
    MigratedImplicit   field1 #(34, 16.32, "kjljene", (58.2, "aldfkja 17", 82))
    int32              field2 #59
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: test_rosbag/MigratedImplicit
    Header  header
    MigratedExplicit field4 #(58.2 "aldfkja 17", 82)
    string  field3 #"kljene"
    float32 field2 #16.32
    int32   field1 #34
    
    
    
    ================================================================================
    MSG: test_rosbag/MigratedExplicit
    Header  header
    float32 field2 #58.2
    string  combo_field3 #"aldfkja 17"
    int32   field4 #82
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MigratedMixed(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.field1 !== undefined) {
      resolved.field1 = MigratedImplicit.Resolve(msg.field1)
    }
    else {
      resolved.field1 = new MigratedImplicit()
    }

    if (msg.field2 !== undefined) {
      resolved.field2 = msg.field2;
    }
    else {
      resolved.field2 = 0
    }

    return resolved;
    }
};

module.exports = MigratedMixed;
