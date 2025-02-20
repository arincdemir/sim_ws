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

class UploaderStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UploaderStatusRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UploaderStatusRequest
    let len;
    let data = new UploaderStatusRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gizmo_msgs/UploaderStatusRequest';
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
    const resolved = new UploaderStatusRequest(null);
    return resolved;
    }
};

class UploaderStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.uploader_queue = null;
    }
    else {
      if (initObj.hasOwnProperty('uploader_queue')) {
        this.uploader_queue = initObj.uploader_queue
      }
      else {
        this.uploader_queue = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UploaderStatusResponse
    // Serialize message field [uploader_queue]
    bufferOffset = _serializer.string(obj.uploader_queue, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UploaderStatusResponse
    let len;
    let data = new UploaderStatusResponse(null);
    // Deserialize message field [uploader_queue]
    data.uploader_queue = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.uploader_queue);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gizmo_msgs/UploaderStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45a8d1674409243c4a0a0fc18fd55f7d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # In test environment, we let the cloud uploader pick its own path for the
    # uploader queue.  In normal operation this will point to
    # /mayfield/something/something
    string uploader_queue
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UploaderStatusResponse(null);
    if (msg.uploader_queue !== undefined) {
      resolved.uploader_queue = msg.uploader_queue;
    }
    else {
      resolved.uploader_queue = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: UploaderStatusRequest,
  Response: UploaderStatusResponse,
  md5sum() { return '45a8d1674409243c4a0a0fc18fd55f7d'; },
  datatype() { return 'gizmo_msgs/UploaderStatus'; }
};
