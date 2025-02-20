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

class ClientWaypoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_id = null;
      this.waypoint_uuid = null;
    }
    else {
      if (initObj.hasOwnProperty('request_id')) {
        this.request_id = initObj.request_id
      }
      else {
        this.request_id = '';
      }
      if (initObj.hasOwnProperty('waypoint_uuid')) {
        this.waypoint_uuid = initObj.waypoint_uuid
      }
      else {
        this.waypoint_uuid = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClientWaypoint
    // Serialize message field [request_id]
    bufferOffset = _serializer.string(obj.request_id, buffer, bufferOffset);
    // Serialize message field [waypoint_uuid]
    bufferOffset = _serializer.string(obj.waypoint_uuid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClientWaypoint
    let len;
    let data = new ClientWaypoint(null);
    // Deserialize message field [request_id]
    data.request_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [waypoint_uuid]
    data.waypoint_uuid = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.request_id);
    length += _getByteLength(object.waypoint_uuid);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gizmo_msgs/ClientWaypoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c9794c65e35c44ec180ec268a6f377c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string request_id
    string waypoint_uuid
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClientWaypoint(null);
    if (msg.request_id !== undefined) {
      resolved.request_id = msg.request_id;
    }
    else {
      resolved.request_id = ''
    }

    if (msg.waypoint_uuid !== undefined) {
      resolved.waypoint_uuid = msg.waypoint_uuid;
    }
    else {
      resolved.waypoint_uuid = ''
    }

    return resolved;
    }
};

module.exports = ClientWaypoint;
