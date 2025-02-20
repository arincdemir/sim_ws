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

class RomojiFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_id = null;
      this.feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('request_id')) {
        this.request_id = initObj.request_id
      }
      else {
        this.request_id = '';
      }
      if (initObj.hasOwnProperty('feedback')) {
        this.feedback = initObj.feedback
      }
      else {
        this.feedback = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RomojiFeedback
    // Serialize message field [request_id]
    bufferOffset = _serializer.string(obj.request_id, buffer, bufferOffset);
    // Serialize message field [feedback]
    bufferOffset = _serializer.string(obj.feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RomojiFeedback
    let len;
    let data = new RomojiFeedback(null);
    // Deserialize message field [request_id]
    data.request_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [feedback]
    data.feedback = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.request_id);
    length += _getByteLength(object.feedback);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gizmo_msgs/RomojiFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '779c10426637afb40e1ff669a0a1211a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string request_id
    string feedback
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RomojiFeedback(null);
    if (msg.request_id !== undefined) {
      resolved.request_id = msg.request_id;
    }
    else {
      resolved.request_id = ''
    }

    if (msg.feedback !== undefined) {
      resolved.feedback = msg.feedback;
    }
    else {
      resolved.feedback = ''
    }

    return resolved;
    }
};

module.exports = RomojiFeedback;
