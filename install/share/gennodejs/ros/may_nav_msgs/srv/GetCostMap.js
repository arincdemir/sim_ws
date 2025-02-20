// Auto-generated. Do not edit!

// (in-package may_nav_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let CostMap = require('../msg/CostMap.js');

//-----------------------------------------------------------

class GetCostMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.use_dynamic_map = null;
    }
    else {
      if (initObj.hasOwnProperty('use_dynamic_map')) {
        this.use_dynamic_map = initObj.use_dynamic_map
      }
      else {
        this.use_dynamic_map = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCostMapRequest
    // Serialize message field [use_dynamic_map]
    bufferOffset = _serializer.bool(obj.use_dynamic_map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCostMapRequest
    let len;
    let data = new GetCostMapRequest(null);
    // Deserialize message field [use_dynamic_map]
    data.use_dynamic_map = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'may_nav_msgs/GetCostMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f3161f1cbb95fd8af4b0ae977786f41f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool use_dynamic_map
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetCostMapRequest(null);
    if (msg.use_dynamic_map !== undefined) {
      resolved.use_dynamic_map = msg.use_dynamic_map;
    }
    else {
      resolved.use_dynamic_map = false
    }

    return resolved;
    }
};

class GetCostMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cost_map = null;
    }
    else {
      if (initObj.hasOwnProperty('cost_map')) {
        this.cost_map = initObj.cost_map
      }
      else {
        this.cost_map = new CostMap();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetCostMapResponse
    // Serialize message field [cost_map]
    bufferOffset = CostMap.serialize(obj.cost_map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetCostMapResponse
    let len;
    let data = new GetCostMapResponse(null);
    // Deserialize message field [cost_map]
    data.cost_map = CostMap.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += CostMap.getMessageSize(object.cost_map);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'may_nav_msgs/GetCostMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a99a661c9b5861baa696f91f6ec453b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    may_nav_msgs/CostMap cost_map
    
    ================================================================================
    MSG: may_nav_msgs/CostMap
    # This represents a 2-D cost map, in which each
    # cell represents the cost of each position
    # as a float
    
    Header header
    
    # MetaData for the map
    nav_msgs/MapMetaData info
    
    # The cost map data, in row-major order, starting with (0,0).
    # The costs are represented as floats from [0, inf)
    float64[] data
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
    MSG: nav_msgs/MapMetaData
    # This hold basic information about the characterists of the OccupancyGrid
    
    # The time at which the map was loaded
    time map_load_time
    # The map resolution [m/cell]
    float32 resolution
    # Map width [cells]
    uint32 width
    # Map height [cells]
    uint32 height
    # The origin of the map [m, m, rad].  This is the real-world pose of the
    # cell (0,0) in the map.
    geometry_msgs/Pose origin
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
    const resolved = new GetCostMapResponse(null);
    if (msg.cost_map !== undefined) {
      resolved.cost_map = CostMap.Resolve(msg.cost_map)
    }
    else {
      resolved.cost_map = new CostMap()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetCostMapRequest,
  Response: GetCostMapResponse,
  md5sum() { return '7c7e6394fa7408b42079b9e56f62c547'; },
  datatype() { return 'may_nav_msgs/GetCostMap'; }
};
