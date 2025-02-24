;; Auto-generated. Do not edit!


(when (boundp 'social_sim_ros::AgentArray)
  (if (not (find-package "SOCIAL_SIM_ROS"))
    (make-package "SOCIAL_SIM_ROS"))
  (shadow 'AgentArray (find-package "SOCIAL_SIM_ROS")))
(unless (find-package "SOCIAL_SIM_ROS::AGENTARRAY")
  (make-package "SOCIAL_SIM_ROS::AGENTARRAY"))

(in-package "ROS")
;;//! \htmlinclude AgentArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass social_sim_ros::AgentArray
  :super ros::object
  :slots (_header _agents ))

(defmethod social_sim_ros::AgentArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:agents __agents) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _agents __agents)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:agents
   (&rest __agents)
   (if (keywordp (car __agents))
       (send* _agents __agents)
     (progn
       (if __agents (setq _agents (car __agents)))
       _agents)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; social_sim_ros/Agent[] _agents
    (apply #'+ (send-all _agents :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; social_sim_ros/Agent[] _agents
     (write-long (length _agents) s)
     (dolist (elem _agents)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; social_sim_ros/Agent[] _agents
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _agents (let (r) (dotimes (i n) (push (instance social_sim_ros::Agent :init) r)) r))
     (dolist (elem- _agents)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get social_sim_ros::AgentArray :md5sum-) "2f3637fe5cf04805aaaa1c9d7f5247a1")
(setf (get social_sim_ros::AgentArray :datatype-) "social_sim_ros/AgentArray")
(setf (get social_sim_ros::AgentArray :definition-)
      "# Message defining an array of all agent entries
Header          header      # Age of the track
Agent[]         agents      # Array containing the entries for the N agents in the current environment
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
MSG: social_sim_ros/Agent
# Message defining an entry of a agent

Header      header         # Age of the track
uint64      track_id       # Unique ID for each agent

# Type of agent
string                  type

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



(provide :social_sim_ros/AgentArray "2f3637fe5cf04805aaaa1c9d7f5247a1")


