// Auto-generated. Do not edit!

// (in-package mobile_base_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CliffSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensor = null;
      this.state = null;
      this.distance = null;
      this.return_rate = null;
    }
    else {
      if (initObj.hasOwnProperty('sensor')) {
        this.sensor = initObj.sensor
      }
      else {
        this.sensor = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('distance')) {
        this.distance = initObj.distance
      }
      else {
        this.distance = 0.0;
      }
      if (initObj.hasOwnProperty('return_rate')) {
        this.return_rate = initObj.return_rate
      }
      else {
        this.return_rate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CliffSensor
    // Serialize message field [sensor]
    bufferOffset = _serializer.uint8(obj.sensor, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    // Serialize message field [distance]
    bufferOffset = _serializer.float32(obj.distance, buffer, bufferOffset);
    // Serialize message field [return_rate]
    bufferOffset = _serializer.float32(obj.return_rate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CliffSensor
    let len;
    let data = new CliffSensor(null);
    // Deserialize message field [sensor]
    data.sensor = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [distance]
    data.distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [return_rate]
    data.return_rate = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_base_driver/CliffSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df8e935c1e6098b4bc39e9a6c6ab00d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Provides a cliff sensor reading
    # This message is generated whenever a particular cliff sensor signals that the
    # robot approaches or moves away from a cliff.
    
    # cliff sensor
    uint8 RIGHT     = 0
    uint8 MIDRIGHT  = 1
    uint8 MIDLEFT   = 2
    uint8 LEFT      = 3
    uint8 BACKLEFT  = 4
    uint8 BACKRIGHT = 5
    
    # cliff sensor state
    uint8 FLOOR = 0
    uint8 CLIFF = 1
    
    uint8 sensor
    uint8 state
    
    # distance to floor when cliff was detected
    float32 distance
    
    # return rate from the vl6180x, rear cliff sensors only
    float32 return_rate
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CliffSensor(null);
    if (msg.sensor !== undefined) {
      resolved.sensor = msg.sensor;
    }
    else {
      resolved.sensor = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.distance !== undefined) {
      resolved.distance = msg.distance;
    }
    else {
      resolved.distance = 0.0
    }

    if (msg.return_rate !== undefined) {
      resolved.return_rate = msg.return_rate;
    }
    else {
      resolved.return_rate = 0.0
    }

    return resolved;
    }
};

// Constants for message
CliffSensor.Constants = {
  RIGHT: 0,
  MIDRIGHT: 1,
  MIDLEFT: 2,
  LEFT: 3,
  BACKLEFT: 4,
  BACKRIGHT: 5,
  FLOOR: 0,
  CLIFF: 1,
}

module.exports = CliffSensor;
