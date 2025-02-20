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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetDirectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.threshold = null;
      this.ms_duration = null;
      this.ms_delay = null;
    }
    else {
      if (initObj.hasOwnProperty('threshold')) {
        this.threshold = initObj.threshold
      }
      else {
        this.threshold = 0;
      }
      if (initObj.hasOwnProperty('ms_duration')) {
        this.ms_duration = initObj.ms_duration
      }
      else {
        this.ms_duration = 0;
      }
      if (initObj.hasOwnProperty('ms_delay')) {
        this.ms_delay = initObj.ms_delay
      }
      else {
        this.ms_delay = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDirectionRequest
    // Serialize message field [threshold]
    bufferOffset = _serializer.uint8(obj.threshold, buffer, bufferOffset);
    // Serialize message field [ms_duration]
    bufferOffset = _serializer.uint16(obj.ms_duration, buffer, bufferOffset);
    // Serialize message field [ms_delay]
    bufferOffset = _serializer.uint16(obj.ms_delay, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDirectionRequest
    let len;
    let data = new GetDirectionRequest(null);
    // Deserialize message field [threshold]
    data.threshold = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ms_duration]
    data.ms_duration = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ms_delay]
    data.ms_delay = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gizmo_msgs/GetDirectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '973b922ecf777fa6c205891146371856';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 threshold
    uint16 ms_duration
    uint16 ms_delay
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDirectionRequest(null);
    if (msg.threshold !== undefined) {
      resolved.threshold = msg.threshold;
    }
    else {
      resolved.threshold = 0
    }

    if (msg.ms_duration !== undefined) {
      resolved.ms_duration = msg.ms_duration;
    }
    else {
      resolved.ms_duration = 0
    }

    if (msg.ms_delay !== undefined) {
      resolved.ms_delay = msg.ms_delay;
    }
    else {
      resolved.ms_delay = 0
    }

    return resolved;
    }
};

class GetDirectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.direction = null;
      this.relative_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('direction')) {
        this.direction = initObj.direction
      }
      else {
        this.direction = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('relative_angle')) {
        this.relative_angle = initObj.relative_angle
      }
      else {
        this.relative_angle = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetDirectionResponse
    // Serialize message field [direction]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.direction, buffer, bufferOffset);
    // Serialize message field [relative_angle]
    bufferOffset = _serializer.uint16(obj.relative_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetDirectionResponse
    let len;
    let data = new GetDirectionResponse(null);
    // Deserialize message field [direction]
    data.direction = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [relative_angle]
    data.relative_angle = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a service object
    return 'gizmo_msgs/GetDirectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f99ddfa4492f08fd765dbee01d4e341';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Vector3 direction
    uint16 relative_angle
    
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetDirectionResponse(null);
    if (msg.direction !== undefined) {
      resolved.direction = geometry_msgs.msg.Vector3.Resolve(msg.direction)
    }
    else {
      resolved.direction = new geometry_msgs.msg.Vector3()
    }

    if (msg.relative_angle !== undefined) {
      resolved.relative_angle = msg.relative_angle;
    }
    else {
      resolved.relative_angle = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetDirectionRequest,
  Response: GetDirectionResponse,
  md5sum() { return '18df3bbfde541a22f50d99a6830ed9b3'; },
  datatype() { return 'gizmo_msgs/GetDirection'; }
};
