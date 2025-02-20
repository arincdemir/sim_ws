// Auto-generated. Do not edit!

// (in-package social_sim_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Agent = require('./Agent.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AgentArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.agents = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('agents')) {
        this.agents = initObj.agents
      }
      else {
        this.agents = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgentArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [agents]
    // Serialize the length for message field [agents]
    bufferOffset = _serializer.uint32(obj.agents.length, buffer, bufferOffset);
    obj.agents.forEach((val) => {
      bufferOffset = Agent.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgentArray
    let len;
    let data = new AgentArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [agents]
    // Deserialize array length for message field [agents]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.agents = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.agents[i] = Agent.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.agents.forEach((val) => {
      length += Agent.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'social_sim_ros/AgentArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f3637fe5cf04805aaaa1c9d7f5247a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message defining an array of all agent entries
    Header          header      # Age of the track
    Agent[]         agents      # Array containing the entries for the N agents in the current environment
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
    MSG: social_sim_ros/Agent
    # Message defining an entry of a agent
    
    Header      header         # Age of the track
    uint64      track_id       # Unique ID for each agent
    
    # Type of agent
    string                  type
    
    # Pose of the track
    geometry_msgs/Pose      pose
    
    # Velocity of the track
    geometry_msgs/Twist     twist
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
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new AgentArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.agents !== undefined) {
      resolved.agents = new Array(msg.agents.length);
      for (let i = 0; i < resolved.agents.length; ++i) {
        resolved.agents[i] = Agent.Resolve(msg.agents[i]);
      }
    }
    else {
      resolved.agents = []
    }

    return resolved;
    }
};

module.exports = AgentArray;
