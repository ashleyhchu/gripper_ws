// Auto-generated. Do not edit!

// (in-package test_rospy.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ConstantsMultiplexRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.selection = null;
    }
    else {
      if (initObj.hasOwnProperty('selection')) {
        this.selection = initObj.selection
      }
      else {
        this.selection = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConstantsMultiplexRequest
    // Serialize message field [selection]
    bufferOffset = _serializer.byte(obj.selection, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConstantsMultiplexRequest
    let len;
    let data = new ConstantsMultiplexRequest(null);
    // Deserialize message field [selection]
    data.selection = _deserializer.byte(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rospy/ConstantsMultiplexRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e3b2ecf5f3e7d25830bd97a7fd13b17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    byte BYTE_X=0
    byte BYTE_Y=15
    byte BYTE_Z=5
    int32 INT32_X=0
    int32 INT32_Y=-12345678
    int32 INT32_Z=12345678
    uint32 UINT32_X=0
    uint32 UINT32_Y=12345678
    uint32 UINT32_Z=1
    float32 FLOAT32_X=0.0
    float32 FLOAT32_Y=-3.14159
    float32 FLOAT32_Z=12345.78
    byte SELECT_X=1
    byte SELECT_Y=2
    byte SELECT_Z=3
    byte selection
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConstantsMultiplexRequest(null);
    if (msg.selection !== undefined) {
      resolved.selection = msg.selection;
    }
    else {
      resolved.selection = 0
    }

    return resolved;
    }
};

// Constants for message
ConstantsMultiplexRequest.Constants = {
  BYTE_X: 0,
  BYTE_Y: 15,
  BYTE_Z: 5,
  INT32_X: 0,
  INT32_Y: -12345678,
  INT32_Z: 12345678,
  UINT32_X: 0,
  UINT32_Y: 12345678,
  UINT32_Z: 1,
  FLOAT32_X: 0.0,
  FLOAT32_Y: -3.14159,
  FLOAT32_Z: 12345.78,
  SELECT_X: 1,
  SELECT_Y: 2,
  SELECT_Z: 3,
}

class ConstantsMultiplexResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.select_confirm = null;
      this.ret_byte = null;
      this.ret_int32 = null;
      this.ret_uint32 = null;
      this.ret_float32 = null;
    }
    else {
      if (initObj.hasOwnProperty('select_confirm')) {
        this.select_confirm = initObj.select_confirm
      }
      else {
        this.select_confirm = 0;
      }
      if (initObj.hasOwnProperty('ret_byte')) {
        this.ret_byte = initObj.ret_byte
      }
      else {
        this.ret_byte = 0;
      }
      if (initObj.hasOwnProperty('ret_int32')) {
        this.ret_int32 = initObj.ret_int32
      }
      else {
        this.ret_int32 = 0;
      }
      if (initObj.hasOwnProperty('ret_uint32')) {
        this.ret_uint32 = initObj.ret_uint32
      }
      else {
        this.ret_uint32 = 0;
      }
      if (initObj.hasOwnProperty('ret_float32')) {
        this.ret_float32 = initObj.ret_float32
      }
      else {
        this.ret_float32 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConstantsMultiplexResponse
    // Serialize message field [select_confirm]
    bufferOffset = _serializer.byte(obj.select_confirm, buffer, bufferOffset);
    // Serialize message field [ret_byte]
    bufferOffset = _serializer.byte(obj.ret_byte, buffer, bufferOffset);
    // Serialize message field [ret_int32]
    bufferOffset = _serializer.int32(obj.ret_int32, buffer, bufferOffset);
    // Serialize message field [ret_uint32]
    bufferOffset = _serializer.uint32(obj.ret_uint32, buffer, bufferOffset);
    // Serialize message field [ret_float32]
    bufferOffset = _serializer.float32(obj.ret_float32, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConstantsMultiplexResponse
    let len;
    let data = new ConstantsMultiplexResponse(null);
    // Deserialize message field [select_confirm]
    data.select_confirm = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [ret_byte]
    data.ret_byte = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [ret_int32]
    data.ret_int32 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ret_uint32]
    data.ret_uint32 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ret_float32]
    data.ret_float32 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a service object
    return 'test_rospy/ConstantsMultiplexResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '012320975f41b58dcffb5b0e7a154691';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # test response constants as well
    byte CONFIRM_X=1
    byte CONFIRM_Y=2
    byte CONFIRM_Z=3
    byte select_confirm
    byte ret_byte
    int32 ret_int32
    uint32 ret_uint32
    float32 ret_float32
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConstantsMultiplexResponse(null);
    if (msg.select_confirm !== undefined) {
      resolved.select_confirm = msg.select_confirm;
    }
    else {
      resolved.select_confirm = 0
    }

    if (msg.ret_byte !== undefined) {
      resolved.ret_byte = msg.ret_byte;
    }
    else {
      resolved.ret_byte = 0
    }

    if (msg.ret_int32 !== undefined) {
      resolved.ret_int32 = msg.ret_int32;
    }
    else {
      resolved.ret_int32 = 0
    }

    if (msg.ret_uint32 !== undefined) {
      resolved.ret_uint32 = msg.ret_uint32;
    }
    else {
      resolved.ret_uint32 = 0
    }

    if (msg.ret_float32 !== undefined) {
      resolved.ret_float32 = msg.ret_float32;
    }
    else {
      resolved.ret_float32 = 0.0
    }

    return resolved;
    }
};

// Constants for message
ConstantsMultiplexResponse.Constants = {
  CONFIRM_X: 1,
  CONFIRM_Y: 2,
  CONFIRM_Z: 3,
}

module.exports = {
  Request: ConstantsMultiplexRequest,
  Response: ConstantsMultiplexResponse,
  md5sum() { return 'bab86066b3f7801cb25df3932f644396'; },
  datatype() { return 'test_rospy/ConstantsMultiplex'; }
};
