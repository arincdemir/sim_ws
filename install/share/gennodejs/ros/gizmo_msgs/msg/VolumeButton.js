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

class VolumeButton {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.up_button_pressed = null;
      this.down_button_pressed = null;
    }
    else {
      if (initObj.hasOwnProperty('up_button_pressed')) {
        this.up_button_pressed = initObj.up_button_pressed
      }
      else {
        this.up_button_pressed = false;
      }
      if (initObj.hasOwnProperty('down_button_pressed')) {
        this.down_button_pressed = initObj.down_button_pressed
      }
      else {
        this.down_button_pressed = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VolumeButton
    // Serialize message field [up_button_pressed]
    bufferOffset = _serializer.bool(obj.up_button_pressed, buffer, bufferOffset);
    // Serialize message field [down_button_pressed]
    bufferOffset = _serializer.bool(obj.down_button_pressed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VolumeButton
    let len;
    let data = new VolumeButton(null);
    // Deserialize message field [up_button_pressed]
    data.up_button_pressed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [down_button_pressed]
    data.down_button_pressed = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gizmo_msgs/VolumeButton';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '521894f40e8f5ce718766f39cf828cea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool up_button_pressed
    bool down_button_pressed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VolumeButton(null);
    if (msg.up_button_pressed !== undefined) {
      resolved.up_button_pressed = msg.up_button_pressed;
    }
    else {
      resolved.up_button_pressed = false
    }

    if (msg.down_button_pressed !== undefined) {
      resolved.down_button_pressed = msg.down_button_pressed;
    }
    else {
      resolved.down_button_pressed = false
    }

    return resolved;
    }
};

module.exports = VolumeButton;
