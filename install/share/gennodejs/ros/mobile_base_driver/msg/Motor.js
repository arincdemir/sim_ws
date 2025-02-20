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

class Motor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stalled = null;
      this.pushed = null;
    }
    else {
      if (initObj.hasOwnProperty('stalled')) {
        this.stalled = initObj.stalled
      }
      else {
        this.stalled = false;
      }
      if (initObj.hasOwnProperty('pushed')) {
        this.pushed = initObj.pushed
      }
      else {
        this.pushed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Motor
    // Serialize message field [stalled]
    bufferOffset = _serializer.bool(obj.stalled, buffer, bufferOffset);
    // Serialize message field [pushed]
    bufferOffset = _serializer.bool(obj.pushed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Motor
    let len;
    let data = new Motor(null);
    // Deserialize message field [stalled]
    data.stalled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pushed]
    data.pushed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_base_driver/Motor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '474302a9ee5ae83e0d6191474935a690';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Provides a motor state
    
    # motor
    uint8 RIGHTWHEEL     = 0
    uint8 LEFTWHEEL      = 1
    uint8 PAN            = 2
    uint8 TILT           = 3
    uint8 EYES           = 4
    
    bool  stalled
    bool  pushed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Motor(null);
    if (msg.stalled !== undefined) {
      resolved.stalled = msg.stalled;
    }
    else {
      resolved.stalled = false
    }

    if (msg.pushed !== undefined) {
      resolved.pushed = msg.pushed;
    }
    else {
      resolved.pushed = false
    }

    return resolved;
    }
};

// Constants for message
Motor.Constants = {
  RIGHTWHEEL: 0,
  LEFTWHEEL: 1,
  PAN: 2,
  TILT: 3,
  EYES: 4,
}

module.exports = Motor;
