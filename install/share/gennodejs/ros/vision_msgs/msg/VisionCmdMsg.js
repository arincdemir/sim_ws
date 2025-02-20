// Auto-generated. Do not edit!

// (in-package vision_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let mayfield_msgs = _finder('mayfield_msgs');

//-----------------------------------------------------------

class VisionCmdMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.module = null;
      this.config = null;
      this.params = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = '';
      }
      if (initObj.hasOwnProperty('module')) {
        this.module = initObj.module
      }
      else {
        this.module = '';
      }
      if (initObj.hasOwnProperty('config')) {
        this.config = initObj.config
      }
      else {
        this.config = [];
      }
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionCmdMsg
    // Serialize message field [action]
    bufferOffset = _serializer.string(obj.action, buffer, bufferOffset);
    // Serialize message field [module]
    bufferOffset = _serializer.string(obj.module, buffer, bufferOffset);
    // Serialize message field [config]
    // Serialize the length for message field [config]
    bufferOffset = _serializer.uint32(obj.config.length, buffer, bufferOffset);
    obj.config.forEach((val) => {
      bufferOffset = mayfield_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [params]
    // Serialize the length for message field [params]
    bufferOffset = _serializer.uint32(obj.params.length, buffer, bufferOffset);
    obj.params.forEach((val) => {
      bufferOffset = mayfield_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionCmdMsg
    let len;
    let data = new VisionCmdMsg(null);
    // Deserialize message field [action]
    data.action = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [module]
    data.module = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [config]
    // Deserialize array length for message field [config]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.config = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.config[i] = mayfield_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [params]
    // Deserialize array length for message field [params]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.params = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.params[i] = mayfield_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.action);
    length += _getByteLength(object.module);
    object.config.forEach((val) => {
      length += mayfield_msgs.msg.KeyValue.getMessageSize(val);
    });
    object.params.forEach((val) => {
      length += mayfield_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_msgs/VisionCmdMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5f29199ee20cf95f7e3dafc04935512';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new VisionCmdMsg(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = ''
    }

    if (msg.module !== undefined) {
      resolved.module = msg.module;
    }
    else {
      resolved.module = ''
    }

    if (msg.config !== undefined) {
      resolved.config = new Array(msg.config.length);
      for (let i = 0; i < resolved.config.length; ++i) {
        resolved.config[i] = mayfield_msgs.msg.KeyValue.Resolve(msg.config[i]);
      }
    }
    else {
      resolved.config = []
    }

    if (msg.params !== undefined) {
      resolved.params = new Array(msg.params.length);
      for (let i = 0; i < resolved.params.length; ++i) {
        resolved.params[i] = mayfield_msgs.msg.KeyValue.Resolve(msg.params[i]);
      }
    }
    else {
      resolved.params = []
    }

    return resolved;
    }
};

module.exports = VisionCmdMsg;
