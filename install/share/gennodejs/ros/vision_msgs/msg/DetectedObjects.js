// Auto-generated. Do not edit!

// (in-package vision_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ClassifiedObjects = require('./ClassifiedObjects.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DetectedObjects {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.positive_detections = null;
      this.all_detections = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('positive_detections')) {
        this.positive_detections = initObj.positive_detections
      }
      else {
        this.positive_detections = new ClassifiedObjects();
      }
      if (initObj.hasOwnProperty('all_detections')) {
        this.all_detections = initObj.all_detections
      }
      else {
        this.all_detections = new ClassifiedObjects();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedObjects
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [positive_detections]
    bufferOffset = ClassifiedObjects.serialize(obj.positive_detections, buffer, bufferOffset);
    // Serialize message field [all_detections]
    bufferOffset = ClassifiedObjects.serialize(obj.all_detections, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedObjects
    let len;
    let data = new DetectedObjects(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [positive_detections]
    data.positive_detections = ClassifiedObjects.deserialize(buffer, bufferOffset);
    // Deserialize message field [all_detections]
    data.all_detections = ClassifiedObjects.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += ClassifiedObjects.getMessageSize(object.positive_detections);
    length += ClassifiedObjects.getMessageSize(object.all_detections);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_msgs/DetectedObjects';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b311e2b24dcd6070f418bd1bd3446fd9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Header for timestamp / frame info
    Header header
    
    ClassifiedObjects positive_detections
    ClassifiedObjects all_detections
    
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
    MSG: vision_msgs/ClassifiedObjects
    ClassifiedObject[] objects
    
    ================================================================================
    MSG: vision_msgs/ClassifiedObject
    # Header for timestamp info
    Header header
    string object_class	  	# Detected objects
    float32 confidence 		# Confidence for each detected object
    sensor_msgs/RegionOfInterest roi 	# Region within frame the object was detected
    
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectedObjects(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.positive_detections !== undefined) {
      resolved.positive_detections = ClassifiedObjects.Resolve(msg.positive_detections)
    }
    else {
      resolved.positive_detections = new ClassifiedObjects()
    }

    if (msg.all_detections !== undefined) {
      resolved.all_detections = ClassifiedObjects.Resolve(msg.all_detections)
    }
    else {
      resolved.all_detections = new ClassifiedObjects()
    }

    return resolved;
    }
};

module.exports = DetectedObjects;
