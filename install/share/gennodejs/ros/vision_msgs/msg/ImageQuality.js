// Auto-generated. Do not edit!

// (in-package vision_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ImageQuality {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.brightness = null;
      this.sharpness = null;
      this.brightness_delta = null;
      this.sharpness_delta = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('brightness')) {
        this.brightness = initObj.brightness
      }
      else {
        this.brightness = 0.0;
      }
      if (initObj.hasOwnProperty('sharpness')) {
        this.sharpness = initObj.sharpness
      }
      else {
        this.sharpness = 0.0;
      }
      if (initObj.hasOwnProperty('brightness_delta')) {
        this.brightness_delta = initObj.brightness_delta
      }
      else {
        this.brightness_delta = 0.0;
      }
      if (initObj.hasOwnProperty('sharpness_delta')) {
        this.sharpness_delta = initObj.sharpness_delta
      }
      else {
        this.sharpness_delta = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageQuality
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [brightness]
    bufferOffset = _serializer.float32(obj.brightness, buffer, bufferOffset);
    // Serialize message field [sharpness]
    bufferOffset = _serializer.float32(obj.sharpness, buffer, bufferOffset);
    // Serialize message field [brightness_delta]
    bufferOffset = _serializer.float32(obj.brightness_delta, buffer, bufferOffset);
    // Serialize message field [sharpness_delta]
    bufferOffset = _serializer.float32(obj.sharpness_delta, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageQuality
    let len;
    let data = new ImageQuality(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [brightness]
    data.brightness = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sharpness]
    data.sharpness = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brightness_delta]
    data.brightness_delta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sharpness_delta]
    data.sharpness_delta = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_msgs/ImageQuality';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3839252c986c29ecf4e52d533209c6b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header for timestamp info
    Header header
    float32 brightness
    float32 sharpness
    float32 brightness_delta
    float32 sharpness_delta
    
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
    const resolved = new ImageQuality(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.brightness !== undefined) {
      resolved.brightness = msg.brightness;
    }
    else {
      resolved.brightness = 0.0
    }

    if (msg.sharpness !== undefined) {
      resolved.sharpness = msg.sharpness;
    }
    else {
      resolved.sharpness = 0.0
    }

    if (msg.brightness_delta !== undefined) {
      resolved.brightness_delta = msg.brightness_delta;
    }
    else {
      resolved.brightness_delta = 0.0
    }

    if (msg.sharpness_delta !== undefined) {
      resolved.sharpness_delta = msg.sharpness_delta;
    }
    else {
      resolved.sharpness_delta = 0.0
    }

    return resolved;
    }
};

module.exports = ImageQuality;
