// Auto-generated. Do not edit!

// (in-package test_roscpp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class HeaderNotFirstMember {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.foo = null;
      this.header = null;
    }
    else {
      if (initObj.hasOwnProperty('foo')) {
        this.foo = initObj.foo
      }
      else {
        this.foo = 0;
      }
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HeaderNotFirstMember
    // Serialize message field [foo]
    bufferOffset = _serializer.int8(obj.foo, buffer, bufferOffset);
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HeaderNotFirstMember
    let len;
    let data = new HeaderNotFirstMember(null);
    // Deserialize message field [foo]
    data.foo = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/HeaderNotFirstMember';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7ed781820d7a36c5947d0f441f50964';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 foo
    Header header
    
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
    const resolved = new HeaderNotFirstMember(null);
    if (msg.foo !== undefined) {
      resolved.foo = msg.foo;
    }
    else {
      resolved.foo = 0
    }

    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    return resolved;
    }
};

module.exports = HeaderNotFirstMember;
