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

class NodeStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_name = null;
      this.online = null;
    }
    else {
      if (initObj.hasOwnProperty('node_name')) {
        this.node_name = initObj.node_name
      }
      else {
        this.node_name = '';
      }
      if (initObj.hasOwnProperty('online')) {
        this.online = initObj.online
      }
      else {
        this.online = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeStatus
    // Serialize message field [node_name]
    bufferOffset = _serializer.string(obj.node_name, buffer, bufferOffset);
    // Serialize message field [online]
    bufferOffset = _serializer.bool(obj.online, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeStatus
    let len;
    let data = new NodeStatus(null);
    // Deserialize message field [node_name]
    data.node_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [online]
    data.online = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.node_name);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mayfield_msgs/NodeStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2938585155f971aea1e199f84d3637b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string node_name
    bool online
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeStatus(null);
    if (msg.node_name !== undefined) {
      resolved.node_name = msg.node_name;
    }
    else {
      resolved.node_name = ''
    }

    if (msg.online !== undefined) {
      resolved.online = msg.online;
    }
    else {
      resolved.online = false
    }

    return resolved;
    }
};

module.exports = NodeStatus;
