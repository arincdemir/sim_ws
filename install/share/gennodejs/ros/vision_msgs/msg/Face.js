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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Face {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.capture_time = null;
      this.timetrack = null;
      this.bb = null;
      this.center = null;
      this.size = null;
      this.rotation = null;
      this.keypoints = null;
      this.confidence = null;
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = '';
      }
      if (initObj.hasOwnProperty('capture_time')) {
        this.capture_time = initObj.capture_time
      }
      else {
        this.capture_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('timetrack')) {
        this.timetrack = initObj.timetrack
      }
      else {
        this.timetrack = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('bb')) {
        this.bb = initObj.bb
      }
      else {
        this.bb = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = 0.0;
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = 0.0;
      }
      if (initObj.hasOwnProperty('keypoints')) {
        this.keypoints = initObj.keypoints
      }
      else {
        this.keypoints = new Array(5).fill(new geometry_msgs.msg.Point());
      }
      if (initObj.hasOwnProperty('confidence')) {
        this.confidence = initObj.confidence
      }
      else {
        this.confidence = 0.0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Face
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.string(obj.id, buffer, bufferOffset);
    // Serialize message field [capture_time]
    bufferOffset = _serializer.time(obj.capture_time, buffer, bufferOffset);
    // Serialize message field [timetrack]
    bufferOffset = _serializer.duration(obj.timetrack, buffer, bufferOffset);
    // Check that the constant length array field [bb] has the right length
    if (obj.bb.length !== 4) {
      throw new Error('Unable to serialize array field bb - length must be 4')
    }
    // Serialize message field [bb]
    bufferOffset = _arraySerializer.float32(obj.bb, buffer, bufferOffset, 4);
    // Serialize message field [center]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = _serializer.float32(obj.size, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = _serializer.float32(obj.rotation, buffer, bufferOffset);
    // Check that the constant length array field [keypoints] has the right length
    if (obj.keypoints.length !== 5) {
      throw new Error('Unable to serialize array field keypoints - length must be 5')
    }
    // Serialize message field [keypoints]
    obj.keypoints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [confidence]
    bufferOffset = _serializer.float32(obj.confidence, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Face
    let len;
    let data = new Face(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [capture_time]
    data.capture_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [timetrack]
    data.timetrack = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [bb]
    data.bb = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [center]
    data.center = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [keypoints]
    len = 5;
    data.keypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.keypoints[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [confidence]
    data.confidence = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.id);
    length += _getByteLength(object.name);
    return length + 196;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_msgs/Face';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '327c1a1090cfdba09d7b997f98e7548a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Face(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = ''
    }

    if (msg.capture_time !== undefined) {
      resolved.capture_time = msg.capture_time;
    }
    else {
      resolved.capture_time = {secs: 0, nsecs: 0}
    }

    if (msg.timetrack !== undefined) {
      resolved.timetrack = msg.timetrack;
    }
    else {
      resolved.timetrack = {secs: 0, nsecs: 0}
    }

    if (msg.bb !== undefined) {
      resolved.bb = msg.bb;
    }
    else {
      resolved.bb = new Array(4).fill(0)
    }

    if (msg.center !== undefined) {
      resolved.center = geometry_msgs.msg.Point.Resolve(msg.center)
    }
    else {
      resolved.center = new geometry_msgs.msg.Point()
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = 0.0
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = msg.rotation;
    }
    else {
      resolved.rotation = 0.0
    }

    if (msg.keypoints !== undefined) {
      resolved.keypoints = new Array(5)
      for (let i = 0; i < resolved.keypoints.length; ++i) {
        if (msg.keypoints.length > i) {
          resolved.keypoints[i] = geometry_msgs.msg.Point.Resolve(msg.keypoints[i]);
        }
        else {
          resolved.keypoints[i] = new geometry_msgs.msg.Point();
        }
      }
    }
    else {
      resolved.keypoints = new Array(5).fill(new geometry_msgs.msg.Point())
    }

    if (msg.confidence !== undefined) {
      resolved.confidence = msg.confidence;
    }
    else {
      resolved.confidence = 0.0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

module.exports = Face;
