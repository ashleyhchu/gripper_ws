// Auto-generated. Do not edit!

// (in-package test_roscpp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let rosgraph_msgs = _finder('rosgraph_msgs');

//-----------------------------------------------------------

class VariableLengthArrayOfExternal {
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
        this.a = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VariableLengthArrayOfExternal
    // Serialize message field [a]
    // Serialize the length for message field [a]
    bufferOffset = _serializer.uint32(obj.a.length, buffer, bufferOffset);
    obj.a.forEach((val) => {
      bufferOffset = rosgraph_msgs.msg.Log.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VariableLengthArrayOfExternal
    let len;
    let data = new VariableLengthArrayOfExternal(null);
    // Deserialize message field [a]
    // Deserialize array length for message field [a]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.a = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.a[i] = rosgraph_msgs.msg.Log.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.a.forEach((val) => {
      length += rosgraph_msgs.msg.Log.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/VariableLengthArrayOfExternal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cc431047757f431ecd2754e03aa592f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This comment has "quotes" in it
    rosgraph_msgs/Log[] a
    ================================================================================
    MSG: rosgraph_msgs/Log
    ##
    ## Severity level constants
    ##
    byte DEBUG=1 #debug level
    byte INFO=2  #general level
    byte WARN=4  #warning level
    byte ERROR=8 #error level
    byte FATAL=16 #fatal/critical level
    ##
    ## Fields
    ##
    Header header
    byte level
    string name # name of the node
    string msg # message 
    string file # file the message came from
    string function # function the message came from
    uint32 line # line the message came from
    string[] topics # topic names that the node publishes
    
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
    const resolved = new VariableLengthArrayOfExternal(null);
    if (msg.a !== undefined) {
      resolved.a = new Array(msg.a.length);
      for (let i = 0; i < resolved.a.length; ++i) {
        resolved.a[i] = rosgraph_msgs.msg.Log.Resolve(msg.a[i]);
      }
    }
    else {
      resolved.a = []
    }

    return resolved;
    }
};

module.exports = VariableLengthArrayOfExternal;
