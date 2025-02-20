// Auto-generated. Do not edit!

// (in-package kuri_api.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Volume {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.level = null;
      this.is_relative = null;
      this.mute = null;
      this.unmute = null;
    }
    else {
      if (initObj.hasOwnProperty('level')) {
        this.level = initObj.level
      }
      else {
        this.level = 0;
      }
      if (initObj.hasOwnProperty('is_relative')) {
        this.is_relative = initObj.is_relative
      }
      else {
        this.is_relative = false;
      }
      if (initObj.hasOwnProperty('mute')) {
        this.mute = initObj.mute
      }
      else {
        this.mute = false;
      }
      if (initObj.hasOwnProperty('unmute')) {
        this.unmute = initObj.unmute
      }
      else {
        this.unmute = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Volume
    // Serialize message field [level]
    bufferOffset = _serializer.int16(obj.level, buffer, bufferOffset);
    // Serialize message field [is_relative]
    bufferOffset = _serializer.bool(obj.is_relative, buffer, bufferOffset);
    // Serialize message field [mute]
    bufferOffset = _serializer.bool(obj.mute, buffer, bufferOffset);
    // Serialize message field [unmute]
    bufferOffset = _serializer.bool(obj.unmute, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Volume
    let len;
    let data = new Volume(null);
    // Deserialize message field [level]
    data.level = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [is_relative]
    data.is_relative = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mute]
    data.mute = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [unmute]
    data.unmute = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'kuri_api/Volume';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c2006af99be3d44213e306b5de119dfc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Volume level
    # If is_relative is True, this adds to the current volume level
    # If is_relative is False, this sets the current volume level
    # Note: level is on the range [0:100], and will be clapmed appropriately
    # upon receipt of this message
    int16 level
    
    # Whether the level should be added to the current level or set absolutely
    bool is_relative
    
    # Mute and unmute
    # If either of these are set to true, the above values will not be used
    # Muting stores the volume level and sets the level to 0
    # Unmuting restores the volume level (or uses the default volume if no level
    # has been stored)
    bool mute
    bool unmute
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Volume(null);
    if (msg.level !== undefined) {
      resolved.level = msg.level;
    }
    else {
      resolved.level = 0
    }

    if (msg.is_relative !== undefined) {
      resolved.is_relative = msg.is_relative;
    }
    else {
      resolved.is_relative = false
    }

    if (msg.mute !== undefined) {
      resolved.mute = msg.mute;
    }
    else {
      resolved.mute = false
    }

    if (msg.unmute !== undefined) {
      resolved.unmute = msg.unmute;
    }
    else {
      resolved.unmute = false
    }

    return resolved;
    }
};

module.exports = Volume;
