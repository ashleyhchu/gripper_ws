// Auto-generated. Do not edit!

// (in-package droidspeak.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DroidEmotionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.emotion = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('emotion')) {
        this.emotion = initObj.emotion
      }
      else {
        this.emotion = 0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DroidEmotionRequest
    // Serialize message field [emotion]
    bufferOffset = _serializer.uint8(obj.emotion, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.duration(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DroidEmotionRequest
    let len;
    let data = new DroidEmotionRequest(null);
    // Deserialize message field [emotion]
    data.emotion = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'droidspeak/DroidEmotionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3121217addb14943825726ec606b461f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NORMAL=0
    uint8 HAPPY=1
    uint8 SORRY=2
    uint8 ANGRY=3
    uint8 JADED=4
    uint8 LOOK_LEFT=5
    uint8 LOOK_RIGHT=6
    uint8 LOOK_UP=7
    uint8 LOOK_DOWN=8
    uint8 BLINK=9
    
    uint8 emotion
    duration duration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DroidEmotionRequest(null);
    if (msg.emotion !== undefined) {
      resolved.emotion = msg.emotion;
    }
    else {
      resolved.emotion = 0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

// Constants for message
DroidEmotionRequest.Constants = {
  NORMAL: 0,
  HAPPY: 1,
  SORRY: 2,
  ANGRY: 3,
  JADED: 4,
  LOOK_LEFT: 5,
  LOOK_RIGHT: 6,
  LOOK_UP: 7,
  LOOK_DOWN: 8,
  BLINK: 9,
}

class DroidEmotionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DroidEmotionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DroidEmotionResponse
    let len;
    let data = new DroidEmotionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'droidspeak/DroidEmotionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DroidEmotionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: DroidEmotionRequest,
  Response: DroidEmotionResponse,
  md5sum() { return '3121217addb14943825726ec606b461f'; },
  datatype() { return 'droidspeak/DroidEmotion'; }
};
