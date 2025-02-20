// Auto-generated. Do not edit!

// (in-package mayfield_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StringExchangeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.in_str = null;
    }
    else {
      if (initObj.hasOwnProperty('in_str')) {
        this.in_str = initObj.in_str
      }
      else {
        this.in_str = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StringExchangeRequest
    // Serialize message field [in_str]
    bufferOffset = _serializer.string(obj.in_str, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StringExchangeRequest
    let len;
    let data = new StringExchangeRequest(null);
    // Deserialize message field [in_str]
    data.in_str = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.in_str);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mayfield_msgs/StringExchangeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f9c8f020f942ff7ae538c3437691557';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string in_str
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StringExchangeRequest(null);
    if (msg.in_str !== undefined) {
      resolved.in_str = msg.in_str;
    }
    else {
      resolved.in_str = ''
    }

    return resolved;
    }
};

class StringExchangeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.out_str = null;
    }
    else {
      if (initObj.hasOwnProperty('out_str')) {
        this.out_str = initObj.out_str
      }
      else {
        this.out_str = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StringExchangeResponse
    // Serialize message field [out_str]
    bufferOffset = _serializer.string(obj.out_str, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StringExchangeResponse
    let len;
    let data = new StringExchangeResponse(null);
    // Deserialize message field [out_str]
    data.out_str = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.out_str);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'mayfield_msgs/StringExchangeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13b8d372fde087a39080c35a17c75290';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string out_str
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StringExchangeResponse(null);
    if (msg.out_str !== undefined) {
      resolved.out_str = msg.out_str;
    }
    else {
      resolved.out_str = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: StringExchangeRequest,
  Response: StringExchangeResponse,
  md5sum() { return '8b07386faeaa10fd20f5d838aa59f460'; },
  datatype() { return 'mayfield_msgs/StringExchange'; }
};
