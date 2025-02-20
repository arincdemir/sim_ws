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

class GetFieldRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFieldRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFieldRequest
    let len;
    let data = new GetFieldRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gizmo_msgs/GetFieldRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1f3d28f1b044c871e6eff2e9fc3c667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFieldRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class GetFieldResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.json_value = null;
    }
    else {
      if (initObj.hasOwnProperty('json_value')) {
        this.json_value = initObj.json_value
      }
      else {
        this.json_value = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFieldResponse
    // Serialize message field [json_value]
    bufferOffset = _serializer.string(obj.json_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFieldResponse
    let len;
    let data = new GetFieldResponse(null);
    // Deserialize message field [json_value]
    data.json_value = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.json_value);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gizmo_msgs/GetFieldResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1831f50ffa460ebb677d4ed8c7c0db9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string json_value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFieldResponse(null);
    if (msg.json_value !== undefined) {
      resolved.json_value = msg.json_value;
    }
    else {
      resolved.json_value = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetFieldRequest,
  Response: GetFieldResponse,
  md5sum() { return 'fefc1eaa409232c39ae3f696ddd678d5'; },
  datatype() { return 'gizmo_msgs/GetField'; }
};
