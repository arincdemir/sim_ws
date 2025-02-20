// Auto-generated. Do not edit!

// (in-package gizmo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RomojiGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.sound = null;
      this.request_id = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('sound')) {
        this.sound = initObj.sound
      }
      else {
        this.sound = false;
      }
      if (initObj.hasOwnProperty('request_id')) {
        this.request_id = initObj.request_id
      }
      else {
        this.request_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RomojiGoal
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [sound]
    bufferOffset = _serializer.bool(obj.sound, buffer, bufferOffset);
    // Serialize message field [request_id]
    bufferOffset = _serializer.string(obj.request_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RomojiGoal
    let len;
    let data = new RomojiGoal(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [sound]
    data.sound = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [request_id]
    data.request_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.request_id);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gizmo_msgs/RomojiGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e81e783d10916ab9bbf83e484eaeac29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Name of romoji to play
    string name
    # Whether to play sound or not (if the animation has sounds)
    bool sound
    # Request ID of the animation
    string request_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RomojiGoal(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.sound !== undefined) {
      resolved.sound = msg.sound;
    }
    else {
      resolved.sound = false
    }

    if (msg.request_id !== undefined) {
      resolved.request_id = msg.request_id;
    }
    else {
      resolved.request_id = ''
    }

    return resolved;
    }
};

module.exports = RomojiGoal;
