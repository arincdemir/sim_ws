;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::FaceArray)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'FaceArray (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::FACEARRAY")
  (make-package "VISION_MSGS::FACEARRAY"))

(in-package "ROS")
;;//! \htmlinclude FaceArray.msg.html


(defclass vision_msgs::FaceArray
  :super ros::object
  :slots (_faces ))

(defmethod vision_msgs::FaceArray
  (:init
   (&key
    ((:faces __faces) ())
    )
   (send-super :init)
   (setq _faces __faces)
   self)
  (:faces
   (&rest __faces)
   (if (keywordp (car __faces))
       (send* _faces __faces)
     (progn
       (if __faces (setq _faces (car __faces)))
       _faces)))
  (:serialization-length
   ()
   (+
    ;; vision_msgs/Face[] _faces
    (apply #'+ (send-all _faces :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vision_msgs/Face[] _faces
     (write-long (length _faces) s)
     (dolist (elem _faces)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vision_msgs/Face[] _faces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _faces (let (r) (dotimes (i n) (push (instance vision_msgs::Face :init) r)) r))
     (dolist (elem- _faces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vision_msgs::FaceArray :md5sum-) "22ce0869e5c5474804f18cc49c6e69ba")
(setf (get vision_msgs::FaceArray :datatype-) "vision_msgs/FaceArray")
(setf (get vision_msgs::FaceArray :definition-)
      "Face[] faces

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :vision_msgs/FaceArray "22ce0869e5c5474804f18cc49c6e69ba")


