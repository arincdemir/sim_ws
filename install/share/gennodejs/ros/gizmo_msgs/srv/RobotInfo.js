// Auto-generated. Do not edit!

// (in-package gizmo_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RobotInfoRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotInfoRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotInfoRequest
    let len;
    let data = new RobotInfoRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gizmo_msgs/RobotInfoRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotInfoRequest(null);
    return resolved;
    }
};

class RobotInfoResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.client_interface_ver = null;
      this.robot_base_ver = null;
      this.gizmo_ver = null;
    }
    else {
      if (initObj.hasOwnProperty('client_interface_ver')) {
        this.client_interface_ver = initObj.client_interface_ver
      }
      else {
        this.client_interface_ver = 0;
      }
      if (initObj.hasOwnProperty('robot_base_ver')) {
        this.robot_base_ver = initObj.robot_base_ver
      }
      else {
        this.robot_base_ver = '';
      }
      if (initObj.hasOwnProperty('gizmo_ver')) {
        this.gizmo_ver = initObj.gizmo_ver
      }
      else {
        this.gizmo_ver = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotInfoResponse
    // Serialize message field [client_interface_ver]
    bufferOffset = _serializer.uint16(obj.client_interface_ver, buffer, bufferOffset);
    // Serialize message field [robot_base_ver]
    bufferOffset = _serializer.string(obj.robot_base_ver, buffer, bufferOffset);
    // Serialize message field [gizmo_ver]
    bufferOffset = _serializer.string(obj.gizmo_ver, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotInfoResponse
    let len;
    let data = new RobotInfoResponse(null);
    // Deserialize message field [client_interface_ver]
    data.client_interface_ver = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [robot_base_ver]
    data.robot_base_ver = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gizmo_ver]
    data.gizmo_ver = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.robot_base_ver);
    length += _getByteLength(object.gizmo_ver);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gizmo_msgs/RobotInfoResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6bab6b4a913b26a0d3237655be117a32';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 client_interface_ver
    string robot_base_ver
    string gizmo_ver
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotInfoResponse(null);
    if (msg.client_interface_ver !== undefined) {
      resolved.client_interface_ver = msg.client_interface_ver;
    }
    else {
      resolved.client_interface_ver = 0
    }

    if (msg.robot_base_ver !== undefined) {
      resolved.robot_base_ver = msg.robot_base_ver;
    }
    else {
      resolved.robot_base_ver = ''
    }

    if (msg.gizmo_ver !== undefined) {
      resolved.gizmo_ver = msg.gizmo_ver;
    }
    else {
      resolved.gizmo_ver = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: RobotInfoRequest,
  Response: RobotInfoResponse,
  md5sum() { return '6bab6b4a913b26a0d3237655be117a32'; },
  datatype() { return 'gizmo_msgs/RobotInfo'; }
};
