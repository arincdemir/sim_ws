// Auto-generated. Do not edit!

// (in-package vision_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Face = require('./Face.js');

//-----------------------------------------------------------

class FaceArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.faces = null;
    }
    else {
      if (initObj.hasOwnProperty('faces')) {
        this.faces = initObj.faces
      }
      else {
        this.faces = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaceArray
    // Serialize message field [faces]
    // Serialize the length for message field [faces]
    bufferOffset = _serializer.uint32(obj.faces.length, buffer, bufferOffset);
    obj.faces.forEach((val) => {
      bufferOffset = Face.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaceArray
    let len;
    let data = new FaceArray(null);
    // Deserialize message field [faces]
    // Deserialize array length for message field [faces]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.faces = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.faces[i] = Face.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.faces.forEach((val) => {
      length += Face.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_msgs/FaceArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22ce0869e5c5474804f18cc49c6e69ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Face[] faces
    
    ================================================================================
    MSG: vision_msgs/Face
    # Header for timestamp info
    Header header
    
    # Unique identifier
    string id
    
    # Time that the image was captured
    time capture_time
    
    # Amount of time that the face has been tracked
    duration timetrack
    
    # Bounding box of the face in pixels [x_origin, y_origin, width, height]
    float32[4] bb
    
    # Center of the face (x, y, _) in the range ([0.0, 1.0], [0.0, 1.0])
    geometry_msgs/Point center
    
    # Percentage of the face compared to the image size in pixels 
    # (in the range [0.0, 1.0])
    float32 size
    
    # Rotation of the face in degrees (difference in the angle of eyes compared 
    # to a horizontal line)
    float32 rotation 							
    
    #  Keypoints for eyes, nose, mouth
    geometry_msgs/Point[5] keypoints
    
    # Confidence value in the range [0.0, 1.0]
    float32 confidence
    
    #  Currently unused, for future compatibility
    string name
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FaceArray(null);
    if (msg.faces !== undefined) {
      resolved.faces = new Array(msg.faces.length);
      for (let i = 0; i < resolved.faces.length; ++i) {
        resolved.faces[i] = Face.Resolve(msg.faces[i]);
      }
    }
    else {
      resolved.faces = []
    }

    return resolved;
    }
};

module.exports = FaceArray;
