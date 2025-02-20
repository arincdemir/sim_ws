;; Auto-generated. Do not edit!


(when (boundp 'social_sim_ros::PersonEntryArray)
  (if (not (find-package "SOCIAL_SIM_ROS"))
    (make-package "SOCIAL_SIM_ROS"))
  (shadow 'PersonEntryArray (find-package "SOCIAL_SIM_ROS")))
(unless (find-package "SOCIAL_SIM_ROS::PERSONENTRYARRAY")
  (make-package "SOCIAL_SIM_ROS::PERSONENTRYARRAY"))

(in-package "ROS")
;;//! \htmlinclude PersonEntryArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass social_sim_ros::PersonEntryArray
  :super ros::object
  :slots (_header _people ))

(defmethod social_sim_ros::PersonEntryArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:people __people) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _people __people)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:people
   (&rest __people)
   (if (keywordp (car __people))
       (send* _people __people)
     (progn
       (if __people (setq _people (car __people)))
       _people)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; social_sim_ros/PersonEntry[] _people
    (apply #'+ (send-all _people :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; social_sim_ros/PersonEntry[] _people
     (write-long (length _people) s)
     (dolist (elem _people)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; social_sim_ros/PersonEntry[] _people
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _people (let (r) (dotimes (i n) (push (instance social_sim_ros::PersonEntry :init) r)) r))
     (dolist (elem- _people)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get social_sim_ros::PersonEntryArray :md5sum-) "8348034da65c22b0b7c89265fa8ea1ee")
(setf (get social_sim_ros::PersonEntryArray :datatype-) "social_sim_ros/PersonEntryArray")
(setf (get social_sim_ros::PersonEntryArray :definition-)
      "# Message defining an array of all people entries

Header          header      # Age of the track
PersonEntry[]   people      # Array containing the entries for the N tracked persons
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
MSG: social_sim_ros/PersonEntry
# Message defining an entry of a person

Header      header         # Age of the track
uint64      track_id       # Unique ID for each person

# The following fields are extracted from the Kalman state x and its covariance C

# Pose of the track
geometry_msgs/Pose      pose

# Velocity of the track
geometry_msgs/Twist     twist

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
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :social_sim_ros/PersonEntryArray "8348034da65c22b0b7c89265fa8ea1ee")


