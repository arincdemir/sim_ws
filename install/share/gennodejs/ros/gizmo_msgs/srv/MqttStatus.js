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

class MqttStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MqttStatusRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MqttStatusRequest
    let len;
    let data = new MqttStatusRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gizmo_msgs/MqttStatusRequest';
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
    const resolved = new MqttStatusRequest(null);
    return resolved;
    }
};

class MqttStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.device = null;
      this.environment = null;
      this.robot_id = null;
      this.alt_cred_path = null;
      this.connected = null;
    }
    else {
      if (initObj.hasOwnProperty('device')) {
        this.device = initObj.device
      }
      else {
        this.device = '';
      }
      if (initObj.hasOwnProperty('environment')) {
        this.environment = initObj.environment
      }
      else {
        this.environment = '';
      }
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = '';
      }
      if (initObj.hasOwnProperty('alt_cred_path')) {
        this.alt_cred_path = initObj.alt_cred_path
      }
      else {
        this.alt_cred_path = '';
      }
      if (initObj.hasOwnProperty('connected')) {
        this.connected = initObj.connected
      }
      else {
        this.connected = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MqttStatusResponse
    // Serialize message field [device]
    bufferOffset = _serializer.string(obj.device, buffer, bufferOffset);
    // Serialize message field [environment]
    bufferOffset = _serializer.string(obj.environment, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = _serializer.string(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [alt_cred_path]
    bufferOffset = _serializer.string(obj.alt_cred_path, buffer, bufferOffset);
    // Serialize message field [connected]
    bufferOffset = _serializer.bool(obj.connected, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MqttStatusResponse
    let len;
    let data = new MqttStatusResponse(null);
    // Deserialize message field [device]
    data.device = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [environment]
    data.environment = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [alt_cred_path]
    data.alt_cred_path = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [connected]
    data.connected = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.device);
    length += _getByteLength(object.environment);
    length += _getByteLength(object.robot_id);
    length += _getByteLength(object.alt_cred_path);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gizmo_msgs/MqttStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3313a52b8cda4d151d159b5b106a66d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # MQTT Node will assemble topic names for you based on the device, environment
    # robot_id, and the 'endpoint' which is specified when you publish the message
    # More info at:
    # https://github.com/mayfieldrobotics/kuri_project_management/tree/master/mqtt
    string device
    string environment
    string robot_id
    
    # In test environment, we let MQTT pick its own path for credentials so we
    # don't interfere with other MQTT nodes
    string alt_cred_path
    
    bool connected
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MqttStatusResponse(null);
    if (msg.device !== undefined) {
      resolved.device = msg.device;
    }
    else {
      resolved.device = ''
    }

    if (msg.environment !== undefined) {
      resolved.environment = msg.environment;
    }
    else {
      resolved.environment = ''
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = ''
    }

    if (msg.alt_cred_path !== undefined) {
      resolved.alt_cred_path = msg.alt_cred_path;
    }
    else {
      resolved.alt_cred_path = ''
    }

    if (msg.connected !== undefined) {
      resolved.connected = msg.connected;
    }
    else {
      resolved.connected = false
    }

    return resolved;
    }
};

module.exports = {
  Request: MqttStatusRequest,
  Response: MqttStatusResponse,
  md5sum() { return '3313a52b8cda4d151d159b5b106a66d1'; },
  datatype() { return 'gizmo_msgs/MqttStatus'; }
};
