// Auto-generated. Do not edit!

// (in-package gizmo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SoundHoundCommand = require('./SoundHoundCommand.js');

//-----------------------------------------------------------

class Exchange {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.commands = null;
      this.error = null;
      this.transcription = null;
    }
    else {
      if (initObj.hasOwnProperty('commands')) {
        this.commands = initObj.commands
      }
      else {
        this.commands = [];
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = '';
      }
      if (initObj.hasOwnProperty('transcription')) {
        this.transcription = initObj.transcription
      }
      else {
        this.transcription = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Exchange
    // Serialize message field [commands]
    // Serialize the length for message field [commands]
    bufferOffset = _serializer.uint32(obj.commands.length, buffer, bufferOffset);
    obj.commands.forEach((val) => {
      bufferOffset = SoundHoundCommand.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [error]
    bufferOffset = _serializer.string(obj.error, buffer, bufferOffset);
    // Serialize message field [transcription]
    bufferOffset = _serializer.string(obj.transcription, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Exchange
    let len;
    let data = new Exchange(null);
    // Deserialize message field [commands]
    // Deserialize array length for message field [commands]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.commands = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.commands[i] = SoundHoundCommand.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [error]
    data.error = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [transcription]
    data.transcription = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.commands.forEach((val) => {
      length += SoundHoundCommand.getMessageSize(val);
    });
    length += _getByteLength(object.error);
    length += _getByteLength(object.transcription);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gizmo_msgs/Exchange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6f8a41761adaba28718c4d86c1aaad1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SoundHoundCommand[] commands
    string error
    string transcription
    
    ================================================================================
    MSG: gizmo_msgs/SoundHoundCommand
    string name
    mayfield_msgs/KeyValue[] params
    
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
    const resolved = new Exchange(null);
    if (msg.commands !== undefined) {
      resolved.commands = new Array(msg.commands.length);
      for (let i = 0; i < resolved.commands.length; ++i) {
        resolved.commands[i] = SoundHoundCommand.Resolve(msg.commands[i]);
      }
    }
    else {
      resolved.commands = []
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = ''
    }

    if (msg.transcription !== undefined) {
      resolved.transcription = msg.transcription;
    }
    else {
      resolved.transcription = ''
    }

    return resolved;
    }
};

module.exports = Exchange;
