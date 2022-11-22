// Auto-generated. Do not edit!

// (in-package test_roslib_comm.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ArrayOfMsgs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.strings = null;
      this.times = null;
      this.muls = null;
    }
    else {
      if (initObj.hasOwnProperty('strings')) {
        this.strings = initObj.strings
      }
      else {
        this.strings = [];
      }
      if (initObj.hasOwnProperty('times')) {
        this.times = initObj.times
      }
      else {
        this.times = [];
      }
      if (initObj.hasOwnProperty('muls')) {
        this.muls = initObj.muls
      }
      else {
        this.muls = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArrayOfMsgs
    // Serialize message field [strings]
    // Serialize the length for message field [strings]
    bufferOffset = _serializer.uint32(obj.strings.length, buffer, bufferOffset);
    obj.strings.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [times]
    // Serialize the length for message field [times]
    bufferOffset = _serializer.uint32(obj.times.length, buffer, bufferOffset);
    obj.times.forEach((val) => {
      bufferOffset = std_msgs.msg.Time.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [muls]
    // Serialize the length for message field [muls]
    bufferOffset = _serializer.uint32(obj.muls.length, buffer, bufferOffset);
    obj.muls.forEach((val) => {
      bufferOffset = std_msgs.msg.MultiArrayLayout.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArrayOfMsgs
    let len;
    let data = new ArrayOfMsgs(null);
    // Deserialize message field [strings]
    // Deserialize array length for message field [strings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.strings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.strings[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [times]
    // Deserialize array length for message field [times]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.times = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.times[i] = std_msgs.msg.Time.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [muls]
    // Deserialize array length for message field [muls]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.muls = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.muls[i] = std_msgs.msg.MultiArrayLayout.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.strings.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    length += 8 * object.times.length;
    object.muls.forEach((val) => {
      length += std_msgs.msg.MultiArrayLayout.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_roslib_comm/ArrayOfMsgs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f4cf3ffabe2555a0cfe19c974f01a01';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String[] strings
    std_msgs/Time[] times
    std_msgs/MultiArrayLayout[] muls
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: std_msgs/Time
    time data
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArrayOfMsgs(null);
    if (msg.strings !== undefined) {
      resolved.strings = new Array(msg.strings.length);
      for (let i = 0; i < resolved.strings.length; ++i) {
        resolved.strings[i] = std_msgs.msg.String.Resolve(msg.strings[i]);
      }
    }
    else {
      resolved.strings = []
    }

    if (msg.times !== undefined) {
      resolved.times = new Array(msg.times.length);
      for (let i = 0; i < resolved.times.length; ++i) {
        resolved.times[i] = std_msgs.msg.Time.Resolve(msg.times[i]);
      }
    }
    else {
      resolved.times = []
    }

    if (msg.muls !== undefined) {
      resolved.muls = new Array(msg.muls.length);
      for (let i = 0; i < resolved.muls.length; ++i) {
        resolved.muls[i] = std_msgs.msg.MultiArrayLayout.Resolve(msg.muls[i]);
      }
    }
    else {
      resolved.muls = []
    }

    return resolved;
    }
};

module.exports = ArrayOfMsgs;
