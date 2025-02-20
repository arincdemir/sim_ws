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

class Touch {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.electrodes = null;
    }
    else {
      if (initObj.hasOwnProperty('electrodes')) {
        this.electrodes = initObj.electrodes
      }
      else {
        this.electrodes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Touch
    // Serialize message field [electrodes]
    bufferOffset = _arraySerializer.bool(obj.electrodes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Touch
    let len;
    let data = new Touch(null);
    // Deserialize message field [electrodes]
    data.electrodes = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.electrodes.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_base_driver/Touch';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45f8d1c4c44dcc7ee376d119a02375bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # true means touched
    # [FRONT_LEFT, LEFT, REAR_LEFT, CENTER, FRONT, REAR_RIGHT, RIGHT, FRONT_RIGHT]
    bool[] electrodes
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Touch(null);
    if (msg.electrodes !== undefined) {
      resolved.electrodes = msg.electrodes;
    }
    else {
      resolved.electrodes = []
    }

    return resolved;
    }
};

module.exports = Touch;
