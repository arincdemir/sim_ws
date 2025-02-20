;; Auto-generated. Do not edit!


(when (boundp 'social_sim_ros::TrialStart)
  (if (not (find-package "SOCIAL_SIM_ROS"))
    (make-package "SOCIAL_SIM_ROS"))
  (shadow 'TrialStart (find-package "SOCIAL_SIM_ROS")))
(unless (find-package "SOCIAL_SIM_ROS::TRIALSTART")
  (make-package "SOCIAL_SIM_ROS::TRIALSTART"))

(in-package "ROS")
;;//! \htmlinclude TrialStart.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass social_sim_ros::TrialStart
  :super ros::object
  :slots (_header _trial_name _trial_number _spawn _target _people _time_limit ))

(defmethod social_sim_ros::TrialStart
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trial_name __trial_name) "")
    ((:trial_number __trial_number) 0)
    ((:spawn __spawn) (instance geometry_msgs::Pose :init))
    ((:target __target) (instance geometry_msgs::Pose :init))
    ((:people __people) (instance geometry_msgs::PoseArray :init))
    ((:time_limit __time_limit) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _trial_name (string __trial_name))
   (setq _trial_number (round __trial_number))
   (setq _spawn __spawn)
   (setq _target __target)
   (setq _people __people)
   (setq _time_limit (float __time_limit))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trial_name
   (&optional __trial_name)
   (if __trial_name (setq _trial_name __trial_name)) _trial_name)
  (:trial_number
   (&optional __trial_number)
   (if __trial_number (setq _trial_number __trial_number)) _trial_number)
  (:spawn
   (&rest __spawn)
   (if (keywordp (car __spawn))
       (send* _spawn __spawn)
     (progn
       (if __spawn (setq _spawn (car __spawn)))
       _spawn)))
  (:target
   (&rest __target)
   (if (keywordp (car __target))
       (send* _target __target)
     (progn
       (if __target (setq _target (car __target)))
       _target)))
  (:people
   (&rest __people)
   (if (keywordp (car __people))
       (send* _people __people)
     (progn
       (if __people (setq _people (car __people)))
       _people)))
  (:time_limit
   (&optional __time_limit)
   (if __time_limit (setq _time_limit __time_limit)) _time_limit)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _trial_name
    4 (length _trial_name)
    ;; uint16 _trial_number
    2
    ;; geometry_msgs/Pose _spawn
    (send _spawn :serialization-length)
    ;; geometry_msgs/Pose _target
    (send _target :serialization-length)
    ;; geometry_msgs/PoseArray _people
    (send _people :serialization-length)
    ;; float64 _time_limit
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _trial_name
       (write-long (length _trial_name) s) (princ _trial_name s)
     ;; uint16 _trial_number
       (write-word _trial_number s)
     ;; geometry_msgs/Pose _spawn
       (send _spawn :serialize s)
     ;; geometry_msgs/Pose _target
       (send _target :serialize s)
     ;; geometry_msgs/PoseArray _people
       (send _people :serialize s)
     ;; float64 _time_limit
       (sys::poke _time_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _trial_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _trial_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _trial_number
     (setq _trial_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Pose _spawn
     (send _spawn :deserialize buf ptr-) (incf ptr- (send _spawn :serialization-length))
   ;; geometry_msgs/Pose _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;; geometry_msgs/PoseArray _people
     (send _people :deserialize buf ptr-) (incf ptr- (send _people :serialization-length))
   ;; float64 _time_limit
     (setq _time_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get social_sim_ros::TrialStart :md5sum-) "8977fce884e0099b26d82cb11060e412")
(setf (get social_sim_ros::TrialStart :datatype-) "social_sim_ros/TrialStart")
(setf (get social_sim_ros::TrialStart :definition-)
      "# Message containing the parameters to start an A-B navigation trial

Header                  header
string                  trial_name      # Which trial name are we running
uint16                  trial_number    # Which trial number are we running
geometry_msgs/Pose      spawn           # Robot spawn position
geometry_msgs/Pose      target          # Robot target position
geometry_msgs/PoseArray people          # People spawn positions
float64                 time_limit      # Time limit for the trial (in seconds)

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
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

")



(provide :social_sim_ros/TrialStart "8977fce884e0099b26d82cb11060e412")


