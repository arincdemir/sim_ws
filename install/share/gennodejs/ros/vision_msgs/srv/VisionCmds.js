// Auto-generated. Do not edit!

// (in-package vision_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VisionCmdMsg = require('../msg/VisionCmdMsg.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class VisionCmdsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.commands = null;
    }
    else {
      if (initObj.hasOwnProperty('commands')) {
        this.commands = initObj.commands
      }
      else {
        this.commands = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionCmdsRequest
    // Serialize message field [commands]
    // Serialize the length for message field [commands]
    bufferOffset = _serializer.uint32(obj.commands.length, buffer, bufferOffset);
    obj.commands.forEach((val) => {
      bufferOffset = VisionCmdMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionCmdsRequest
    let len;
    let data = new VisionCmdsRequest(null);
    // Deserialize message field [commands]
    // Deserialize array length for message field [commands]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.commands = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.commands[i] = VisionCmdMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.commands.forEach((val) => {
      length += VisionCmdMsg.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_msgs/VisionCmdsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7282a16b56b3d63297169ddace6632d5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    VisionCmdMsg[] commands
    
    ================================================================================
    MSG: vision_msgs/VisionCmdMsg
    string action
    string module
    # Optional config
    mayfield_msgs/KeyValue[] config
    # Optional params
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
    const resolved = new VisionCmdsRequest(null);
    if (msg.commands !== undefined) {
      resolved.commands = new Array(msg.commands.length);
      for (let i = 0; i < resolved.commands.length; ++i) {
        resolved.commands[i] = VisionCmdMsg.Resolve(msg.commands[i]);
      }
    }
    else {
      resolved.commands = []
    }

    return resolved;
    }
};

class VisionCmdsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionCmdsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionCmdsResponse
    let len;
    let data = new VisionCmdsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_msgs/VisionCmdsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionCmdsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: VisionCmdsRequest,
  Response: VisionCmdsResponse,
  md5sum() { return '10c7d0ceeefb07098922de1daf972410'; },
  datatype() { return 'vision_msgs/VisionCmds'; }
};
