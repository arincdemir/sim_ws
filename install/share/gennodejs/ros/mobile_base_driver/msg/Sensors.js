// Auto-generated. Do not edit!

// (in-package mobile_base_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Bumper = require('./Bumper.js');
let WheelDrop = require('./WheelDrop.js');
let Touch = require('./Touch.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Sensors {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.bumper = null;
      this.wheeldrop = null;
      this.touch = null;
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
        this.bumper = new Array(3).fill(new Bumper());
      }
      if (initObj.hasOwnProperty('wheeldrop')) {
        this.wheeldrop = initObj.wheeldrop
      }
      else {
        this.wheeldrop = new Array(2).fill(new WheelDrop());
      }
      if (initObj.hasOwnProperty('touch')) {
        this.touch = initObj.touch
      }
      else {
        this.touch = new Touch();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sensors
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [bumper] has the right length
    if (obj.bumper.length !== 3) {
      throw new Error('Unable to serialize array field bumper - length must be 3')
    }
    // Serialize message field [bumper]
    obj.bumper.forEach((val) => {
      bufferOffset = Bumper.serialize(val, buffer, bufferOffset);
    });
    // Check that the constant length array field [wheeldrop] has the right length
    if (obj.wheeldrop.length !== 2) {
      throw new Error('Unable to serialize array field wheeldrop - length must be 2')
    }
    // Serialize message field [wheeldrop]
    obj.wheeldrop.forEach((val) => {
      bufferOffset = WheelDrop.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [touch]
    bufferOffset = Touch.serialize(obj.touch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sensors
    let len;
    let data = new Sensors(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [bumper]
    len = 3;
    data.bumper = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.bumper[i] = Bumper.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [wheeldrop]
    len = 2;
    data.wheeldrop = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.wheeldrop[i] = WheelDrop.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [touch]
    data.touch = Touch.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Touch.getMessageSize(object.touch);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_base_driver/Sensors';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '62120da0767c5e0efa3534875705e11a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # sensor state published at a fixed frequency by the driver
    
    Header header
    
    # XXX: sensor indices in their respective arrays does not necessarily
    # reflect what sensor it actually represents
    # Each of these messages has its own internal field for that purpose.
    # Example: check wheeldrop[0].wheel == WheelDrop.RIGHT and do not rely on the 0
    Bumper[3]          bumper
    WheelDrop[2]       wheeldrop
    Touch              touch
    
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
    
    ================================================================================
    MSG: mobile_base_driver/WheelDrop
    # Provides a wheeldrop sensor stae
    
    # wheel
    uint8 RIGHT = 0
    uint8 LEFT  = 1
    
    # wheel state
    uint8 RAISED  = 0
    uint8 DROPPED = 1
    
    uint8 wheel
    uint8 state
    
    ================================================================================
    MSG: mobile_base_driver/Touch
    # true means touched
    # [FRONT_LEFT, LEFT, REAR_LEFT, CENTER, FRONT, REAR_RIGHT, RIGHT, FRONT_RIGHT]
    bool[] electrodes
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sensors(null);
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
          resolved.bumper[i] = Bumper.Resolve(msg.bumper[i]);
        }
        else {
          resolved.bumper[i] = new Bumper();
        }
      }
    }
    else {
      resolved.bumper = new Array(3).fill(new Bumper())
    }

    if (msg.wheeldrop !== undefined) {
      resolved.wheeldrop = new Array(2)
      for (let i = 0; i < resolved.wheeldrop.length; ++i) {
        if (msg.wheeldrop.length > i) {
          resolved.wheeldrop[i] = WheelDrop.Resolve(msg.wheeldrop[i]);
        }
        else {
          resolved.wheeldrop[i] = new WheelDrop();
        }
      }
    }
    else {
      resolved.wheeldrop = new Array(2).fill(new WheelDrop())
    }

    if (msg.touch !== undefined) {
      resolved.touch = Touch.Resolve(msg.touch)
    }
    else {
      resolved.touch = new Touch()
    }

    return resolved;
    }
};

module.exports = Sensors;
