// Auto-generated. Do not edit!

// (in-package gizmo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let mobile_base_driver = _finder('mobile_base_driver');

//-----------------------------------------------------------

class Bumpers {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.bumper = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('bumper')) {
        this.bumper = initObj.bumper
      }
      else {
        this.bumper = new Array(3).fill(new mobile_base_driver.msg.Bumper());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Bumpers
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [bumper] has the right length
    if (obj.bumper.length !== 3) {
      throw new Error('Unable to serialize array field bumper - length must be 3')
    }
    // Serialize message field [bumper]
    obj.bumper.forEach((val) => {
      bufferOffset = mobile_base_driver.msg.Bumper.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Bumpers
    let len;
    let data = new Bumpers(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bumper]
    len = 3;
    data.bumper = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bumper[i] = mobile_base_driver.msg.Bumper.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gizmo_msgs/Bumpers';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f40b3136ebc0dbea733a4f8867c82aba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    mobile_base_driver/Bumper[3] bumper
    
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
    MSG: mobile_base_driver/Bumper
    # Provides a bumper stae
    
    # bumper
    uint8 RIGHT     = 0
    uint8 CENTER    = 1
    uint8 LEFT      = 2
    
    # bumper state
    uint8 RELEASED = 0
    uint8 PRESSED = 1
    
    uint8 bumper
    uint8 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Bumpers(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.bumper !== undefined) {
      resolved.bumper = new Array(3)
      for (let i = 0; i < resolved.bumper.length; ++i) {
        if (msg.bumper.length > i) {
          resolved.bumper[i] = mobile_base_driver.msg.Bumper.Resolve(msg.bumper[i]);
        }
        else {
          resolved.bumper[i] = new mobile_base_driver.msg.Bumper();
        }
      }
    }
    else {
      resolved.bumper = new Array(3).fill(new mobile_base_driver.msg.Bumper())
    }

    return resolved;
    }
};

module.exports = Bumpers;
