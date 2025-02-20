// Auto-generated. Do not edit!

// (in-package mobile_base_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Motor = require('./Motor.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Stall {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.motor = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('motor')) {
        this.motor = initObj.motor
      }
      else {
        this.motor = new Array(5).fill(new Motor());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Stall
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [motor] has the right length
    if (obj.motor.length !== 5) {
      throw new Error('Unable to serialize array field motor - length must be 5')
    }
    // Serialize message field [motor]
    obj.motor.forEach((val) => {
      bufferOffset = Motor.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Stall
    let len;
    let data = new Stall(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [motor]
    len = 5;
    data.motor = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motor[i] = Motor.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_base_driver/Stall';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6519e11145a7e7fc40fd5a90d611dcc9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Motor Stall state published at a fixed frequency by the driver
    
    Header header
    
    # XXX: wheel indices in their respective arrays does not necessarily
    # reflect what wheel it actually represents
    # Each of these messages has its own internal field for that purpose.
    # Example: check motor[0].motor == Motor.RIGHTWHEEL and do not rely on the 0
    
    Motor[5] motor
    
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
    MSG: mobile_base_driver/Motor
    # Provides a motor state
    
    # motor
    uint8 RIGHTWHEEL     = 0
    uint8 LEFTWHEEL      = 1
    uint8 PAN            = 2
    uint8 TILT           = 3
    uint8 EYES           = 4
    
    bool  stalled
    bool  pushed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Stall(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.motor !== undefined) {
      resolved.motor = new Array(5)
      for (let i = 0; i < resolved.motor.length; ++i) {
        if (msg.motor.length > i) {
          resolved.motor[i] = Motor.Resolve(msg.motor[i]);
        }
        else {
          resolved.motor[i] = new Motor();
        }
      }
    }
    else {
      resolved.motor = new Array(5).fill(new Motor())
    }

    return resolved;
    }
};

module.exports = Stall;
