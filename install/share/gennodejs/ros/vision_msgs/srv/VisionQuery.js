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

let mayfield_msgs = _finder('mayfield_msgs');

//-----------------------------------------------------------

class VisionQueryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.module = null;
    }
    else {
      if (initObj.hasOwnProperty('module')) {
        this.module = initObj.module
      }
      else {
        this.module = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionQueryRequest
    // Serialize message field [module]
    bufferOffset = _serializer.string(obj.module, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionQueryRequest
    let len;
    let data = new VisionQueryRequest(null);
    // Deserialize message field [module]
    data.module = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.module);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_msgs/VisionQueryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '600058931f9b66c1264ab7c2bce4ca5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string module
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionQueryRequest(null);
    if (msg.module !== undefined) {
      resolved.module = msg.module;
    }
    else {
      resolved.module = ''
    }

    return resolved;
    }
};

class VisionQueryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.params = null;
    }
    else {
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisionQueryResponse
    // Serialize message field [params]
    // Serialize the length for message field [params]
    bufferOffset = _serializer.uint32(obj.params.length, buffer, bufferOffset);
    obj.params.forEach((val) => {
      bufferOffset = mayfield_msgs.msg.KeyValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisionQueryResponse
    let len;
    let data = new VisionQueryResponse(null);
    // Deserialize message field [params]
    // Deserialize array length for message field [params]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.params = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.params[i] = mayfield_msgs.msg.KeyValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.params.forEach((val) => {
      length += mayfield_msgs.msg.KeyValue.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vision_msgs/VisionQueryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ca5e688d87d427cd0548d0b24dfdd79b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mayfield_msgs/KeyValue[] params
    
    
    ================================================================================
    MSG: mayfield_msgs/KeyValue
    # Key value pair, with values represented as strings
    string k
    string v
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisionQueryResponse(null);
    if (msg.params !== undefined) {
      resolved.params = new Array(msg.params.length);
      for (let i = 0; i < resolved.params.length; ++i) {
        resolved.params[i] = mayfield_msgs.msg.KeyValue.Resolve(msg.params[i]);
      }
    }
    else {
      resolved.params = []
    }

    return resolved;
    }
};

module.exports = {
  Request: VisionQueryRequest,
  Response: VisionQueryResponse,
  md5sum() { return 'a18a49860895521a1824a72a6363fcaf'; },
  datatype() { return 'vision_msgs/VisionQuery'; }
};
