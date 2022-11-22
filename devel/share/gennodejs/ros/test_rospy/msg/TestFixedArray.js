// Auto-generated. Do not edit!

// (in-package test_rospy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TestFixedArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.f32_1 = null;
      this.f32_3 = null;
      this.f64_1 = null;
      this.f64_3 = null;
      this.i8_1 = null;
      this.i8_3 = null;
      this.u8_1 = null;
      this.u8_3 = null;
      this.i32_1 = null;
      this.i32_3 = null;
      this.u32_1 = null;
      this.u32_3 = null;
      this.s_1 = null;
      this.s_3 = null;
      this.b_1 = null;
      this.b_3 = null;
    }
    else {
      if (initObj.hasOwnProperty('f32_1')) {
        this.f32_1 = initObj.f32_1
      }
      else {
        this.f32_1 = new Array(1).fill(0);
      }
      if (initObj.hasOwnProperty('f32_3')) {
        this.f32_3 = initObj.f32_3
      }
      else {
        this.f32_3 = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('f64_1')) {
        this.f64_1 = initObj.f64_1
      }
      else {
        this.f64_1 = new Array(1).fill(0);
      }
      if (initObj.hasOwnProperty('f64_3')) {
        this.f64_3 = initObj.f64_3
      }
      else {
        this.f64_3 = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('i8_1')) {
        this.i8_1 = initObj.i8_1
      }
      else {
        this.i8_1 = new Array(1).fill(0);
      }
      if (initObj.hasOwnProperty('i8_3')) {
        this.i8_3 = initObj.i8_3
      }
      else {
        this.i8_3 = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('u8_1')) {
        this.u8_1 = initObj.u8_1
      }
      else {
        this.u8_1 = new Array(1).fill(0);
      }
      if (initObj.hasOwnProperty('u8_3')) {
        this.u8_3 = initObj.u8_3
      }
      else {
        this.u8_3 = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('i32_1')) {
        this.i32_1 = initObj.i32_1
      }
      else {
        this.i32_1 = new Array(1).fill(0);
      }
      if (initObj.hasOwnProperty('i32_3')) {
        this.i32_3 = initObj.i32_3
      }
      else {
        this.i32_3 = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('u32_1')) {
        this.u32_1 = initObj.u32_1
      }
      else {
        this.u32_1 = new Array(1).fill(0);
      }
      if (initObj.hasOwnProperty('u32_3')) {
        this.u32_3 = initObj.u32_3
      }
      else {
        this.u32_3 = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('s_1')) {
        this.s_1 = initObj.s_1
      }
      else {
        this.s_1 = new Array(1).fill(0);
      }
      if (initObj.hasOwnProperty('s_3')) {
        this.s_3 = initObj.s_3
      }
      else {
        this.s_3 = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('b_1')) {
        this.b_1 = initObj.b_1
      }
      else {
        this.b_1 = new Array(1).fill(0);
      }
      if (initObj.hasOwnProperty('b_3')) {
        this.b_3 = initObj.b_3
      }
      else {
        this.b_3 = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TestFixedArray
    // Check that the constant length array field [f32_1] has the right length
    if (obj.f32_1.length !== 1) {
      throw new Error('Unable to serialize array field f32_1 - length must be 1')
    }
    // Serialize message field [f32_1]
    bufferOffset = _arraySerializer.float32(obj.f32_1, buffer, bufferOffset, 1);
    // Check that the constant length array field [f32_3] has the right length
    if (obj.f32_3.length !== 3) {
      throw new Error('Unable to serialize array field f32_3 - length must be 3')
    }
    // Serialize message field [f32_3]
    bufferOffset = _arraySerializer.float32(obj.f32_3, buffer, bufferOffset, 3);
    // Check that the constant length array field [f64_1] has the right length
    if (obj.f64_1.length !== 1) {
      throw new Error('Unable to serialize array field f64_1 - length must be 1')
    }
    // Serialize message field [f64_1]
    bufferOffset = _arraySerializer.float64(obj.f64_1, buffer, bufferOffset, 1);
    // Check that the constant length array field [f64_3] has the right length
    if (obj.f64_3.length !== 3) {
      throw new Error('Unable to serialize array field f64_3 - length must be 3')
    }
    // Serialize message field [f64_3]
    bufferOffset = _arraySerializer.float64(obj.f64_3, buffer, bufferOffset, 3);
    // Check that the constant length array field [i8_1] has the right length
    if (obj.i8_1.length !== 1) {
      throw new Error('Unable to serialize array field i8_1 - length must be 1')
    }
    // Serialize message field [i8_1]
    bufferOffset = _arraySerializer.int8(obj.i8_1, buffer, bufferOffset, 1);
    // Check that the constant length array field [i8_3] has the right length
    if (obj.i8_3.length !== 3) {
      throw new Error('Unable to serialize array field i8_3 - length must be 3')
    }
    // Serialize message field [i8_3]
    bufferOffset = _arraySerializer.int8(obj.i8_3, buffer, bufferOffset, 3);
    // Check that the constant length array field [u8_1] has the right length
    if (obj.u8_1.length !== 1) {
      throw new Error('Unable to serialize array field u8_1 - length must be 1')
    }
    // Serialize message field [u8_1]
    bufferOffset = _arraySerializer.uint8(obj.u8_1, buffer, bufferOffset, 1);
    // Check that the constant length array field [u8_3] has the right length
    if (obj.u8_3.length !== 3) {
      throw new Error('Unable to serialize array field u8_3 - length must be 3')
    }
    // Serialize message field [u8_3]
    bufferOffset = _arraySerializer.uint8(obj.u8_3, buffer, bufferOffset, 3);
    // Check that the constant length array field [i32_1] has the right length
    if (obj.i32_1.length !== 1) {
      throw new Error('Unable to serialize array field i32_1 - length must be 1')
    }
    // Serialize message field [i32_1]
    bufferOffset = _arraySerializer.int32(obj.i32_1, buffer, bufferOffset, 1);
    // Check that the constant length array field [i32_3] has the right length
    if (obj.i32_3.length !== 3) {
      throw new Error('Unable to serialize array field i32_3 - length must be 3')
    }
    // Serialize message field [i32_3]
    bufferOffset = _arraySerializer.int32(obj.i32_3, buffer, bufferOffset, 3);
    // Check that the constant length array field [u32_1] has the right length
    if (obj.u32_1.length !== 1) {
      throw new Error('Unable to serialize array field u32_1 - length must be 1')
    }
    // Serialize message field [u32_1]
    bufferOffset = _arraySerializer.uint32(obj.u32_1, buffer, bufferOffset, 1);
    // Check that the constant length array field [u32_3] has the right length
    if (obj.u32_3.length !== 3) {
      throw new Error('Unable to serialize array field u32_3 - length must be 3')
    }
    // Serialize message field [u32_3]
    bufferOffset = _arraySerializer.uint32(obj.u32_3, buffer, bufferOffset, 3);
    // Check that the constant length array field [s_1] has the right length
    if (obj.s_1.length !== 1) {
      throw new Error('Unable to serialize array field s_1 - length must be 1')
    }
    // Serialize message field [s_1]
    bufferOffset = _arraySerializer.string(obj.s_1, buffer, bufferOffset, 1);
    // Check that the constant length array field [s_3] has the right length
    if (obj.s_3.length !== 3) {
      throw new Error('Unable to serialize array field s_3 - length must be 3')
    }
    // Serialize message field [s_3]
    bufferOffset = _arraySerializer.string(obj.s_3, buffer, bufferOffset, 3);
    // Check that the constant length array field [b_1] has the right length
    if (obj.b_1.length !== 1) {
      throw new Error('Unable to serialize array field b_1 - length must be 1')
    }
    // Serialize message field [b_1]
    bufferOffset = _arraySerializer.bool(obj.b_1, buffer, bufferOffset, 1);
    // Check that the constant length array field [b_3] has the right length
    if (obj.b_3.length !== 3) {
      throw new Error('Unable to serialize array field b_3 - length must be 3')
    }
    // Serialize message field [b_3]
    bufferOffset = _arraySerializer.bool(obj.b_3, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TestFixedArray
    let len;
    let data = new TestFixedArray(null);
    // Deserialize message field [f32_1]
    data.f32_1 = _arrayDeserializer.float32(buffer, bufferOffset, 1)
    // Deserialize message field [f32_3]
    data.f32_3 = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [f64_1]
    data.f64_1 = _arrayDeserializer.float64(buffer, bufferOffset, 1)
    // Deserialize message field [f64_3]
    data.f64_3 = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [i8_1]
    data.i8_1 = _arrayDeserializer.int8(buffer, bufferOffset, 1)
    // Deserialize message field [i8_3]
    data.i8_3 = _arrayDeserializer.int8(buffer, bufferOffset, 3)
    // Deserialize message field [u8_1]
    data.u8_1 = _arrayDeserializer.uint8(buffer, bufferOffset, 1)
    // Deserialize message field [u8_3]
    data.u8_3 = _arrayDeserializer.uint8(buffer, bufferOffset, 3)
    // Deserialize message field [i32_1]
    data.i32_1 = _arrayDeserializer.int32(buffer, bufferOffset, 1)
    // Deserialize message field [i32_3]
    data.i32_3 = _arrayDeserializer.int32(buffer, bufferOffset, 3)
    // Deserialize message field [u32_1]
    data.u32_1 = _arrayDeserializer.uint32(buffer, bufferOffset, 1)
    // Deserialize message field [u32_3]
    data.u32_3 = _arrayDeserializer.uint32(buffer, bufferOffset, 3)
    // Deserialize message field [s_1]
    data.s_1 = _arrayDeserializer.string(buffer, bufferOffset, 1)
    // Deserialize message field [s_3]
    data.s_3 = _arrayDeserializer.string(buffer, bufferOffset, 3)
    // Deserialize message field [b_1]
    data.b_1 = _arrayDeserializer.bool(buffer, bufferOffset, 1)
    // Deserialize message field [b_3]
    data.b_3 = _arrayDeserializer.bool(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.s_1.forEach((val) => {
      length += 4 + val.length;
    });
    object.s_3.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rospy/TestFixedArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1557473dc09f1a01a00123a713c822a7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[1] f32_1
    float32[3] f32_3
    float64[1] f64_1
    float64[3] f64_3
    int8[1] i8_1
    int8[3] i8_3
    uint8[1] u8_1
    uint8[3] u8_3
    int32[1] i32_1
    int32[3] i32_3
    uint32[1] u32_1
    uint32[3] u32_3
    string[1] s_1
    string[3] s_3
    bool[1] b_1
    bool[3] b_3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TestFixedArray(null);
    if (msg.f32_1 !== undefined) {
      resolved.f32_1 = msg.f32_1;
    }
    else {
      resolved.f32_1 = new Array(1).fill(0)
    }

    if (msg.f32_3 !== undefined) {
      resolved.f32_3 = msg.f32_3;
    }
    else {
      resolved.f32_3 = new Array(3).fill(0)
    }

    if (msg.f64_1 !== undefined) {
      resolved.f64_1 = msg.f64_1;
    }
    else {
      resolved.f64_1 = new Array(1).fill(0)
    }

    if (msg.f64_3 !== undefined) {
      resolved.f64_3 = msg.f64_3;
    }
    else {
      resolved.f64_3 = new Array(3).fill(0)
    }

    if (msg.i8_1 !== undefined) {
      resolved.i8_1 = msg.i8_1;
    }
    else {
      resolved.i8_1 = new Array(1).fill(0)
    }

    if (msg.i8_3 !== undefined) {
      resolved.i8_3 = msg.i8_3;
    }
    else {
      resolved.i8_3 = new Array(3).fill(0)
    }

    if (msg.u8_1 !== undefined) {
      resolved.u8_1 = msg.u8_1;
    }
    else {
      resolved.u8_1 = new Array(1).fill(0)
    }

    if (msg.u8_3 !== undefined) {
      resolved.u8_3 = msg.u8_3;
    }
    else {
      resolved.u8_3 = new Array(3).fill(0)
    }

    if (msg.i32_1 !== undefined) {
      resolved.i32_1 = msg.i32_1;
    }
    else {
      resolved.i32_1 = new Array(1).fill(0)
    }

    if (msg.i32_3 !== undefined) {
      resolved.i32_3 = msg.i32_3;
    }
    else {
      resolved.i32_3 = new Array(3).fill(0)
    }

    if (msg.u32_1 !== undefined) {
      resolved.u32_1 = msg.u32_1;
    }
    else {
      resolved.u32_1 = new Array(1).fill(0)
    }

    if (msg.u32_3 !== undefined) {
      resolved.u32_3 = msg.u32_3;
    }
    else {
      resolved.u32_3 = new Array(3).fill(0)
    }

    if (msg.s_1 !== undefined) {
      resolved.s_1 = msg.s_1;
    }
    else {
      resolved.s_1 = new Array(1).fill(0)
    }

    if (msg.s_3 !== undefined) {
      resolved.s_3 = msg.s_3;
    }
    else {
      resolved.s_3 = new Array(3).fill(0)
    }

    if (msg.b_1 !== undefined) {
      resolved.b_1 = msg.b_1;
    }
    else {
      resolved.b_1 = new Array(1).fill(0)
    }

    if (msg.b_3 !== undefined) {
      resolved.b_3 = msg.b_3;
    }
    else {
      resolved.b_3 = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = TestFixedArray;
