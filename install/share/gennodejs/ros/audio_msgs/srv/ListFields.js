// Auto-generated. Do not edit!

// (in-package audio_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Field = require('../msg/Field.js');

//-----------------------------------------------------------

class ListFieldsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListFieldsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListFieldsRequest
    let len;
    let data = new ListFieldsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'audio_msgs/ListFieldsRequest';
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
    const resolved = new ListFieldsRequest(null);
    return resolved;
    }
};

class ListFieldsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fields = null;
    }
    else {
      if (initObj.hasOwnProperty('fields')) {
        this.fields = initObj.fields
      }
      else {
        this.fields = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListFieldsResponse
    // Serialize message field [fields]
    // Serialize the length for message field [fields]
    bufferOffset = _serializer.uint32(obj.fields.length, buffer, bufferOffset);
    obj.fields.forEach((val) => {
      bufferOffset = Field.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListFieldsResponse
    let len;
    let data = new ListFieldsResponse(null);
    // Deserialize message field [fields]
    // Deserialize array length for message field [fields]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fields = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fields[i] = Field.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.fields.forEach((val) => {
      length += Field.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'audio_msgs/ListFieldsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83d03de94261ba4e29b909e51c50d482';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    audio_msgs/Field[] fields
    
    
    ================================================================================
    MSG: audio_msgs/Field
    string name
    string type
    uint32 length
    string description
    string mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListFieldsResponse(null);
    if (msg.fields !== undefined) {
      resolved.fields = new Array(msg.fields.length);
      for (let i = 0; i < resolved.fields.length; ++i) {
        resolved.fields[i] = Field.Resolve(msg.fields[i]);
      }
    }
    else {
      resolved.fields = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListFieldsRequest,
  Response: ListFieldsResponse,
  md5sum() { return '83d03de94261ba4e29b909e51c50d482'; },
  datatype() { return 'audio_msgs/ListFields'; }
};
