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

class ImageClustering {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cluster = null;
      this.current_cluster_size = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cluster')) {
        this.cluster = initObj.cluster
      }
      else {
        this.cluster = '';
      }
      if (initObj.hasOwnProperty('current_cluster_size')) {
        this.current_cluster_size = initObj.current_cluster_size
      }
      else {
        this.current_cluster_size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageClustering
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cluster]
    bufferOffset = _serializer.string(obj.cluster, buffer, bufferOffset);
    // Serialize message field [current_cluster_size]
    bufferOffset = _serializer.uint16(obj.current_cluster_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageClustering
    let len;
    let data = new ImageClustering(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster]
    data.cluster = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [current_cluster_size]
    data.current_cluster_size = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.cluster);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_msgs/ImageClustering';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e72c57ecabfb90e37b6f225cc4bdd2dd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header for timestamp / frame info
    Header header
    
    string cluster
    uint16 current_cluster_size
    
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
    const resolved = new ImageClustering(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cluster !== undefined) {
      resolved.cluster = msg.cluster;
    }
    else {
      resolved.cluster = ''
    }

    if (msg.current_cluster_size !== undefined) {
      resolved.current_cluster_size = msg.current_cluster_size;
    }
    else {
      resolved.current_cluster_size = 0
    }

    return resolved;
    }
};

module.exports = ImageClustering;
