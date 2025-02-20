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

class BatteryCapacity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mAh = null;
      this.pct = null;
      this.rounded_pct = null;
    }
    else {
      if (initObj.hasOwnProperty('mAh')) {
        this.mAh = initObj.mAh
      }
      else {
        this.mAh = 0;
      }
      if (initObj.hasOwnProperty('pct')) {
        this.pct = initObj.pct
      }
      else {
        this.pct = 0;
      }
      if (initObj.hasOwnProperty('rounded_pct')) {
        this.rounded_pct = initObj.rounded_pct
      }
      else {
        this.rounded_pct = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BatteryCapacity
    // Serialize message field [mAh]
    bufferOffset = _serializer.int16(obj.mAh, buffer, bufferOffset);
    // Serialize message field [pct]
    bufferOffset = _serializer.int8(obj.pct, buffer, bufferOffset);
    // Serialize message field [rounded_pct]
    bufferOffset = _serializer.int8(obj.rounded_pct, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BatteryCapacity
    let len;
    let data = new BatteryCapacity(null);
    // Deserialize message field [mAh]
    data.mAh = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [pct]
    data.pct = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [rounded_pct]
    data.rounded_pct = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_base_driver/BatteryCapacity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44e1b0249db4fca04e974c31a68c58b0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 mAh
    int8 pct
    int8 rounded_pct # capacity percentage estimate, rounded to the nearest 5 and
                     # subjected to hysteresis so it can only change if the value has
                     # changed by at least 5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BatteryCapacity(null);
    if (msg.mAh !== undefined) {
      resolved.mAh = msg.mAh;
    }
    else {
      resolved.mAh = 0
    }

    if (msg.pct !== undefined) {
      resolved.pct = msg.pct;
    }
    else {
      resolved.pct = 0
    }

    if (msg.rounded_pct !== undefined) {
      resolved.rounded_pct = msg.rounded_pct;
    }
    else {
      resolved.rounded_pct = 0
    }

    return resolved;
    }
};

module.exports = BatteryCapacity;
