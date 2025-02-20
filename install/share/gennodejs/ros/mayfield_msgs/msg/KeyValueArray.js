// Auto-generated. Do not edit!

// (in-package mayfield_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let KeyValue = require('./KeyValue.js');

//-----------------------------------------------------------

class KeyValueArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.key_values = null;
    }
    else {
      if (initObj.hasOwnProperty('key_values')) {
        this.key_values = initObj.key_values
      }
      else {
        this.key_values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KeyValueArray
    // Serialize message field [key_values]
    // Serialize the length for message field [key_values]
    bufferOffset = _serializer.uint32(obj.key_values.length, buffer, bufferOffset);
    obj.key_values.forEach((val) => {
      bufferOffset = KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KeyValueArray
    let len;
    let data = new KeyValueArray(null);
    // Deserialize message field [key_values]
    // Deserialize array length for message field [key_values]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.key_values = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.key_values[i] = KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.key_values.forEach((val) => {
      length += KeyValue.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mayfield_msgs/KeyValueArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cefc47b26ef37767a965df2b47d24771';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    KeyValue[] key_values
    ================================================================================
    MSG: mayfield_msgs/KeyValue
    # Key value pair, with values represented as strings
    string k
    string v
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new KeyValueArray(null);
    if (msg.key_values !== undefined) {
      resolved.key_values = new Array(msg.key_values.length);
      for (let i = 0; i < resolved.key_values.length; ++i) {
        resolved.key_values[i] = KeyValue.Resolve(msg.key_values[i]);
      }
    }
    else {
      resolved.key_values = []
    }

    return resolved;
    }
};

module.exports = KeyValueArray;
