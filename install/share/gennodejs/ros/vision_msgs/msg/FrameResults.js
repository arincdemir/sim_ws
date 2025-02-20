// Auto-generated. Do not edit!

// (in-package vision_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let FaceArray = require('./FaceArray.js');
let ImageClustering = require('./ImageClustering.js');
let DetectedObjects = require('./DetectedObjects.js');
let ObjectFeatures = require('./ObjectFeatures.js');
let ImageQuality = require('./ImageQuality.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FrameResults {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.faces = null;
      this.clustering = null;
      this.objects = null;
      this.features = null;
      this.quality = null;
      this.modules = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('faces')) {
        this.faces = initObj.faces
      }
      else {
        this.faces = new FaceArray();
      }
      if (initObj.hasOwnProperty('clustering')) {
        this.clustering = initObj.clustering
      }
      else {
        this.clustering = new ImageClustering();
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = new DetectedObjects();
      }
      if (initObj.hasOwnProperty('features')) {
        this.features = initObj.features
      }
      else {
        this.features = new ObjectFeatures();
      }
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = new ImageQuality();
      }
      if (initObj.hasOwnProperty('modules')) {
        this.modules = initObj.modules
      }
      else {
        this.modules = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FrameResults
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [faces]
    bufferOffset = FaceArray.serialize(obj.faces, buffer, bufferOffset);
    // Serialize message field [clustering]
    bufferOffset = ImageClustering.serialize(obj.clustering, buffer, bufferOffset);
    // Serialize message field [objects]
    bufferOffset = DetectedObjects.serialize(obj.objects, buffer, bufferOffset);
    // Serialize message field [features]
    bufferOffset = ObjectFeatures.serialize(obj.features, buffer, bufferOffset);
    // Serialize message field [quality]
    bufferOffset = ImageQuality.serialize(obj.quality, buffer, bufferOffset);
    // Serialize message field [modules]
    bufferOffset = _arraySerializer.string(obj.modules, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FrameResults
    let len;
    let data = new FrameResults(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [faces]
    data.faces = FaceArray.deserialize(buffer, bufferOffset);
    // Deserialize message field [clustering]
    data.clustering = ImageClustering.deserialize(buffer, bufferOffset);
    // Deserialize message field [objects]
    data.objects = DetectedObjects.deserialize(buffer, bufferOffset);
    // Deserialize message field [features]
    data.features = ObjectFeatures.deserialize(buffer, bufferOffset);
    // Deserialize message field [quality]
    data.quality = ImageQuality.deserialize(buffer, bufferOffset);
    // Deserialize message field [modules]
    data.modules = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += FaceArray.getMessageSize(object.faces);
    length += ImageClustering.getMessageSize(object.clustering);
    length += DetectedObjects.getMessageSize(object.objects);
    length += ObjectFeatures.getMessageSize(object.features);
    length += ImageQuality.getMessageSize(object.quality);
    object.modules.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vision_msgs/FrameResults';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6ddc9f5aeba4eed50c0dbd8bc8468f0f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    FaceArray faces
    ImageClustering clustering
    DetectedObjects objects
    ObjectFeatures features
    ImageQuality quality
    # Processed modules
    string[] modules
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
    MSG: vision_msgs/FaceArray
    Face[] faces
    
    ================================================================================
    MSG: vision_msgs/Face
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: vision_msgs/ImageClustering
    # Header for timestamp / frame info
    Header header
    
    string cluster
    uint16 current_cluster_size
    
    ================================================================================
    MSG: vision_msgs/DetectedObjects
    # Header for timestamp / frame info
    Header header
    
    ClassifiedObjects positive_detections
    ClassifiedObjects all_detections
    
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
    
    ================================================================================
    MSG: vision_msgs/ObjectFeatures
    Header header
    
    uint8[] features
    
    ================================================================================
    MSG: vision_msgs/ImageQuality
    # Header for timestamp info
    Header header
    float32 brightness
    float32 sharpness
    float32 brightness_delta
    float32 sharpness_delta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FrameResults(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.faces !== undefined) {
      resolved.faces = FaceArray.Resolve(msg.faces)
    }
    else {
      resolved.faces = new FaceArray()
    }

    if (msg.clustering !== undefined) {
      resolved.clustering = ImageClustering.Resolve(msg.clustering)
    }
    else {
      resolved.clustering = new ImageClustering()
    }

    if (msg.objects !== undefined) {
      resolved.objects = DetectedObjects.Resolve(msg.objects)
    }
    else {
      resolved.objects = new DetectedObjects()
    }

    if (msg.features !== undefined) {
      resolved.features = ObjectFeatures.Resolve(msg.features)
    }
    else {
      resolved.features = new ObjectFeatures()
    }

    if (msg.quality !== undefined) {
      resolved.quality = ImageQuality.Resolve(msg.quality)
    }
    else {
      resolved.quality = new ImageQuality()
    }

    if (msg.modules !== undefined) {
      resolved.modules = msg.modules;
    }
    else {
      resolved.modules = []
    }

    return resolved;
    }
};

module.exports = FrameResults;
