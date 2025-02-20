// Auto-generated. Do not edit!

// (in-package social_sim_ros.msg)


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

class TrialStart {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trial_name = null;
      this.trial_number = null;
      this.spawn = null;
      this.target = null;
      this.people = null;
      this.time_limit = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trial_name')) {
        this.trial_name = initObj.trial_name
      }
      else {
        this.trial_name = '';
      }
      if (initObj.hasOwnProperty('trial_number')) {
        this.trial_number = initObj.trial_number
      }
      else {
        this.trial_number = 0;
      }
      if (initObj.hasOwnProperty('spawn')) {
        this.spawn = initObj.spawn
      }
      else {
        this.spawn = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('people')) {
        this.people = initObj.people
      }
      else {
        this.people = new geometry_msgs.msg.PoseArray();
      }
      if (initObj.hasOwnProperty('time_limit')) {
        this.time_limit = initObj.time_limit
      }
      else {
        this.time_limit = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrialStart
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trial_name]
    bufferOffset = _serializer.string(obj.trial_name, buffer, bufferOffset);
    // Serialize message field [trial_number]
    bufferOffset = _serializer.uint16(obj.trial_number, buffer, bufferOffset);
    // Serialize message field [spawn]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.spawn, buffer, bufferOffset);
    // Serialize message field [target]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.target, buffer, bufferOffset);
    // Serialize message field [people]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.people, buffer, bufferOffset);
    // Serialize message field [time_limit]
    bufferOffset = _serializer.float64(obj.time_limit, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrialStart
    let len;
    let data = new TrialStart(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trial_name]
    data.trial_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [trial_number]
    data.trial_number = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [spawn]
    data.spawn = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [target]
    data.target = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [people]
    data.people = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [time_limit]
    data.time_limit = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.trial_name);
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.people);
    return length + 126;
  }

  static datatype() {
    // Returns string type for a message object
    return 'social_sim_ros/TrialStart';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8977fce884e0099b26d82cb11060e412';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message containing the parameters to start an A-B navigation trial
    
    Header                  header
    string                  trial_name      # Which trial name are we running
    uint16                  trial_number    # Which trial number are we running
    geometry_msgs/Pose      spawn           # Robot spawn position
    geometry_msgs/Pose      target          # Robot target position
    geometry_msgs/PoseArray people          # People spawn positions
    float64                 time_limit      # Time limit for the trial (in seconds)
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrialStart(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trial_name !== undefined) {
      resolved.trial_name = msg.trial_name;
    }
    else {
      resolved.trial_name = ''
    }

    if (msg.trial_number !== undefined) {
      resolved.trial_number = msg.trial_number;
    }
    else {
      resolved.trial_number = 0
    }

    if (msg.spawn !== undefined) {
      resolved.spawn = geometry_msgs.msg.Pose.Resolve(msg.spawn)
    }
    else {
      resolved.spawn = new geometry_msgs.msg.Pose()
    }

    if (msg.target !== undefined) {
      resolved.target = geometry_msgs.msg.Pose.Resolve(msg.target)
    }
    else {
      resolved.target = new geometry_msgs.msg.Pose()
    }

    if (msg.people !== undefined) {
      resolved.people = geometry_msgs.msg.PoseArray.Resolve(msg.people)
    }
    else {
      resolved.people = new geometry_msgs.msg.PoseArray()
    }

    if (msg.time_limit !== undefined) {
      resolved.time_limit = msg.time_limit;
    }
    else {
      resolved.time_limit = 0.0
    }

    return resolved;
    }
};

module.exports = TrialStart;
