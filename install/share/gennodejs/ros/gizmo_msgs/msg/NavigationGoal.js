// Auto-generated. Do not edit!

// (in-package gizmo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HeadPose = require('./HeadPose.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class NavigationGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.nav_type = null;
      this.pose = null;
      this.waypoint_uuid = null;
      this.head_pose = null;
      this.request_id = null;
    }
    else {
      if (initObj.hasOwnProperty('nav_type')) {
        this.nav_type = initObj.nav_type
      }
      else {
        this.nav_type = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('waypoint_uuid')) {
        this.waypoint_uuid = initObj.waypoint_uuid
      }
      else {
        this.waypoint_uuid = '';
      }
      if (initObj.hasOwnProperty('head_pose')) {
        this.head_pose = initObj.head_pose
      }
      else {
        this.head_pose = new HeadPose();
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
    // Serializes a message object of type NavigationGoal
    // Serialize message field [nav_type]
    bufferOffset = _serializer.byte(obj.nav_type, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [waypoint_uuid]
    bufferOffset = _serializer.string(obj.waypoint_uuid, buffer, bufferOffset);
    // Serialize message field [head_pose]
    bufferOffset = HeadPose.serialize(obj.head_pose, buffer, bufferOffset);
    // Serialize message field [request_id]
    bufferOffset = _serializer.string(obj.request_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationGoal
    let len;
    let data = new NavigationGoal(null);
    // Deserialize message field [nav_type]
    data.nav_type = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [waypoint_uuid]
    data.waypoint_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [head_pose]
    data.head_pose = HeadPose.deserialize(buffer, bufferOffset);
    // Deserialize message field [request_id]
    data.request_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.waypoint_uuid);
    length += _getByteLength(object.request_id);
    return length + 73;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gizmo_msgs/NavigationGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c5cee24740976f929b08b2903f932ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This is a message covering all types of navigation
    byte GO_TO_WAYPOINT=0
    byte DRIVE_TO_POINT_IN_IMAGE=1
    byte FOLLOW_ME=2
    
    # Type of navigation
    byte nav_type
    # Goal of navigation
    geometry_msgs/Pose pose
    # Waypoint UUID for GO_TO_WAYPOINT
    string waypoint_uuid
    # Head pose for GO_TO_WAYPOINT
    gizmo_msgs/HeadPose head_pose
    # Request ID (if from client)
    string request_id
    
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
    MSG: gizmo_msgs/HeadPose
    float32 pan
    float32 tilt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NavigationGoal(null);
    if (msg.nav_type !== undefined) {
      resolved.nav_type = msg.nav_type;
    }
    else {
      resolved.nav_type = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.waypoint_uuid !== undefined) {
      resolved.waypoint_uuid = msg.waypoint_uuid;
    }
    else {
      resolved.waypoint_uuid = ''
    }

    if (msg.head_pose !== undefined) {
      resolved.head_pose = HeadPose.Resolve(msg.head_pose)
    }
    else {
      resolved.head_pose = new HeadPose()
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

// Constants for message
NavigationGoal.Constants = {
  GO_TO_WAYPOINT: 0,
  DRIVE_TO_POINT_IN_IMAGE: 1,
  FOLLOW_ME: 2,
}

module.exports = NavigationGoal;
