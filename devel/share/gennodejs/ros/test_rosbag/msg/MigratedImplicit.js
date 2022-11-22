// Auto-generated. Do not edit!

// (in-package test_rosbag.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MigratedExplicit = require('./MigratedExplicit.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MigratedImplicit {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.field4 = null;
      this.field3 = null;
      this.field2 = null;
      this.field1 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('field4')) {
        this.field4 = initObj.field4
      }
      else {
        this.field4 = new MigratedExplicit();
      }
      if (initObj.hasOwnProperty('field3')) {
        this.field3 = initObj.field3
      }
      else {
        this.field3 = '';
      }
      if (initObj.hasOwnProperty('field2')) {
        this.field2 = initObj.field2
      }
      else {
        this.field2 = 0.0;
      }
      if (initObj.hasOwnProperty('field1')) {
        this.field1 = initObj.field1
      }
      else {
        this.field1 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MigratedImplicit
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [field4]
    bufferOffset = MigratedExplicit.serialize(obj.field4, buffer, bufferOffset);
    // Serialize message field [field3]
    bufferOffset = _serializer.string(obj.field3, buffer, bufferOffset);
    // Serialize message field [field2]
    bufferOffset = _serializer.float32(obj.field2, buffer, bufferOffset);
    // Serialize message field [field1]
    bufferOffset = _serializer.int32(obj.field1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MigratedImplicit
    let len;
    let data = new MigratedImplicit(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [field4]
    data.field4 = MigratedExplicit.deserialize(buffer, bufferOffset);
    // Deserialize message field [field3]
    data.field3 = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [field2]
    data.field2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [field1]
    data.field1 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += MigratedExplicit.getMessageSize(object.field4);
    length += object.field3.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosbag/MigratedImplicit';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90cb5a45bdc5b3810920ed0b9d482572';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header  header
    MigratedExplicit field4 #(58.2 "aldfkja 17", 82)
    string  field3 #"kljene"
    float32 field2 #16.32
    int32   field1 #34
    
    
    
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
    const resolved = new MigratedImplicit(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.field4 !== undefined) {
      resolved.field4 = MigratedExplicit.Resolve(msg.field4)
    }
    else {
      resolved.field4 = new MigratedExplicit()
    }

    if (msg.field3 !== undefined) {
      resolved.field3 = msg.field3;
    }
    else {
      resolved.field3 = ''
    }

    if (msg.field2 !== undefined) {
      resolved.field2 = msg.field2;
    }
    else {
      resolved.field2 = 0.0
    }

    if (msg.field1 !== undefined) {
      resolved.field1 = msg.field1;
    }
    else {
      resolved.field1 = 0
    }

    return resolved;
    }
};

module.exports = MigratedImplicit;
