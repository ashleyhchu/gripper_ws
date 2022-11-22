// Auto-generated. Do not edit!

// (in-package test_rosbag.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Unmigrated = require('./Unmigrated.js');

//-----------------------------------------------------------

class SubUnmigrated {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.field1 = null;
      this.field2 = null;
    }
    else {
      if (initObj.hasOwnProperty('field1')) {
        this.field1 = initObj.field1
      }
      else {
        this.field1 = 0;
      }
      if (initObj.hasOwnProperty('field2')) {
        this.field2 = initObj.field2
      }
      else {
        this.field2 = new Unmigrated();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SubUnmigrated
    // Serialize message field [field1]
    bufferOffset = _serializer.int32(obj.field1, buffer, bufferOffset);
    // Serialize message field [field2]
    bufferOffset = Unmigrated.serialize(obj.field2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubUnmigrated
    let len;
    let data = new SubUnmigrated(null);
    // Deserialize message field [field1]
    data.field1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [field2]
    data.field2 = Unmigrated.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Unmigrated.getMessageSize(object.field2);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosbag/SubUnmigrated';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4aa26f1425c68e8cf54c7adae649c1d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32      field1 # 92
    Unmigrated field2 # (12, "uuiasjs", 61.7)
    
    ================================================================================
    MSG: test_rosbag/Unmigrated
    int32   field1 #12
    string  field2 #"uuiasjs"
    float32 field3 #61.7
    float64 field4 #123.4
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SubUnmigrated(null);
    if (msg.field1 !== undefined) {
      resolved.field1 = msg.field1;
    }
    else {
      resolved.field1 = 0
    }

    if (msg.field2 !== undefined) {
      resolved.field2 = Unmigrated.Resolve(msg.field2)
    }
    else {
      resolved.field2 = new Unmigrated()
    }

    return resolved;
    }
};

module.exports = SubUnmigrated;
