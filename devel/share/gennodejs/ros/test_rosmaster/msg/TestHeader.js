// Auto-generated. Do not edit!

// (in-package test_rosmaster.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TestHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.caller_id = null;
      this.orig_caller_id = null;
      this.auto_header = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('caller_id')) {
        this.caller_id = initObj.caller_id
      }
      else {
        this.caller_id = '';
      }
      if (initObj.hasOwnProperty('orig_caller_id')) {
        this.orig_caller_id = initObj.orig_caller_id
      }
      else {
        this.orig_caller_id = '';
      }
      if (initObj.hasOwnProperty('auto_header')) {
        this.auto_header = initObj.auto_header
      }
      else {
        this.auto_header = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestHeader
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [caller_id]
    bufferOffset = _serializer.string(obj.caller_id, buffer, bufferOffset);
    // Serialize message field [orig_caller_id]
    bufferOffset = _serializer.string(obj.orig_caller_id, buffer, bufferOffset);
    // Serialize message field [auto_header]
    bufferOffset = _serializer.byte(obj.auto_header, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestHeader
    let len;
    let data = new TestHeader(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [caller_id]
    data.caller_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [orig_caller_id]
    data.orig_caller_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [auto_header]
    data.auto_header = _deserializer.byte(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.caller_id.length;
    length += object.orig_caller_id.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosmaster/TestHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b5a00f536da2f756ba6aebcf795a967';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # caller_id of most recent node to send this message
    string caller_id
    # caller_id of the original node to send this message
    string orig_caller_id
    
    byte auto_header # autoset header on response
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestHeader(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.caller_id !== undefined) {
      resolved.caller_id = msg.caller_id;
    }
    else {
      resolved.caller_id = ''
    }

    if (msg.orig_caller_id !== undefined) {
      resolved.orig_caller_id = msg.orig_caller_id;
    }
    else {
      resolved.orig_caller_id = ''
    }

    if (msg.auto_header !== undefined) {
      resolved.auto_header = msg.auto_header;
    }
    else {
      resolved.auto_header = 0
    }

    return resolved;
    }
};

module.exports = TestHeader;
