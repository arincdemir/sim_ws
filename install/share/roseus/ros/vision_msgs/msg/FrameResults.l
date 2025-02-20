;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::FrameResults)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'FrameResults (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::FRAMERESULTS")
  (make-package "VISION_MSGS::FRAMERESULTS"))

(in-package "ROS")
;;//! \htmlinclude FrameResults.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vision_msgs::FrameResults
  :super ros::object
  :slots (_header _faces _clustering _objects _features _quality _modules ))

(defmethod vision_msgs::FrameResults
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:faces __faces) (instance vision_msgs::FaceArray :init))
    ((:clustering __clustering) (instance vision_msgs::ImageClustering :init))
    ((:objects __objects) (instance vision_msgs::DetectedObjects :init))
    ((:features __features) (instance vision_msgs::ObjectFeatures :init))
    ((:quality __quality) (instance vision_msgs::ImageQuality :init))
    ((:modules __modules) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _faces __faces)
   (setq _clustering __clustering)
   (setq _objects __objects)
   (setq _features __features)
   (setq _quality __quality)
   (setq _modules __modules)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:faces
   (&rest __faces)
   (if (keywordp (car __faces))
       (send* _faces __faces)
     (progn
       (if __faces (setq _faces (car __faces)))
       _faces)))
  (:clustering
   (&rest __clustering)
   (if (keywordp (car __clustering))
       (send* _clustering __clustering)
     (progn
       (if __clustering (setq _clustering (car __clustering)))
       _clustering)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:features
   (&rest __features)
   (if (keywordp (car __features))
       (send* _features __features)
     (progn
       (if __features (setq _features (car __features)))
       _features)))
  (:quality
   (&rest __quality)
   (if (keywordp (car __quality))
       (send* _quality __quality)
     (progn
       (if __quality (setq _quality (car __quality)))
       _quality)))
  (:modules
   (&optional __modules)
   (if __modules (setq _modules __modules)) _modules)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; vision_msgs/FaceArray _faces
    (send _faces :serialization-length)
    ;; vision_msgs/ImageClustering _clustering
    (send _clustering :serialization-length)
    ;; vision_msgs/DetectedObjects _objects
    (send _objects :serialization-length)
    ;; vision_msgs/ObjectFeatures _features
    (send _features :serialization-length)
    ;; vision_msgs/ImageQuality _quality
    (send _quality :serialization-length)
    ;; string[] _modules
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _modules)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vision_msgs/FaceArray _faces
       (send _faces :serialize s)
     ;; vision_msgs/ImageClustering _clustering
       (send _clustering :serialize s)
     ;; vision_msgs/DetectedObjects _objects
       (send _objects :serialize s)
     ;; vision_msgs/ObjectFeatures _features
       (send _features :serialize s)
     ;; vision_msgs/ImageQuality _quality
       (send _quality :serialize s)
     ;; string[] _modules
     (write-long (length _modules) s)
     (dolist (elem _modules)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; vision_msgs/FaceArray _faces
     (send _faces :deserialize buf ptr-) (incf ptr- (send _faces :serialization-length))
   ;; vision_msgs/ImageClustering _clustering
     (send _clustering :deserialize buf ptr-) (incf ptr- (send _clustering :serialization-length))
   ;; vision_msgs/DetectedObjects _objects
     (send _objects :deserialize buf ptr-) (incf ptr- (send _objects :serialization-length))
   ;; vision_msgs/ObjectFeatures _features
     (send _features :deserialize buf ptr-) (incf ptr- (send _features :serialization-length))
   ;; vision_msgs/ImageQuality _quality
     (send _quality :deserialize buf ptr-) (incf ptr- (send _quality :serialization-length))
   ;; string[] _modules
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _modules (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _modules i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get vision_msgs::FrameResults :md5sum-) "6ddc9f5aeba4eed50c0dbd8bc8468f0f")
(setf (get vision_msgs::FrameResults :datatype-) "vision_msgs/FrameResults")
(setf (get vision_msgs::FrameResults :definition-)
      "Header header
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

# True if a distinct rectified ROI should be calculated from the \"raw\"
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

")



(provide :vision_msgs/FrameResults "6ddc9f5aeba4eed50c0dbd8bc8468f0f")


