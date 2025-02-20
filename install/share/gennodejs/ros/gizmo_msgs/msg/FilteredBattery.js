// Auto-generated. Do not edit!

// (in-package gizmo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FilteredBattery {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rounded_pct = null;
      this.dock_present = null;
      this.is_charging = null;
    }
    else {
      if (initObj.hasOwnProperty('rounded_pct')) {
        this.rounded_pct = initObj.rounded_pct
      }
      else {
        this.rounded_pct = 0;
      }
      if (initObj.hasOwnProperty('dock_present')) {
        this.dock_present = initObj.dock_present
      }
      else {
        this.dock_present = false;
      }
      if (initObj.hasOwnProperty('is_charging')) {
        this.is_charging = initObj.is_charging
      }
      else {
        this.is_charging = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FilteredBattery
    // Serialize message field [rounded_pct]
    bufferOffset = _serializer.uint8(obj.rounded_pct, buffer, bufferOffset);
    // Serialize message field [dock_present]
    bufferOffset = _serializer.bool(obj.dock_present, buffer, bufferOffset);
    // Serialize message field [is_charging]
    bufferOffset = _serializer.bool(obj.is_charging, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FilteredBattery
    let len;
    let data = new FilteredBattery(null);
    // Deserialize message field [rounded_pct]
    data.rounded_pct = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dock_present]
    data.dock_present = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_charging]
    data.is_charging = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gizmo_msgs/FilteredBattery';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '82098baeacd5c1019567d710d5140fd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 rounded_pct
    bool dock_present
    bool is_charging
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FilteredBattery(null);
    if (msg.rounded_pct !== undefined) {
      resolved.rounded_pct = msg.rounded_pct;
    }
    else {
      resolved.rounded_pct = 0
    }

    if (msg.dock_present !== undefined) {
      resolved.dock_present = msg.dock_present;
    }
    else {
      resolved.dock_present = false
    }

    if (msg.is_charging !== undefined) {
      resolved.is_charging = msg.is_charging;
    }
    else {
      resolved.is_charging = false
    }

    return resolved;
    }
};

module.exports = FilteredBattery;
