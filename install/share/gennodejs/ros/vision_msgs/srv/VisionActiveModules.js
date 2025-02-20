// Auto-generated. Do not edit!

// (in-package vision_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class VisionActiveModulesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionActiveModulesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionActiveModulesRequest
    let len;
    let data = new VisionActiveModulesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_msgs/VisionActiveModulesRequest';
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
    const resolved = new VisionActiveModulesRequest(null);
    return resolved;
    }
};

class VisionActiveModulesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.modules = null;
    }
    else {
      if (initObj.hasOwnProperty('modules')) {
        this.modules = initObj.modules
      }
      else {
        this.modules = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionActiveModulesResponse
    // Serialize message field [modules]
    bufferOffset = _arraySerializer.string(obj.modules, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionActiveModulesResponse
    let len;
    let data = new VisionActiveModulesResponse(null);
    // Deserialize message field [modules]
    data.modules = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.modules.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_msgs/VisionActiveModulesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c553a0d7cb2ac6d8e15855b335552825';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] modules
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionActiveModulesResponse(null);
    if (msg.modules !== undefined) {
      resolved.modules = msg.modules;
    }
    else {
      resolved.modules = []
    }

    return resolved;
    }
};

module.exports = {
  Request: VisionActiveModulesRequest,
  Response: VisionActiveModulesResponse,
  md5sum() { return 'c553a0d7cb2ac6d8e15855b335552825'; },
  datatype() { return 'vision_msgs/VisionActiveModules'; }
};
