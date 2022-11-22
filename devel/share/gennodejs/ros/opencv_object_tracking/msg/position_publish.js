// Auto-generated. Do not edit!

// (in-package opencv_object_tracking.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class position_publish {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Position_XYZ = null;
      this.center_pixel_x = null;
      this.center_pixel_y = null;
      this.counter = null;
    }
    else {
      if (initObj.hasOwnProperty('Position_XYZ')) {
        this.Position_XYZ = initObj.Position_XYZ
      }
      else {
        this.Position_XYZ = [];
      }
      if (initObj.hasOwnProperty('center_pixel_x')) {
        this.center_pixel_x = initObj.center_pixel_x
      }
      else {
        this.center_pixel_x = 0;
      }
      if (initObj.hasOwnProperty('center_pixel_y')) {
        this.center_pixel_y = initObj.center_pixel_y
      }
      else {
        this.center_pixel_y = 0;
      }
      if (initObj.hasOwnProperty('counter')) {
        this.counter = initObj.counter
      }
      else {
        this.counter = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type position_publish
    // Serialize message field [Position_XYZ]
    // Serialize the length for message field [Position_XYZ]
    bufferOffset = _serializer.uint32(obj.Position_XYZ.length, buffer, bufferOffset);
    obj.Position_XYZ.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [center_pixel_x]
    bufferOffset = _serializer.uint16(obj.center_pixel_x, buffer, bufferOffset);
    // Serialize message field [center_pixel_y]
    bufferOffset = _serializer.uint16(obj.center_pixel_y, buffer, bufferOffset);
    // Serialize message field [counter]
    bufferOffset = _serializer.uint8(obj.counter, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type position_publish
    let len;
    let data = new position_publish(null);
    // Deserialize message field [Position_XYZ]
    // Deserialize array length for message field [Position_XYZ]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Position_XYZ = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Position_XYZ[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [center_pixel_x]
    data.center_pixel_x = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [center_pixel_y]
    data.center_pixel_y = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [counter]
    data.counter = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.Position_XYZ.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opencv_object_tracking/position_publish';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fff6255329776d371aac32c4bd148c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] Position_XYZ
    uint16 center_pixel_x
    uint16 center_pixel_y
    uint8 counter
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new position_publish(null);
    if (msg.Position_XYZ !== undefined) {
      resolved.Position_XYZ = new Array(msg.Position_XYZ.length);
      for (let i = 0; i < resolved.Position_XYZ.length; ++i) {
        resolved.Position_XYZ[i] = geometry_msgs.msg.Point.Resolve(msg.Position_XYZ[i]);
      }
    }
    else {
      resolved.Position_XYZ = []
    }

    if (msg.center_pixel_x !== undefined) {
      resolved.center_pixel_x = msg.center_pixel_x;
    }
    else {
      resolved.center_pixel_x = 0
    }

    if (msg.center_pixel_y !== undefined) {
      resolved.center_pixel_y = msg.center_pixel_y;
    }
    else {
      resolved.center_pixel_y = 0
    }

    if (msg.counter !== undefined) {
      resolved.counter = msg.counter;
    }
    else {
      resolved.counter = 0
    }

    return resolved;
    }
};

module.exports = position_publish;
