;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::Face)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'Face (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::FACE")
  (make-package "VISION_MSGS::FACE"))

(in-package "ROS")
;;//! \htmlinclude Face.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vision_msgs::Face
  :super ros::object
  :slots (_header _id _capture_time _timetrack _bb _center _size _rotation _keypoints _confidence _name ))

(defmethod vision_msgs::Face
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) "")
    ((:capture_time __capture_time) (instance ros::time :init))
    ((:timetrack __timetrack) (instance ros::time :init))
    ((:bb __bb) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:size __size) 0.0)
    ((:rotation __rotation) 0.0)
    ((:keypoints __keypoints) (let (r) (dotimes (i 5) (push (instance geometry_msgs::Point :init) r)) r))
    ((:confidence __confidence) 0.0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (string __id))
   (setq _capture_time __capture_time)
   (setq _timetrack __timetrack)
   (setq _bb __bb)
   (setq _center __center)
   (setq _size (float __size))
   (setq _rotation (float __rotation))
   (setq _keypoints __keypoints)
   (setq _confidence (float __confidence))
   (setq _name (string __name))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:capture_time
   (&optional __capture_time)
   (if __capture_time (setq _capture_time __capture_time)) _capture_time)
  (:timetrack
   (&optional __timetrack)
   (if __timetrack (setq _timetrack __timetrack)) _timetrack)
  (:bb
   (&optional __bb)
   (if __bb (setq _bb __bb)) _bb)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:rotation
   (&optional __rotation)
   (if __rotation (setq _rotation __rotation)) _rotation)
  (:keypoints
   (&rest __keypoints)
   (if (keywordp (car __keypoints))
       (send* _keypoints __keypoints)
     (progn
       (if __keypoints (setq _keypoints (car __keypoints)))
       _keypoints)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _id
    4 (length _id)
    ;; time _capture_time
    8
    ;; duration _timetrack
    8
    ;; float32[4] _bb
    (* 4    4)
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; float32 _size
    4
    ;; float32 _rotation
    4
    ;; geometry_msgs/Point[5] _keypoints
    (apply #'+ (send-all _keypoints :serialization-length))
    ;; float32 _confidence
    4
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; time _capture_time
       (write-long (send _capture_time :sec) s) (write-long (send _capture_time :nsec) s)
     ;; duration _timetrack
       (write-long (send _timetrack :sec) s) (write-long (send _timetrack :nsec) s)
     ;; float32[4] _bb
     (dotimes (i 4)
       (sys::poke (elt _bb i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; float32 _size
       (sys::poke _size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rotation
       (sys::poke _rotation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point[5] _keypoints
     (dolist (elem _keypoints)
       (send elem :serialize s)
       )
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _capture_time
     (send _capture_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _capture_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; duration _timetrack
     (send _timetrack :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timetrack :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[4] _bb
   (dotimes (i (length _bb))
     (setf (elt _bb i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; float32 _size
     (setq _size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rotation
     (setq _rotation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point[5] _keypoints
   (dotimes (i 5)
     (send (elt _keypoints i) :deserialize buf ptr-) (incf ptr- (send (elt _keypoints i) :serialization-length))
     )
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get vision_msgs::Face :md5sum-) "327c1a1090cfdba09d7b997f98e7548a")
(setf (get vision_msgs::Face :datatype-) "vision_msgs/Face")
(setf (get vision_msgs::Face :definition-)
      "# Header for timestamp info
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



(provide :vision_msgs/Face "327c1a1090cfdba09d7b997f98e7548a")


