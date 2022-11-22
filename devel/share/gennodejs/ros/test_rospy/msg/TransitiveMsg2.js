// Auto-generated. Do not edit!

// (in-package test_rospy.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let test_rosmaster = _finder('test_rosmaster');

//-----------------------------------------------------------

class TransitiveMsg2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new test_rosmaster.msg.Composite();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TransitiveMsg2
    // Serialize message field [data]
    bufferOffset = test_rosmaster.msg.Composite.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TransitiveMsg2
    let len;
    let data = new TransitiveMsg2(null);
    // Deserialize message field [data]
    data.data = test_rosmaster.msg.Composite.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test_rospy/TransitiveMsg2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb1fa3c8b51b0e31f74e89c2eecc441e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    test_rosmaster/Composite data
    
    ================================================================================
    MSG: test_rosmaster/Composite
    # composite message. required for testing import calculation in generators
    CompositeA a
    CompositeB b
    
    ================================================================================
    MSG: test_rosmaster/CompositeA
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: test_rosmaster/CompositeB
    # copy of geometry_msgs/Point for testing
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
    const resolved = new TransitiveMsg2(null);
    if (msg.data !== undefined) {
      resolved.data = test_rosmaster.msg.Composite.Resolve(msg.data)
    }
    else {
      resolved.data = new test_rosmaster.msg.Composite()
    }

    return resolved;
    }
};

module.exports = TransitiveMsg2;
