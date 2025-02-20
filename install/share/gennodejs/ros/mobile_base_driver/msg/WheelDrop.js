// Auto-generated. Do not edit!

// (in-package mobile_base_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WheelDrop {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheel = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('wheel')) {
        this.wheel = initObj.wheel
      }
      else {
        this.wheel = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WheelDrop
    // Serialize message field [wheel]
    bufferOffset = _serializer.uint8(obj.wheel, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WheelDrop
    let len;
    let data = new WheelDrop(null);
    // Deserialize message field [wheel]
    data.wheel = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_base_driver/WheelDrop';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb4521cb4dace44ce1858348261dd098';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Provides a wheeldrop sensor stae
    
    # wheel
    uint8 RIGHT = 0
    uint8 LEFT  = 1
    
    # wheel state
    uint8 RAISED  = 0
    uint8 DROPPED = 1
    
    uint8 wheel
    uint8 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WheelDrop(null);
    if (msg.wheel !== undefined) {
      resolved.wheel = msg.wheel;
    }
    else {
      resolved.wheel = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
WheelDrop.Constants = {
  RIGHT: 0,
  LEFT: 1,
  RAISED: 0,
  DROPPED: 1,
}

module.exports = WheelDrop;
