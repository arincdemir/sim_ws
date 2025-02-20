// Auto-generated. Do not edit!

// (in-package mobile_base_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Telescope {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.front_noise = null;
      this.front_left = null;
      this.front_right = null;
      this.front_middle = null;
      this.back_noise = null;
      this.back_left = null;
      this.back_right = null;
      this.back_middle = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('front_noise')) {
        this.front_noise = initObj.front_noise
      }
      else {
        this.front_noise = false;
      }
      if (initObj.hasOwnProperty('front_left')) {
        this.front_left = initObj.front_left
      }
      else {
        this.front_left = false;
      }
      if (initObj.hasOwnProperty('front_right')) {
        this.front_right = initObj.front_right
      }
      else {
        this.front_right = false;
      }
      if (initObj.hasOwnProperty('front_middle')) {
        this.front_middle = initObj.front_middle
      }
      else {
        this.front_middle = false;
      }
      if (initObj.hasOwnProperty('back_noise')) {
        this.back_noise = initObj.back_noise
      }
      else {
        this.back_noise = false;
      }
      if (initObj.hasOwnProperty('back_left')) {
        this.back_left = initObj.back_left
      }
      else {
        this.back_left = false;
      }
      if (initObj.hasOwnProperty('back_right')) {
        this.back_right = initObj.back_right
      }
      else {
        this.back_right = false;
      }
      if (initObj.hasOwnProperty('back_middle')) {
        this.back_middle = initObj.back_middle
      }
      else {
        this.back_middle = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Telescope
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [front_noise]
    bufferOffset = _serializer.bool(obj.front_noise, buffer, bufferOffset);
    // Serialize message field [front_left]
    bufferOffset = _serializer.bool(obj.front_left, buffer, bufferOffset);
    // Serialize message field [front_right]
    bufferOffset = _serializer.bool(obj.front_right, buffer, bufferOffset);
    // Serialize message field [front_middle]
    bufferOffset = _serializer.bool(obj.front_middle, buffer, bufferOffset);
    // Serialize message field [back_noise]
    bufferOffset = _serializer.bool(obj.back_noise, buffer, bufferOffset);
    // Serialize message field [back_left]
    bufferOffset = _serializer.bool(obj.back_left, buffer, bufferOffset);
    // Serialize message field [back_right]
    bufferOffset = _serializer.bool(obj.back_right, buffer, bufferOffset);
    // Serialize message field [back_middle]
    bufferOffset = _serializer.bool(obj.back_middle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Telescope
    let len;
    let data = new Telescope(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_noise]
    data.front_noise = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_left]
    data.front_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_right]
    data.front_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [front_middle]
    data.front_middle = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [back_noise]
    data.back_noise = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [back_left]
    data.back_left = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [back_right]
    data.back_right = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [back_middle]
    data.back_middle = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mobile_base_driver/Telescope';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd73db4ad7bf87689fa1b86ed4b74ff85';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool front_noise
    bool front_left
    bool front_right
    bool front_middle
    bool back_noise
    bool back_left
    bool back_right
    bool back_middle
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Telescope(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.front_noise !== undefined) {
      resolved.front_noise = msg.front_noise;
    }
    else {
      resolved.front_noise = false
    }

    if (msg.front_left !== undefined) {
      resolved.front_left = msg.front_left;
    }
    else {
      resolved.front_left = false
    }

    if (msg.front_right !== undefined) {
      resolved.front_right = msg.front_right;
    }
    else {
      resolved.front_right = false
    }

    if (msg.front_middle !== undefined) {
      resolved.front_middle = msg.front_middle;
    }
    else {
      resolved.front_middle = false
    }

    if (msg.back_noise !== undefined) {
      resolved.back_noise = msg.back_noise;
    }
    else {
      resolved.back_noise = false
    }

    if (msg.back_left !== undefined) {
      resolved.back_left = msg.back_left;
    }
    else {
      resolved.back_left = false
    }

    if (msg.back_right !== undefined) {
      resolved.back_right = msg.back_right;
    }
    else {
      resolved.back_right = false
    }

    if (msg.back_middle !== undefined) {
      resolved.back_middle = msg.back_middle;
    }
    else {
      resolved.back_middle = false
    }

    return resolved;
    }
};

module.exports = Telescope;
