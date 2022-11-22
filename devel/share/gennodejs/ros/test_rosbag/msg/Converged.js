// Auto-generated. Do not edit!

// (in-package test_rosbag.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SimpleMigrated = require('./SimpleMigrated.js');

//-----------------------------------------------------------

class Converged {
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
        this.field1 = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('field2')) {
        this.field2 = initObj.field2
      }
      else {
        this.field2 = new Array(4).fill(new SimpleMigrated());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Converged
    // Check that the constant length array field [field1] has the right length
    if (obj.field1.length !== 4) {
      throw new Error('Unable to serialize array field field1 - length must be 4')
    }
    // Serialize message field [field1]
    bufferOffset = _arraySerializer.float32(obj.field1, buffer, bufferOffset, 4);
    // Check that the constant length array field [field2] has the right length
    if (obj.field2.length !== 4) {
      throw new Error('Unable to serialize array field field2 - length must be 4')
    }
    // Serialize message field [field2]
    obj.field2.forEach((val) => {
      bufferOffset = SimpleMigrated.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Converged
    let len;
    let data = new Converged(null);
    // Deserialize message field [field1]
    data.field1 = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [field2]
    len = 4;
    data.field2 = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.field2[i] = SimpleMigrated.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rosbag/Converged';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb364bc8a2a4b0b810763576f44bc36d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[4]           field1 # [1.2, 3.4, 5.6, 7.8]
    SimpleMigrated[4]    field2 # [11, 22, 33, 44]
    ================================================================================
    MSG: test_rosbag/SimpleMigrated
    int32 data # 42
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Converged(null);
    if (msg.field1 !== undefined) {
      resolved.field1 = msg.field1;
    }
    else {
      resolved.field1 = new Array(4).fill(0)
    }

    if (msg.field2 !== undefined) {
      resolved.field2 = new Array(4)
      for (let i = 0; i < resolved.field2.length; ++i) {
        if (msg.field2.length > i) {
          resolved.field2[i] = SimpleMigrated.Resolve(msg.field2[i]);
        }
        else {
          resolved.field2[i] = new SimpleMigrated();
        }
      }
    }
    else {
      resolved.field2 = new Array(4).fill(new SimpleMigrated())
    }

    return resolved;
    }
};

module.exports = Converged;
