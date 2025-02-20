;; Auto-generated. Do not edit!


(when (boundp 'social_sim_ros::TrialInfo)
  (if (not (find-package "SOCIAL_SIM_ROS"))
    (make-package "SOCIAL_SIM_ROS"))
  (shadow 'TrialInfo (find-package "SOCIAL_SIM_ROS")))
(unless (find-package "SOCIAL_SIM_ROS::TRIALINFO")
  (make-package "SOCIAL_SIM_ROS::TRIALINFO"))

(in-package "ROS")
;;//! \htmlinclude TrialInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass social_sim_ros::TrialInfo
  :super ros::object
  :slots (_header _trial_start _timeout_time _trial_name _trial_number _num_actors _robot_start _robot_goal _dist_to_target _min_dist_to_target _robot_poses _robot_poses_ts _min_dist_to_ped _robot_on_person_intimate_dist_violations _person_on_robot_intimate_dist_violations _robot_on_person_personal_dist_violations _person_on_robot_personal_dist_violations _robot_on_person_collisions _person_on_robot_collisions _obj_collisions ))

(defmethod social_sim_ros::TrialInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:trial_start __trial_start) (instance ros::time :init))
    ((:timeout_time __timeout_time) 0.0)
    ((:trial_name __trial_name) "")
    ((:trial_number __trial_number) 0)
    ((:num_actors __num_actors) 0)
    ((:robot_start __robot_start) (instance geometry_msgs::Pose :init))
    ((:robot_goal __robot_goal) (instance geometry_msgs::Pose :init))
    ((:dist_to_target __dist_to_target) 0.0)
    ((:min_dist_to_target __min_dist_to_target) 0.0)
    ((:robot_poses __robot_poses) ())
    ((:robot_poses_ts __robot_poses_ts) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    ((:min_dist_to_ped __min_dist_to_ped) 0.0)
    ((:robot_on_person_intimate_dist_violations __robot_on_person_intimate_dist_violations) 0)
    ((:person_on_robot_intimate_dist_violations __person_on_robot_intimate_dist_violations) 0)
    ((:robot_on_person_personal_dist_violations __robot_on_person_personal_dist_violations) 0)
    ((:person_on_robot_personal_dist_violations __person_on_robot_personal_dist_violations) 0)
    ((:robot_on_person_collisions __robot_on_person_collisions) 0)
    ((:person_on_robot_collisions __person_on_robot_collisions) 0)
    ((:obj_collisions __obj_collisions) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _trial_start __trial_start)
   (setq _timeout_time (float __timeout_time))
   (setq _trial_name (string __trial_name))
   (setq _trial_number (round __trial_number))
   (setq _num_actors (round __num_actors))
   (setq _robot_start __robot_start)
   (setq _robot_goal __robot_goal)
   (setq _dist_to_target (float __dist_to_target))
   (setq _min_dist_to_target (float __min_dist_to_target))
   (setq _robot_poses __robot_poses)
   (setq _robot_poses_ts __robot_poses_ts)
   (setq _min_dist_to_ped (float __min_dist_to_ped))
   (setq _robot_on_person_intimate_dist_violations (round __robot_on_person_intimate_dist_violations))
   (setq _person_on_robot_intimate_dist_violations (round __person_on_robot_intimate_dist_violations))
   (setq _robot_on_person_personal_dist_violations (round __robot_on_person_personal_dist_violations))
   (setq _person_on_robot_personal_dist_violations (round __person_on_robot_personal_dist_violations))
   (setq _robot_on_person_collisions (round __robot_on_person_collisions))
   (setq _person_on_robot_collisions (round __person_on_robot_collisions))
   (setq _obj_collisions (round __obj_collisions))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:trial_start
   (&optional __trial_start)
   (if __trial_start (setq _trial_start __trial_start)) _trial_start)
  (:timeout_time
   (&optional __timeout_time)
   (if __timeout_time (setq _timeout_time __timeout_time)) _timeout_time)
  (:trial_name
   (&optional __trial_name)
   (if __trial_name (setq _trial_name __trial_name)) _trial_name)
  (:trial_number
   (&optional __trial_number)
   (if __trial_number (setq _trial_number __trial_number)) _trial_number)
  (:num_actors
   (&optional __num_actors)
   (if __num_actors (setq _num_actors __num_actors)) _num_actors)
  (:robot_start
   (&rest __robot_start)
   (if (keywordp (car __robot_start))
       (send* _robot_start __robot_start)
     (progn
       (if __robot_start (setq _robot_start (car __robot_start)))
       _robot_start)))
  (:robot_goal
   (&rest __robot_goal)
   (if (keywordp (car __robot_goal))
       (send* _robot_goal __robot_goal)
     (progn
       (if __robot_goal (setq _robot_goal (car __robot_goal)))
       _robot_goal)))
  (:dist_to_target
   (&optional __dist_to_target)
   (if __dist_to_target (setq _dist_to_target __dist_to_target)) _dist_to_target)
  (:min_dist_to_target
   (&optional __min_dist_to_target)
   (if __min_dist_to_target (setq _min_dist_to_target __min_dist_to_target)) _min_dist_to_target)
  (:robot_poses
   (&rest __robot_poses)
   (if (keywordp (car __robot_poses))
       (send* _robot_poses __robot_poses)
     (progn
       (if __robot_poses (setq _robot_poses (car __robot_poses)))
       _robot_poses)))
  (:robot_poses_ts
   (&optional __robot_poses_ts)
   (if __robot_poses_ts (setq _robot_poses_ts __robot_poses_ts)) _robot_poses_ts)
  (:min_dist_to_ped
   (&optional __min_dist_to_ped)
   (if __min_dist_to_ped (setq _min_dist_to_ped __min_dist_to_ped)) _min_dist_to_ped)
  (:robot_on_person_intimate_dist_violations
   (&optional __robot_on_person_intimate_dist_violations)
   (if __robot_on_person_intimate_dist_violations (setq _robot_on_person_intimate_dist_violations __robot_on_person_intimate_dist_violations)) _robot_on_person_intimate_dist_violations)
  (:person_on_robot_intimate_dist_violations
   (&optional __person_on_robot_intimate_dist_violations)
   (if __person_on_robot_intimate_dist_violations (setq _person_on_robot_intimate_dist_violations __person_on_robot_intimate_dist_violations)) _person_on_robot_intimate_dist_violations)
  (:robot_on_person_personal_dist_violations
   (&optional __robot_on_person_personal_dist_violations)
   (if __robot_on_person_personal_dist_violations (setq _robot_on_person_personal_dist_violations __robot_on_person_personal_dist_violations)) _robot_on_person_personal_dist_violations)
  (:person_on_robot_personal_dist_violations
   (&optional __person_on_robot_personal_dist_violations)
   (if __person_on_robot_personal_dist_violations (setq _person_on_robot_personal_dist_violations __person_on_robot_personal_dist_violations)) _person_on_robot_personal_dist_violations)
  (:robot_on_person_collisions
   (&optional __robot_on_person_collisions)
   (if __robot_on_person_collisions (setq _robot_on_person_collisions __robot_on_person_collisions)) _robot_on_person_collisions)
  (:person_on_robot_collisions
   (&optional __person_on_robot_collisions)
   (if __person_on_robot_collisions (setq _person_on_robot_collisions __person_on_robot_collisions)) _person_on_robot_collisions)
  (:obj_collisions
   (&optional __obj_collisions)
   (if __obj_collisions (setq _obj_collisions __obj_collisions)) _obj_collisions)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _trial_start
    8
    ;; float64 _timeout_time
    8
    ;; string _trial_name
    4 (length _trial_name)
    ;; uint16 _trial_number
    2
    ;; uint32 _num_actors
    4
    ;; geometry_msgs/Pose _robot_start
    (send _robot_start :serialization-length)
    ;; geometry_msgs/Pose _robot_goal
    (send _robot_goal :serialization-length)
    ;; float64 _dist_to_target
    8
    ;; float64 _min_dist_to_target
    8
    ;; geometry_msgs/Pose[] _robot_poses
    (apply #'+ (send-all _robot_poses :serialization-length)) 4
    ;; time[] _robot_poses_ts
    (* 8    (length _robot_poses_ts)) 4
    ;; float64 _min_dist_to_ped
    8
    ;; uint32 _robot_on_person_intimate_dist_violations
    4
    ;; uint32 _person_on_robot_intimate_dist_violations
    4
    ;; uint32 _robot_on_person_personal_dist_violations
    4
    ;; uint32 _person_on_robot_personal_dist_violations
    4
    ;; uint32 _robot_on_person_collisions
    4
    ;; uint32 _person_on_robot_collisions
    4
    ;; uint32 _obj_collisions
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _trial_start
       (write-long (send _trial_start :sec) s) (write-long (send _trial_start :nsec) s)
     ;; float64 _timeout_time
       (sys::poke _timeout_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _trial_name
       (write-long (length _trial_name) s) (princ _trial_name s)
     ;; uint16 _trial_number
       (write-word _trial_number s)
     ;; uint32 _num_actors
       (write-long _num_actors s)
     ;; geometry_msgs/Pose _robot_start
       (send _robot_start :serialize s)
     ;; geometry_msgs/Pose _robot_goal
       (send _robot_goal :serialize s)
     ;; float64 _dist_to_target
       (sys::poke _dist_to_target (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _min_dist_to_target
       (sys::poke _min_dist_to_target (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Pose[] _robot_poses
     (write-long (length _robot_poses) s)
     (dolist (elem _robot_poses)
       (send elem :serialize s)
       )
     ;; time[] _robot_poses_ts
     (write-long (length _robot_poses_ts) s)
     (dotimes (i (length _robot_poses_ts))
       (write-long (send (elt _robot_poses_ts i) :sec) s) (write-long (send (elt _robot_poses_ts i) :nsec) s)
       )
     ;; float64 _min_dist_to_ped
       (sys::poke _min_dist_to_ped (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _robot_on_person_intimate_dist_violations
       (write-long _robot_on_person_intimate_dist_violations s)
     ;; uint32 _person_on_robot_intimate_dist_violations
       (write-long _person_on_robot_intimate_dist_violations s)
     ;; uint32 _robot_on_person_personal_dist_violations
       (write-long _robot_on_person_personal_dist_violations s)
     ;; uint32 _person_on_robot_personal_dist_violations
       (write-long _person_on_robot_personal_dist_violations s)
     ;; uint32 _robot_on_person_collisions
       (write-long _robot_on_person_collisions s)
     ;; uint32 _person_on_robot_collisions
       (write-long _person_on_robot_collisions s)
     ;; uint32 _obj_collisions
       (write-long _obj_collisions s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _trial_start
     (send _trial_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _trial_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _timeout_time
     (setq _timeout_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _trial_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _trial_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _trial_number
     (setq _trial_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _num_actors
     (setq _num_actors (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _robot_start
     (send _robot_start :deserialize buf ptr-) (incf ptr- (send _robot_start :serialization-length))
   ;; geometry_msgs/Pose _robot_goal
     (send _robot_goal :deserialize buf ptr-) (incf ptr- (send _robot_goal :serialization-length))
   ;; float64 _dist_to_target
     (setq _dist_to_target (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _min_dist_to_target
     (setq _min_dist_to_target (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Pose[] _robot_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _robot_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; time[] _robot_poses_ts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _robot_poses_ts (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _robot_poses_ts)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64 _min_dist_to_ped
     (setq _min_dist_to_ped (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _robot_on_person_intimate_dist_violations
     (setq _robot_on_person_intimate_dist_violations (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _person_on_robot_intimate_dist_violations
     (setq _person_on_robot_intimate_dist_violations (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _robot_on_person_personal_dist_violations
     (setq _robot_on_person_personal_dist_violations (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _person_on_robot_personal_dist_violations
     (setq _person_on_robot_personal_dist_violations (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _robot_on_person_collisions
     (setq _robot_on_person_collisions (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _person_on_robot_collisions
     (setq _person_on_robot_collisions (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _obj_collisions
     (setq _obj_collisions (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get social_sim_ros::TrialInfo :md5sum-) "e8f0eee793947e51716938ffff8f8195")
(setf (get social_sim_ros::TrialInfo :datatype-) "social_sim_ros/TrialInfo")
(setf (get social_sim_ros::TrialInfo :definition-)
      "# Message containing the information of running a single A-B navigation trial

Header                    header

# Information about the current interaction
time                      trial_start                                    # When did we start tracking metrics for this trial
float64                   timeout_time                                   # How long is allowed for the episode have to complete?
string                    trial_name                                     # Which trial name are we running
uint16                    trial_number                                   # Which trial number are we running
uint32                    num_actors                                     # How many people in the scene?

# Robot start / goal locations
geometry_msgs/Pose        robot_start
geometry_msgs/Pose        robot_goal

# Robot location / distance relative to start / goal
float64                   dist_to_target                                 # Current distance to target
float64                   min_dist_to_target                             # Closest difference to the target the robot has come
geometry_msgs/Pose[]      robot_poses                                    # Poses of the robot over the episode
time[]                    robot_poses_ts                                 # Timestamps of the robot poses over the episode

# Robot location relative to pedestrians
float64                   min_dist_to_ped                                # Minimum distance to any pedestrian throughout the trial

# Collisions between robots and people
uint32                    robot_on_person_intimate_dist_violations       # Robot passes w/in the intimate distance of a pedestrian
uint32                    person_on_robot_intimate_dist_violations       # A person passes w/in the intimate distance of the robot
uint32                    robot_on_person_personal_dist_violations       # Robot passes w/in the personal distance of a pedestrian
uint32                    person_on_robot_personal_dist_violations       # A person passes w/in the personal distance of the robot
uint32                    robot_on_person_collisions                     # Number of times that the robot collided with a person
uint32                    person_on_robot_collisions                     # Number of times that ap person collided with the robot

# Collisions w/ static objects
uint32                    obj_collisions                                 # Number of times that the robot collided with a static object

# Computed post-hoc
#bool                     completed                                      # was the robots finals distance to the goal within the desired distance?
#float64                  targ_dist_norm                                 # dist_to_target normalized by path length
#float64                  path_length                                    # Approximate distance traveled by robot
#float64                  mean_dist_to_target_not_moving                 # How far away from the target was the robot while not moving
#float64                  time_not_moving                                # Seconds the robot was not moving. Computed by checking if the robot moved more than 0.05m since a check the last 1s ago. If not, accumulate the time since the last check.
#bool                     episode_timed_out
#float64                  path_irregularity
#float64                  path_efficiency

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

")



(provide :social_sim_ros/TrialInfo "e8f0eee793947e51716938ffff8f8195")


