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

class TrialInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.trial_start = null;
      this.timeout_time = null;
      this.trial_name = null;
      this.trial_number = null;
      this.num_actors = null;
      this.robot_start = null;
      this.robot_goal = null;
      this.dist_to_target = null;
      this.min_dist_to_target = null;
      this.robot_poses = null;
      this.robot_poses_ts = null;
      this.min_dist_to_ped = null;
      this.robot_on_person_intimate_dist_violations = null;
      this.person_on_robot_intimate_dist_violations = null;
      this.robot_on_person_personal_dist_violations = null;
      this.person_on_robot_personal_dist_violations = null;
      this.robot_on_person_collisions = null;
      this.person_on_robot_collisions = null;
      this.obj_collisions = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('trial_start')) {
        this.trial_start = initObj.trial_start
      }
      else {
        this.trial_start = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('timeout_time')) {
        this.timeout_time = initObj.timeout_time
      }
      else {
        this.timeout_time = 0.0;
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
      if (initObj.hasOwnProperty('num_actors')) {
        this.num_actors = initObj.num_actors
      }
      else {
        this.num_actors = 0;
      }
      if (initObj.hasOwnProperty('robot_start')) {
        this.robot_start = initObj.robot_start
      }
      else {
        this.robot_start = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('robot_goal')) {
        this.robot_goal = initObj.robot_goal
      }
      else {
        this.robot_goal = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('dist_to_target')) {
        this.dist_to_target = initObj.dist_to_target
      }
      else {
        this.dist_to_target = 0.0;
      }
      if (initObj.hasOwnProperty('min_dist_to_target')) {
        this.min_dist_to_target = initObj.min_dist_to_target
      }
      else {
        this.min_dist_to_target = 0.0;
      }
      if (initObj.hasOwnProperty('robot_poses')) {
        this.robot_poses = initObj.robot_poses
      }
      else {
        this.robot_poses = [];
      }
      if (initObj.hasOwnProperty('robot_poses_ts')) {
        this.robot_poses_ts = initObj.robot_poses_ts
      }
      else {
        this.robot_poses_ts = [];
      }
      if (initObj.hasOwnProperty('min_dist_to_ped')) {
        this.min_dist_to_ped = initObj.min_dist_to_ped
      }
      else {
        this.min_dist_to_ped = 0.0;
      }
      if (initObj.hasOwnProperty('robot_on_person_intimate_dist_violations')) {
        this.robot_on_person_intimate_dist_violations = initObj.robot_on_person_intimate_dist_violations
      }
      else {
        this.robot_on_person_intimate_dist_violations = 0;
      }
      if (initObj.hasOwnProperty('person_on_robot_intimate_dist_violations')) {
        this.person_on_robot_intimate_dist_violations = initObj.person_on_robot_intimate_dist_violations
      }
      else {
        this.person_on_robot_intimate_dist_violations = 0;
      }
      if (initObj.hasOwnProperty('robot_on_person_personal_dist_violations')) {
        this.robot_on_person_personal_dist_violations = initObj.robot_on_person_personal_dist_violations
      }
      else {
        this.robot_on_person_personal_dist_violations = 0;
      }
      if (initObj.hasOwnProperty('person_on_robot_personal_dist_violations')) {
        this.person_on_robot_personal_dist_violations = initObj.person_on_robot_personal_dist_violations
      }
      else {
        this.person_on_robot_personal_dist_violations = 0;
      }
      if (initObj.hasOwnProperty('robot_on_person_collisions')) {
        this.robot_on_person_collisions = initObj.robot_on_person_collisions
      }
      else {
        this.robot_on_person_collisions = 0;
      }
      if (initObj.hasOwnProperty('person_on_robot_collisions')) {
        this.person_on_robot_collisions = initObj.person_on_robot_collisions
      }
      else {
        this.person_on_robot_collisions = 0;
      }
      if (initObj.hasOwnProperty('obj_collisions')) {
        this.obj_collisions = initObj.obj_collisions
      }
      else {
        this.obj_collisions = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrialInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [trial_start]
    bufferOffset = _serializer.time(obj.trial_start, buffer, bufferOffset);
    // Serialize message field [timeout_time]
    bufferOffset = _serializer.float64(obj.timeout_time, buffer, bufferOffset);
    // Serialize message field [trial_name]
    bufferOffset = _serializer.string(obj.trial_name, buffer, bufferOffset);
    // Serialize message field [trial_number]
    bufferOffset = _serializer.uint16(obj.trial_number, buffer, bufferOffset);
    // Serialize message field [num_actors]
    bufferOffset = _serializer.uint32(obj.num_actors, buffer, bufferOffset);
    // Serialize message field [robot_start]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.robot_start, buffer, bufferOffset);
    // Serialize message field [robot_goal]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.robot_goal, buffer, bufferOffset);
    // Serialize message field [dist_to_target]
    bufferOffset = _serializer.float64(obj.dist_to_target, buffer, bufferOffset);
    // Serialize message field [min_dist_to_target]
    bufferOffset = _serializer.float64(obj.min_dist_to_target, buffer, bufferOffset);
    // Serialize message field [robot_poses]
    // Serialize the length for message field [robot_poses]
    bufferOffset = _serializer.uint32(obj.robot_poses.length, buffer, bufferOffset);
    obj.robot_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [robot_poses_ts]
    bufferOffset = _arraySerializer.time(obj.robot_poses_ts, buffer, bufferOffset, null);
    // Serialize message field [min_dist_to_ped]
    bufferOffset = _serializer.float64(obj.min_dist_to_ped, buffer, bufferOffset);
    // Serialize message field [robot_on_person_intimate_dist_violations]
    bufferOffset = _serializer.uint32(obj.robot_on_person_intimate_dist_violations, buffer, bufferOffset);
    // Serialize message field [person_on_robot_intimate_dist_violations]
    bufferOffset = _serializer.uint32(obj.person_on_robot_intimate_dist_violations, buffer, bufferOffset);
    // Serialize message field [robot_on_person_personal_dist_violations]
    bufferOffset = _serializer.uint32(obj.robot_on_person_personal_dist_violations, buffer, bufferOffset);
    // Serialize message field [person_on_robot_personal_dist_violations]
    bufferOffset = _serializer.uint32(obj.person_on_robot_personal_dist_violations, buffer, bufferOffset);
    // Serialize message field [robot_on_person_collisions]
    bufferOffset = _serializer.uint32(obj.robot_on_person_collisions, buffer, bufferOffset);
    // Serialize message field [person_on_robot_collisions]
    bufferOffset = _serializer.uint32(obj.person_on_robot_collisions, buffer, bufferOffset);
    // Serialize message field [obj_collisions]
    bufferOffset = _serializer.uint32(obj.obj_collisions, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrialInfo
    let len;
    let data = new TrialInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [trial_start]
    data.trial_start = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [timeout_time]
    data.timeout_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trial_name]
    data.trial_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [trial_number]
    data.trial_number = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [num_actors]
    data.num_actors = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [robot_start]
    data.robot_start = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_goal]
    data.robot_goal = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [dist_to_target]
    data.dist_to_target = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [min_dist_to_target]
    data.min_dist_to_target = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [robot_poses]
    // Deserialize array length for message field [robot_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.robot_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.robot_poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [robot_poses_ts]
    data.robot_poses_ts = _arrayDeserializer.time(buffer, bufferOffset, null)
    // Deserialize message field [min_dist_to_ped]
    data.min_dist_to_ped = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [robot_on_person_intimate_dist_violations]
    data.robot_on_person_intimate_dist_violations = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [person_on_robot_intimate_dist_violations]
    data.person_on_robot_intimate_dist_violations = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [robot_on_person_personal_dist_violations]
    data.robot_on_person_personal_dist_violations = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [person_on_robot_personal_dist_violations]
    data.person_on_robot_personal_dist_violations = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [robot_on_person_collisions]
    data.robot_on_person_collisions = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [person_on_robot_collisions]
    data.person_on_robot_collisions = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [obj_collisions]
    data.obj_collisions = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.trial_name);
    length += 56 * object.robot_poses.length;
    length += 8 * object.robot_poses_ts.length;
    return length + 198;
  }

  static datatype() {
    // Returns string type for a message object
    return 'social_sim_ros/TrialInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8f0eee793947e51716938ffff8f8195';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message containing the information of running a single A-B navigation trial
    
    Header                    header
    
    # Information about the current interaction
    time                      trial_start                                    # When did we start tracking metrics for this trial
    float64                   timeout_time                                   # How long is allowed for the episode have to complete?
    string                    trial_name                                     # Which trial name are we running
    uint16                    trial_number                                   # Which trial number are we running
    uint32                    num_actors                                     # How many people in the scene?
    
    # Robot start / goal locations
    geometry_msgs/Pose        robot_start
    geometry_msgs/Pose        robot_goal
    
    # Robot location / distance relative to start / goal
    float64                   dist_to_target                                 # Current distance to target
    float64                   min_dist_to_target                             # Closest difference to the target the robot has come
    geometry_msgs/Pose[]      robot_poses                                    # Poses of the robot over the episode
    time[]                    robot_poses_ts                                 # Timestamps of the robot poses over the episode
    
    # Robot location relative to pedestrians
    float64                   min_dist_to_ped                                # Minimum distance to any pedestrian throughout the trial
    
    # Collisions between robots and people
    uint32                    robot_on_person_intimate_dist_violations       # Robot passes w/in the intimate distance of a pedestrian
    uint32                    person_on_robot_intimate_dist_violations       # A person passes w/in the intimate distance of the robot
    uint32                    robot_on_person_personal_dist_violations       # Robot passes w/in the personal distance of a pedestrian
    uint32                    person_on_robot_personal_dist_violations       # A person passes w/in the personal distance of the robot
    uint32                    robot_on_person_collisions                     # Number of times that the robot collided with a person
    uint32                    person_on_robot_collisions                     # Number of times that ap person collided with the robot
    
    # Collisions w/ static objects
    uint32                    obj_collisions                                 # Number of times that the robot collided with a static object
    
    # Computed post-hoc
    #bool                     completed                                      # was the robots finals distance to the goal within the desired distance?
    #float64                  targ_dist_norm                                 # dist_to_target normalized by path length
    #float64                  path_length                                    # Approximate distance traveled by robot
    #float64                  mean_dist_to_target_not_moving                 # How far away from the target was the robot while not moving
    #float64                  time_not_moving                                # Seconds the robot was not moving. Computed by checking if the robot moved more than 0.05m since a check the last 1s ago. If not, accumulate the time since the last check.
    #bool                     episode_timed_out
    #float64                  path_irregularity
    #float64                  path_efficiency
    
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
    const resolved = new TrialInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.trial_start !== undefined) {
      resolved.trial_start = msg.trial_start;
    }
    else {
      resolved.trial_start = {secs: 0, nsecs: 0}
    }

    if (msg.timeout_time !== undefined) {
      resolved.timeout_time = msg.timeout_time;
    }
    else {
      resolved.timeout_time = 0.0
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

    if (msg.num_actors !== undefined) {
      resolved.num_actors = msg.num_actors;
    }
    else {
      resolved.num_actors = 0
    }

    if (msg.robot_start !== undefined) {
      resolved.robot_start = geometry_msgs.msg.Pose.Resolve(msg.robot_start)
    }
    else {
      resolved.robot_start = new geometry_msgs.msg.Pose()
    }

    if (msg.robot_goal !== undefined) {
      resolved.robot_goal = geometry_msgs.msg.Pose.Resolve(msg.robot_goal)
    }
    else {
      resolved.robot_goal = new geometry_msgs.msg.Pose()
    }

    if (msg.dist_to_target !== undefined) {
      resolved.dist_to_target = msg.dist_to_target;
    }
    else {
      resolved.dist_to_target = 0.0
    }

    if (msg.min_dist_to_target !== undefined) {
      resolved.min_dist_to_target = msg.min_dist_to_target;
    }
    else {
      resolved.min_dist_to_target = 0.0
    }

    if (msg.robot_poses !== undefined) {
      resolved.robot_poses = new Array(msg.robot_poses.length);
      for (let i = 0; i < resolved.robot_poses.length; ++i) {
        resolved.robot_poses[i] = geometry_msgs.msg.Pose.Resolve(msg.robot_poses[i]);
      }
    }
    else {
      resolved.robot_poses = []
    }

    if (msg.robot_poses_ts !== undefined) {
      resolved.robot_poses_ts = msg.robot_poses_ts;
    }
    else {
      resolved.robot_poses_ts = []
    }

    if (msg.min_dist_to_ped !== undefined) {
      resolved.min_dist_to_ped = msg.min_dist_to_ped;
    }
    else {
      resolved.min_dist_to_ped = 0.0
    }

    if (msg.robot_on_person_intimate_dist_violations !== undefined) {
      resolved.robot_on_person_intimate_dist_violations = msg.robot_on_person_intimate_dist_violations;
    }
    else {
      resolved.robot_on_person_intimate_dist_violations = 0
    }

    if (msg.person_on_robot_intimate_dist_violations !== undefined) {
      resolved.person_on_robot_intimate_dist_violations = msg.person_on_robot_intimate_dist_violations;
    }
    else {
      resolved.person_on_robot_intimate_dist_violations = 0
    }

    if (msg.robot_on_person_personal_dist_violations !== undefined) {
      resolved.robot_on_person_personal_dist_violations = msg.robot_on_person_personal_dist_violations;
    }
    else {
      resolved.robot_on_person_personal_dist_violations = 0
    }

    if (msg.person_on_robot_personal_dist_violations !== undefined) {
      resolved.person_on_robot_personal_dist_violations = msg.person_on_robot_personal_dist_violations;
    }
    else {
      resolved.person_on_robot_personal_dist_violations = 0
    }

    if (msg.robot_on_person_collisions !== undefined) {
      resolved.robot_on_person_collisions = msg.robot_on_person_collisions;
    }
    else {
      resolved.robot_on_person_collisions = 0
    }

    if (msg.person_on_robot_collisions !== undefined) {
      resolved.person_on_robot_collisions = msg.person_on_robot_collisions;
    }
    else {
      resolved.person_on_robot_collisions = 0
    }

    if (msg.obj_collisions !== undefined) {
      resolved.obj_collisions = msg.obj_collisions;
    }
    else {
      resolved.obj_collisions = 0
    }

    return resolved;
    }
};

module.exports = TrialInfo;
