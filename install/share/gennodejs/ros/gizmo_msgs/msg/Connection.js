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

class Connection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_connected = null;
      this.peer_id = null;
      this.are_all_peers_gone = null;
    }
    else {
      if (initObj.hasOwnProperty('is_connected')) {
        this.is_connected = initObj.is_connected
      }
      else {
        this.is_connected = false;
      }
      if (initObj.hasOwnProperty('peer_id')) {
        this.peer_id = initObj.peer_id
      }
      else {
        this.peer_id = '';
      }
      if (initObj.hasOwnProperty('are_all_peers_gone')) {
        this.are_all_peers_gone = initObj.are_all_peers_gone
      }
      else {
        this.are_all_peers_gone = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Connection
    // Serialize message field [is_connected]
    bufferOffset = _serializer.bool(obj.is_connected, buffer, bufferOffset);
    // Serialize message field [peer_id]
    bufferOffset = _serializer.string(obj.peer_id, buffer, bufferOffset);
    // Serialize message field [are_all_peers_gone]
    bufferOffset = _serializer.bool(obj.are_all_peers_gone, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Connection
    let len;
    let data = new Connection(null);
    // Deserialize message field [is_connected]
    data.is_connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [peer_id]
    data.peer_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [are_all_peers_gone]
    data.are_all_peers_gone = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.peer_id);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gizmo_msgs/Connection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f822d32f1144ffda815fe88d48597f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_connected
    string peer_id
    bool are_all_peers_gone
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Connection(null);
    if (msg.is_connected !== undefined) {
      resolved.is_connected = msg.is_connected;
    }
    else {
      resolved.is_connected = false
    }

    if (msg.peer_id !== undefined) {
      resolved.peer_id = msg.peer_id;
    }
    else {
      resolved.peer_id = ''
    }

    if (msg.are_all_peers_gone !== undefined) {
      resolved.are_all_peers_gone = msg.are_all_peers_gone;
    }
    else {
      resolved.are_all_peers_gone = false
    }

    return resolved;
    }
};

module.exports = Connection;
