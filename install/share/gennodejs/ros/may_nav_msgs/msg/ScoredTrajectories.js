// Auto-generated. Do not edit!

// (in-package may_nav_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Trajectory = require('./Trajectory.js');

//-----------------------------------------------------------

class ScoredTrajectories {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectories = null;
      this.scores = null;
      this.plan_distance_scores = null;
      this.target_distance_scores = null;
      this.plan_angle_difference_scores = null;
      this.target_angle_difference_scores = null;
      this.obstacle_scores = null;
      this.heading_angle_difference_scores = null;
      this.chosen_trajectory_index = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectories')) {
        this.trajectories = initObj.trajectories
      }
      else {
        this.trajectories = [];
      }
      if (initObj.hasOwnProperty('scores')) {
        this.scores = initObj.scores
      }
      else {
        this.scores = [];
      }
      if (initObj.hasOwnProperty('plan_distance_scores')) {
        this.plan_distance_scores = initObj.plan_distance_scores
      }
      else {
        this.plan_distance_scores = [];
      }
      if (initObj.hasOwnProperty('target_distance_scores')) {
        this.target_distance_scores = initObj.target_distance_scores
      }
      else {
        this.target_distance_scores = [];
      }
      if (initObj.hasOwnProperty('plan_angle_difference_scores')) {
        this.plan_angle_difference_scores = initObj.plan_angle_difference_scores
      }
      else {
        this.plan_angle_difference_scores = [];
      }
      if (initObj.hasOwnProperty('target_angle_difference_scores')) {
        this.target_angle_difference_scores = initObj.target_angle_difference_scores
      }
      else {
        this.target_angle_difference_scores = [];
      }
      if (initObj.hasOwnProperty('obstacle_scores')) {
        this.obstacle_scores = initObj.obstacle_scores
      }
      else {
        this.obstacle_scores = [];
      }
      if (initObj.hasOwnProperty('heading_angle_difference_scores')) {
        this.heading_angle_difference_scores = initObj.heading_angle_difference_scores
      }
      else {
        this.heading_angle_difference_scores = [];
      }
      if (initObj.hasOwnProperty('chosen_trajectory_index')) {
        this.chosen_trajectory_index = initObj.chosen_trajectory_index
      }
      else {
        this.chosen_trajectory_index = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScoredTrajectories
    // Serialize message field [trajectories]
    // Serialize the length for message field [trajectories]
    bufferOffset = _serializer.uint32(obj.trajectories.length, buffer, bufferOffset);
    obj.trajectories.forEach((val) => {
      bufferOffset = Trajectory.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [scores]
    bufferOffset = _arraySerializer.float32(obj.scores, buffer, bufferOffset, null);
    // Serialize message field [plan_distance_scores]
    bufferOffset = _arraySerializer.float32(obj.plan_distance_scores, buffer, bufferOffset, null);
    // Serialize message field [target_distance_scores]
    bufferOffset = _arraySerializer.float32(obj.target_distance_scores, buffer, bufferOffset, null);
    // Serialize message field [plan_angle_difference_scores]
    bufferOffset = _arraySerializer.float32(obj.plan_angle_difference_scores, buffer, bufferOffset, null);
    // Serialize message field [target_angle_difference_scores]
    bufferOffset = _arraySerializer.float32(obj.target_angle_difference_scores, buffer, bufferOffset, null);
    // Serialize message field [obstacle_scores]
    bufferOffset = _arraySerializer.float32(obj.obstacle_scores, buffer, bufferOffset, null);
    // Serialize message field [heading_angle_difference_scores]
    bufferOffset = _arraySerializer.float32(obj.heading_angle_difference_scores, buffer, bufferOffset, null);
    // Serialize message field [chosen_trajectory_index]
    bufferOffset = _serializer.int32(obj.chosen_trajectory_index, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScoredTrajectories
    let len;
    let data = new ScoredTrajectories(null);
    // Deserialize message field [trajectories]
    // Deserialize array length for message field [trajectories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectories[i] = Trajectory.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [scores]
    data.scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [plan_distance_scores]
    data.plan_distance_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [target_distance_scores]
    data.target_distance_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [plan_angle_difference_scores]
    data.plan_angle_difference_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [target_angle_difference_scores]
    data.target_angle_difference_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [obstacle_scores]
    data.obstacle_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [heading_angle_difference_scores]
    data.heading_angle_difference_scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [chosen_trajectory_index]
    data.chosen_trajectory_index = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.trajectories.forEach((val) => {
      length += Trajectory.getMessageSize(val);
    });
    length += 4 * object.scores.length;
    length += 4 * object.plan_distance_scores.length;
    length += 4 * object.target_distance_scores.length;
    length += 4 * object.plan_angle_difference_scores.length;
    length += 4 * object.target_angle_difference_scores.length;
    length += 4 * object.obstacle_scores.length;
    length += 4 * object.heading_angle_difference_scores.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'may_nav_msgs/ScoredTrajectories';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5c548ba9491b852a98720ee47439e25';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    may_nav_msgs/Trajectory[] trajectories
    float32[] scores
    float32[] plan_distance_scores
    float32[] target_distance_scores
    float32[] plan_angle_difference_scores
    float32[] target_angle_difference_scores
    float32[] obstacle_scores
    float32[] heading_angle_difference_scores
    int32 chosen_trajectory_index
    
    ================================================================================
    MSG: may_nav_msgs/Trajectory
    geometry_msgs/Pose2D[] poses
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScoredTrajectories(null);
    if (msg.trajectories !== undefined) {
      resolved.trajectories = new Array(msg.trajectories.length);
      for (let i = 0; i < resolved.trajectories.length; ++i) {
        resolved.trajectories[i] = Trajectory.Resolve(msg.trajectories[i]);
      }
    }
    else {
      resolved.trajectories = []
    }

    if (msg.scores !== undefined) {
      resolved.scores = msg.scores;
    }
    else {
      resolved.scores = []
    }

    if (msg.plan_distance_scores !== undefined) {
      resolved.plan_distance_scores = msg.plan_distance_scores;
    }
    else {
      resolved.plan_distance_scores = []
    }

    if (msg.target_distance_scores !== undefined) {
      resolved.target_distance_scores = msg.target_distance_scores;
    }
    else {
      resolved.target_distance_scores = []
    }

    if (msg.plan_angle_difference_scores !== undefined) {
      resolved.plan_angle_difference_scores = msg.plan_angle_difference_scores;
    }
    else {
      resolved.plan_angle_difference_scores = []
    }

    if (msg.target_angle_difference_scores !== undefined) {
      resolved.target_angle_difference_scores = msg.target_angle_difference_scores;
    }
    else {
      resolved.target_angle_difference_scores = []
    }

    if (msg.obstacle_scores !== undefined) {
      resolved.obstacle_scores = msg.obstacle_scores;
    }
    else {
      resolved.obstacle_scores = []
    }

    if (msg.heading_angle_difference_scores !== undefined) {
      resolved.heading_angle_difference_scores = msg.heading_angle_difference_scores;
    }
    else {
      resolved.heading_angle_difference_scores = []
    }

    if (msg.chosen_trajectory_index !== undefined) {
      resolved.chosen_trajectory_index = msg.chosen_trajectory_index;
    }
    else {
      resolved.chosen_trajectory_index = 0
    }

    return resolved;
    }
};

module.exports = ScoredTrajectories;
