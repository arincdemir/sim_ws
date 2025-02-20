;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::DetectedObjects)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'DetectedObjects (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::DETECTEDOBJECTS")
  (make-package "VISION_MSGS::DETECTEDOBJECTS"))

(in-package "ROS")
;;//! \htmlinclude DetectedObjects.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vision_msgs::DetectedObjects
  :super ros::object
  :slots (_header _positive_detections _all_detections ))

(defmethod vision_msgs::DetectedObjects
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:positive_detections __positive_detections) (instance vision_msgs::ClassifiedObjects :init))
    ((:all_detections __all_detections) (instance vision_msgs::ClassifiedObjects :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _positive_detections __positive_detections)
   (setq _all_detections __all_detections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:positive_detections
   (&rest __positive_detections)
   (if (keywordp (car __positive_detections))
       (send* _positive_detections __positive_detections)
     (progn
       (if __positive_detections (setq _positive_detections (car __positive_detections)))
       _positive_detections)))
  (:all_detections
   (&rest __all_detections)
   (if (keywordp (car __all_detections))
       (send* _all_detections __all_detections)
     (progn
       (if __all_detections (setq _all_detections (car __all_detections)))
       _all_detections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; vision_msgs/ClassifiedObjects _positive_detections
    (send _positive_detections :serialization-length)
    ;; vision_msgs/ClassifiedObjects _all_detections
    (send _all_detections :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vision_msgs/ClassifiedObjects _positive_detections
       (send _positive_detections :serialize s)
     ;; vision_msgs/ClassifiedObjects _all_detections
       (send _all_detections :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; vision_msgs/ClassifiedObjects _positive_detections
     (send _positive_detections :deserialize buf ptr-) (incf ptr- (send _positive_detections :serialization-length))
   ;; vision_msgs/ClassifiedObjects _all_detections
     (send _all_detections :deserialize buf ptr-) (incf ptr- (send _all_detections :serialization-length))
   ;;
   self)
  )

(setf (get vision_msgs::DetectedObjects :md5sum-) "b311e2b24dcd6070f418bd1bd3446fd9")
(setf (get vision_msgs::DetectedObjects :datatype-) "vision_msgs/DetectedObjects")
(setf (get vision_msgs::DetectedObjects :definition-)
      "# Header for timestamp / frame info
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

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

")



(provide :vision_msgs/DetectedObjects "b311e2b24dcd6070f418bd1bd3446fd9")


