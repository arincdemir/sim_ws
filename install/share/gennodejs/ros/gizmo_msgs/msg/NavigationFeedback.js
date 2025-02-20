// Auto-generated. Do not edit!

// (in-package gizmo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class NavigationFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.nav_type = null;
      this.request_id = null;
      this.error = null;
      this.waypoint_uuid = null;
      this.goal = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('nav_type')) {
        this.nav_type = initObj.nav_type
      }
      else {
        this.nav_type = 0;
      }
      if (initObj.hasOwnProperty('request_id')) {
        this.request_id = initObj.request_id
      }
      else {
        this.request_id = '';
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = '';
      }
      if (initObj.hasOwnProperty('waypoint_uuid')) {
        this.waypoint_uuid = initObj.waypoint_uuid
      }
      else {
        this.waypoint_uuid = '';
      }
      if (initObj.hasOwnProperty('goal')) {
        this.goal = initObj.goal
      }
      else {
        this.goal = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NavigationFeedback
    // Serialize message field [status]
    bufferOffset = _serializer.byte(obj.status, buffer, bufferOffset);
    // Serialize message field [nav_type]
    bufferOffset = _serializer.byte(obj.nav_type, buffer, bufferOffset);
    // Serialize message field [request_id]
    bufferOffset = _serializer.string(obj.request_id, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.string(obj.error, buffer, bufferOffset);
    // Serialize message field [waypoint_uuid]
    bufferOffset = _serializer.string(obj.waypoint_uuid, buffer, bufferOffset);
    // Serialize message field [goal]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NavigationFeedback
    let len;
    let data = new NavigationFeedback(null);
    // Deserialize message field [status]
    data.status = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [nav_type]
    data.nav_type = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [request_id]
    data.request_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [waypoint_uuid]
    data.waypoint_uuid = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [goal]
    data.goal = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.request_id);
    length += _getByteLength(object.error);
    length += _getByteLength(object.waypoint_uuid);
    return length + 70;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gizmo_msgs/NavigationFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a66d98bd7814656a690ab6824d61cdf4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    byte GO_TO_WAYPOINT=0
    byte DRIVE_TO_POINT_IN_IMAGE=1
    byte FOLLOW_ME=2
    
    byte NAV_SUCCESS=0
    byte NAV_PLANNING=1
    byte NAV_MOVING=2
    byte NAV_ERROR=3
    byte NAV_CANCELED=4
    
    # NAV_ status
    byte status
    # Type of navigation
    byte nav_type
    # Request ID if from client
    string request_id
    # error string if NAV_ERROR
    string error
    # waypoint UUID if GO_TO_WAYPOINT
    string waypoint_uuid
    # Goal pose
    geometry_msgs/Pose goal
    
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
    const resolved = new NavigationFeedback(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.nav_type !== undefined) {
      resolved.nav_type = msg.nav_type;
    }
    else {
      resolved.nav_type = 0
    }

    if (msg.request_id !== undefined) {
      resolved.request_id = msg.request_id;
    }
    else {
      resolved.request_id = ''
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = ''
    }

    if (msg.waypoint_uuid !== undefined) {
      resolved.waypoint_uuid = msg.waypoint_uuid;
    }
    else {
      resolved.waypoint_uuid = ''
    }

    if (msg.goal !== undefined) {
      resolved.goal = geometry_msgs.msg.Pose.Resolve(msg.goal)
    }
    else {
      resolved.goal = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

// Constants for message
NavigationFeedback.Constants = {
  GO_TO_WAYPOINT: 0,
  DRIVE_TO_POINT_IN_IMAGE: 1,
  FOLLOW_ME: 2,
  NAV_SUCCESS: 0,
  NAV_PLANNING: 1,
  NAV_MOVING: 2,
  NAV_ERROR: 3,
  NAV_CANCELED: 4,
}

module.exports = NavigationFeedback;
