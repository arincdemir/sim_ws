;; Auto-generated. Do not edit!


(when (boundp 'social_sim_ros::SceneInfo)
  (if (not (find-package "SOCIAL_SIM_ROS"))
    (make-package "SOCIAL_SIM_ROS"))
  (shadow 'SceneInfo (find-package "SOCIAL_SIM_ROS")))
(unless (find-package "SOCIAL_SIM_ROS::SCENEINFO")
  (make-package "SOCIAL_SIM_ROS::SCENEINFO"))

(in-package "ROS")
;;//! \htmlinclude SceneInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass social_sim_ros::SceneInfo
  :super ros::object
  :slots (_header _scenario_name _robot_start_pose _robot_target_pose _num_people _num_groups _environment ))

(defmethod social_sim_ros::SceneInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:scenario_name __scenario_name) "")
    ((:robot_start_pose __robot_start_pose) (instance geometry_msgs::Pose :init))
    ((:robot_target_pose __robot_target_pose) (instance geometry_msgs::Pose :init))
    ((:num_people __num_people) 0)
    ((:num_groups __num_groups) 0)
    ((:environment __environment) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _scenario_name (string __scenario_name))
   (setq _robot_start_pose __robot_start_pose)
   (setq _robot_target_pose __robot_target_pose)
   (setq _num_people (round __num_people))
   (setq _num_groups (round __num_groups))
   (setq _environment (string __environment))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:scenario_name
   (&optional __scenario_name)
   (if __scenario_name (setq _scenario_name __scenario_name)) _scenario_name)
  (:robot_start_pose
   (&rest __robot_start_pose)
   (if (keywordp (car __robot_start_pose))
       (send* _robot_start_pose __robot_start_pose)
     (progn
       (if __robot_start_pose (setq _robot_start_pose (car __robot_start_pose)))
       _robot_start_pose)))
  (:robot_target_pose
   (&rest __robot_target_pose)
   (if (keywordp (car __robot_target_pose))
       (send* _robot_target_pose __robot_target_pose)
     (progn
       (if __robot_target_pose (setq _robot_target_pose (car __robot_target_pose)))
       _robot_target_pose)))
  (:num_people
   (&optional __num_people)
   (if __num_people (setq _num_people __num_people)) _num_people)
  (:num_groups
   (&optional __num_groups)
   (if __num_groups (setq _num_groups __num_groups)) _num_groups)
  (:environment
   (&optional __environment)
   (if __environment (setq _environment __environment)) _environment)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _scenario_name
    4 (length _scenario_name)
    ;; geometry_msgs/Pose _robot_start_pose
    (send _robot_start_pose :serialization-length)
    ;; geometry_msgs/Pose _robot_target_pose
    (send _robot_target_pose :serialization-length)
    ;; uint16 _num_people
    2
    ;; uint16 _num_groups
    2
    ;; string _environment
    4 (length _environment)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _scenario_name
       (write-long (length _scenario_name) s) (princ _scenario_name s)
     ;; geometry_msgs/Pose _robot_start_pose
       (send _robot_start_pose :serialize s)
     ;; geometry_msgs/Pose _robot_target_pose
       (send _robot_target_pose :serialize s)
     ;; uint16 _num_people
       (write-word _num_people s)
     ;; uint16 _num_groups
       (write-word _num_groups s)
     ;; string _environment
       (write-long (length _environment) s) (princ _environment s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _scenario_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _scenario_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _robot_start_pose
     (send _robot_start_pose :deserialize buf ptr-) (incf ptr- (send _robot_start_pose :serialization-length))
   ;; geometry_msgs/Pose _robot_target_pose
     (send _robot_target_pose :deserialize buf ptr-) (incf ptr- (send _robot_target_pose :serialization-length))
   ;; uint16 _num_people
     (setq _num_people (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _num_groups
     (setq _num_groups (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _environment
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _environment (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get social_sim_ros::SceneInfo :md5sum-) "5da53b93f7c64fcba0abe30ec331516b")
(setf (get social_sim_ros::SceneInfo :datatype-) "social_sim_ros/SceneInfo")
(setf (get social_sim_ros::SceneInfo :definition-)
      "# Message containing the parameters for Unity Scene trials

Header                  header
string                  scenario_name        # Which scene we are running
geometry_msgs/Pose      robot_start_pose     # Pose of robot start location
geometry_msgs/Pose      robot_target_pose    # Pose of robot target location
uint16                  num_people           # Number of people in scene
uint16                  num_groups           # Number of groups in scene
string                  environment          # Which environment

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



(provide :social_sim_ros/SceneInfo "5da53b93f7c64fcba0abe30ec331516b")


