// Auto-generated. Do not edit!

// (in-package test_roscpp.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point32 = require('./Point32.js');
let ChannelFloat32 = require('./ChannelFloat32.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PointCloud {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.pts = null;
      this.chan = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('pts')) {
        this.pts = initObj.pts
      }
      else {
        this.pts = [];
      }
      if (initObj.hasOwnProperty('chan')) {
        this.chan = initObj.chan
      }
      else {
        this.chan = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PointCloud
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [pts]
    // Serialize the length for message field [pts]
    bufferOffset = _serializer.uint32(obj.pts.length, buffer, bufferOffset);
    obj.pts.forEach((val) => {
      bufferOffset = Point32.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [chan]
    // Serialize the length for message field [chan]
    bufferOffset = _serializer.uint32(obj.chan.length, buffer, bufferOffset);
    obj.chan.forEach((val) => {
      bufferOffset = ChannelFloat32.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PointCloud
    let len;
    let data = new PointCloud(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [pts]
    // Deserialize array length for message field [pts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts[i] = Point32.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [chan]
    // Deserialize array length for message field [chan]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.chan = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.chan[i] = ChannelFloat32.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 12 * object.pts.length;
    object.chan.forEach((val) => {
      length += ChannelFloat32.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roscpp/PointCloud';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c47b5cedd2b77d241b27547ed7624840';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Point32[] pts
    ChannelFloat32[] chan
    
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
    MSG: test_roscpp/Point32
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: test_roscpp/ChannelFloat32
    string name
    float32[] vals
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PointCloud(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.pts !== undefined) {
      resolved.pts = new Array(msg.pts.length);
      for (let i = 0; i < resolved.pts.length; ++i) {
        resolved.pts[i] = Point32.Resolve(msg.pts[i]);
      }
    }
    else {
      resolved.pts = []
    }

    if (msg.chan !== undefined) {
      resolved.chan = new Array(msg.chan.length);
      for (let i = 0; i < resolved.chan.length; ++i) {
        resolved.chan[i] = ChannelFloat32.Resolve(msg.chan[i]);
      }
    }
    else {
      resolved.chan = []
    }

    return resolved;
    }
};

module.exports = PointCloud;
