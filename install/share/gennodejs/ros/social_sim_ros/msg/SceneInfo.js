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

class SceneInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.scenario_name = null;
      this.robot_start_pose = null;
      this.robot_target_pose = null;
      this.num_people = null;
      this.num_groups = null;
      this.environment = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('scenario_name')) {
        this.scenario_name = initObj.scenario_name
      }
      else {
        this.scenario_name = '';
      }
      if (initObj.hasOwnProperty('robot_start_pose')) {
        this.robot_start_pose = initObj.robot_start_pose
      }
      else {
        this.robot_start_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('robot_target_pose')) {
        this.robot_target_pose = initObj.robot_target_pose
      }
      else {
        this.robot_target_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('num_people')) {
        this.num_people = initObj.num_people
      }
      else {
        this.num_people = 0;
      }
      if (initObj.hasOwnProperty('num_groups')) {
        this.num_groups = initObj.num_groups
      }
      else {
        this.num_groups = 0;
      }
      if (initObj.hasOwnProperty('environment')) {
        this.environment = initObj.environment
      }
      else {
        this.environment = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SceneInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [scenario_name]
    bufferOffset = _serializer.string(obj.scenario_name, buffer, bufferOffset);
    // Serialize message field [robot_start_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.robot_start_pose, buffer, bufferOffset);
    // Serialize message field [robot_target_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.robot_target_pose, buffer, bufferOffset);
    // Serialize message field [num_people]
    bufferOffset = _serializer.uint16(obj.num_people, buffer, bufferOffset);
    // Serialize message field [num_groups]
    bufferOffset = _serializer.uint16(obj.num_groups, buffer, bufferOffset);
    // Serialize message field [environment]
    bufferOffset = _serializer.string(obj.environment, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SceneInfo
    let len;
    let data = new SceneInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [scenario_name]
    data.scenario_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_start_pose]
    data.robot_start_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_target_pose]
    data.robot_target_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [num_people]
    data.num_people = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [num_groups]
    data.num_groups = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [environment]
    data.environment = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.scenario_name);
    length += _getByteLength(object.environment);
    return length + 124;
  }

  static datatype() {
    // Returns string type for a message object
    return 'social_sim_ros/SceneInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5da53b93f7c64fcba0abe30ec331516b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message containing the parameters for Unity Scene trials
    
    Header                  header
    string                  scenario_name        # Which scene we are running
    geometry_msgs/Pose      robot_start_pose     # Pose of robot start location
    geometry_msgs/Pose      robot_target_pose    # Pose of robot target location
    uint16                  num_people           # Number of people in scene
    uint16                  num_groups           # Number of groups in scene
    string                  environment          # Which environment
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SceneInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.scenario_name !== undefined) {
      resolved.scenario_name = msg.scenario_name;
    }
    else {
      resolved.scenario_name = ''
    }

    if (msg.robot_start_pose !== undefined) {
      resolved.robot_start_pose = geometry_msgs.msg.Pose.Resolve(msg.robot_start_pose)
    }
    else {
      resolved.robot_start_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.robot_target_pose !== undefined) {
      resolved.robot_target_pose = geometry_msgs.msg.Pose.Resolve(msg.robot_target_pose)
    }
    else {
      resolved.robot_target_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.num_people !== undefined) {
      resolved.num_people = msg.num_people;
    }
    else {
      resolved.num_people = 0
    }

    if (msg.num_groups !== undefined) {
      resolved.num_groups = msg.num_groups;
    }
    else {
      resolved.num_groups = 0
    }

    if (msg.environment !== undefined) {
      resolved.environment = msg.environment;
    }
    else {
      resolved.environment = ''
    }

    return resolved;
    }
};

module.exports = SceneInfo;
