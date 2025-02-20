// Auto-generated. Do not edit!

// (in-package mayfield_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class KeyValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.k = null;
      this.v = null;
    }
    else {
      if (initObj.hasOwnProperty('k')) {
        this.k = initObj.k
      }
      else {
        this.k = '';
      }
      if (initObj.hasOwnProperty('v')) {
        this.v = initObj.v
      }
      else {
        this.v = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KeyValue
    // Serialize message field [k]
    bufferOffset = _serializer.string(obj.k, buffer, bufferOffset);
    // Serialize message field [v]
    bufferOffset = _serializer.string(obj.v, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KeyValue
    let len;
    let data = new KeyValue(null);
    // Deserialize message field [k]
    data.k = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [v]
    data.v = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.k);
    length += _getByteLength(object.v);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mayfield_msgs/KeyValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ecd078d493bbb685fc79824134b47497';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new KeyValue(null);
    if (msg.k !== undefined) {
      resolved.k = msg.k;
    }
    else {
      resolved.k = ''
    }

    if (msg.v !== undefined) {
      resolved.v = msg.v;
    }
    else {
      resolved.v = ''
    }

    return resolved;
    }
};

module.exports = KeyValue;
