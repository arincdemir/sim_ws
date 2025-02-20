// Auto-generated. Do not edit!

// (in-package may_nav_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetObstacleDistRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetObstacleDistRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetObstacleDistRequest
    let len;
    let data = new GetObstacleDistRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'may_nav_msgs/GetObstacleDistRequest';
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
    const resolved = new GetObstacleDistRequest(null);
    return resolved;
    }
};

class GetObstacleDistResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obstacle_dist = null;
    }
    else {
      if (initObj.hasOwnProperty('obstacle_dist')) {
        this.obstacle_dist = initObj.obstacle_dist
      }
      else {
        this.obstacle_dist = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetObstacleDistResponse
    // Serialize message field [obstacle_dist]
    bufferOffset = _serializer.float64(obj.obstacle_dist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetObstacleDistResponse
    let len;
    let data = new GetObstacleDistResponse(null);
    // Deserialize message field [obstacle_dist]
    data.obstacle_dist = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'may_nav_msgs/GetObstacleDistResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '444b488bceb285c64c25be6c2269d8db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 obstacle_dist
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetObstacleDistResponse(null);
    if (msg.obstacle_dist !== undefined) {
      resolved.obstacle_dist = msg.obstacle_dist;
    }
    else {
      resolved.obstacle_dist = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: GetObstacleDistRequest,
  Response: GetObstacleDistResponse,
  md5sum() { return '444b488bceb285c64c25be6c2269d8db'; },
  datatype() { return 'may_nav_msgs/GetObstacleDist'; }
};
