;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::ClassifiedObjects)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'ClassifiedObjects (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::CLASSIFIEDOBJECTS")
  (make-package "VISION_MSGS::CLASSIFIEDOBJECTS"))

(in-package "ROS")
;;//! \htmlinclude ClassifiedObjects.msg.html


(defclass vision_msgs::ClassifiedObjects
  :super ros::object
  :slots (_objects ))

(defmethod vision_msgs::ClassifiedObjects
  (:init
   (&key
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _objects __objects)
   self)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; vision_msgs/ClassifiedObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vision_msgs/ClassifiedObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vision_msgs/ClassifiedObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance vision_msgs::ClassifiedObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vision_msgs::ClassifiedObjects :md5sum-) "593a73ae2615e0b38517c53d9fec3897")
(setf (get vision_msgs::ClassifiedObjects :datatype-) "vision_msgs/ClassifiedObjects")
(setf (get vision_msgs::ClassifiedObjects :definition-)
      "ClassifiedObject[] objects

================================================================================
MSG: vision_msgs/ClassifiedObject
# Header for timestamp info
Header header
string object_class	  	# Detected objects
float32 confidence 		# Confidence for each detected object
sensor_msgs/RegionOfInterest roi 	# Region within frame the object was detected

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



(provide :vision_msgs/ClassifiedObjects "593a73ae2615e0b38517c53d9fec3897")


