// Auto-generated. Do not edit!

// (in-package mobile_base_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CliffSensor = require('./CliffSensor.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CliffArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cliff = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cliff')) {
        this.cliff = initObj.cliff
      }
      else {
        this.cliff = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CliffArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cliff]
    // Serialize the length for message field [cliff]
    bufferOffset = _serializer.uint32(obj.cliff.length, buffer, bufferOffset);
    obj.cliff.forEach((val) => {
      bufferOffset = CliffSensor.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CliffArray
    let len;
    let data = new CliffArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cliff]
    // Deserialize array length for message field [cliff]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cliff = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cliff[i] = CliffSensor.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 10 * object.cliff.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_base_driver/CliffArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fd810cb276829214052d0f48967ff86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # XXX: sensor indices in their respective arrays does not necessarily
    # reflect what sensor it actually represents
    # Each of these messages has its own internal field for that purpose.
    # Example: check wheeldrop[0].wheel == WheelDrop.RIGHT and do not rely on the 0
    CliffSensor[] cliff
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: mobile_base_driver/CliffSensor
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
    const resolved = new CliffArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cliff !== undefined) {
      resolved.cliff = new Array(msg.cliff.length);
      for (let i = 0; i < resolved.cliff.length; ++i) {
        resolved.cliff[i] = CliffSensor.Resolve(msg.cliff[i]);
      }
    }
    else {
      resolved.cliff = []
    }

    return resolved;
    }
};

module.exports = CliffArray;
