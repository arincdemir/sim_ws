;; Auto-generated. Do not edit!


(when (boundp 'may_nav_msgs::ScoredTrajectories)
  (if (not (find-package "MAY_NAV_MSGS"))
    (make-package "MAY_NAV_MSGS"))
  (shadow 'ScoredTrajectories (find-package "MAY_NAV_MSGS")))
(unless (find-package "MAY_NAV_MSGS::SCOREDTRAJECTORIES")
  (make-package "MAY_NAV_MSGS::SCOREDTRAJECTORIES"))

(in-package "ROS")
;;//! \htmlinclude ScoredTrajectories.msg.html


(defclass may_nav_msgs::ScoredTrajectories
  :super ros::object
  :slots (_trajectories _scores _plan_distance_scores _target_distance_scores _plan_angle_difference_scores _target_angle_difference_scores _obstacle_scores _heading_angle_difference_scores _chosen_trajectory_index ))

(defmethod may_nav_msgs::ScoredTrajectories
  (:init
   (&key
    ((:trajectories __trajectories) ())
    ((:scores __scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:plan_distance_scores __plan_distance_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:target_distance_scores __target_distance_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:plan_angle_difference_scores __plan_angle_difference_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:target_angle_difference_scores __target_angle_difference_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:obstacle_scores __obstacle_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:heading_angle_difference_scores __heading_angle_difference_scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:chosen_trajectory_index __chosen_trajectory_index) 0)
    )
   (send-super :init)
   (setq _trajectories __trajectories)
   (setq _scores __scores)
   (setq _plan_distance_scores __plan_distance_scores)
   (setq _target_distance_scores __target_distance_scores)
   (setq _plan_angle_difference_scores __plan_angle_difference_scores)
   (setq _target_angle_difference_scores __target_angle_difference_scores)
   (setq _obstacle_scores __obstacle_scores)
   (setq _heading_angle_difference_scores __heading_angle_difference_scores)
   (setq _chosen_trajectory_index (round __chosen_trajectory_index))
   self)
  (:trajectories
   (&rest __trajectories)
   (if (keywordp (car __trajectories))
       (send* _trajectories __trajectories)
     (progn
       (if __trajectories (setq _trajectories (car __trajectories)))
       _trajectories)))
  (:scores
   (&optional __scores)
   (if __scores (setq _scores __scores)) _scores)
  (:plan_distance_scores
   (&optional __plan_distance_scores)
   (if __plan_distance_scores (setq _plan_distance_scores __plan_distance_scores)) _plan_distance_scores)
  (:target_distance_scores
   (&optional __target_distance_scores)
   (if __target_distance_scores (setq _target_distance_scores __target_distance_scores)) _target_distance_scores)
  (:plan_angle_difference_scores
   (&optional __plan_angle_difference_scores)
   (if __plan_angle_difference_scores (setq _plan_angle_difference_scores __plan_angle_difference_scores)) _plan_angle_difference_scores)
  (:target_angle_difference_scores
   (&optional __target_angle_difference_scores)
   (if __target_angle_difference_scores (setq _target_angle_difference_scores __target_angle_difference_scores)) _target_angle_difference_scores)
  (:obstacle_scores
   (&optional __obstacle_scores)
   (if __obstacle_scores (setq _obstacle_scores __obstacle_scores)) _obstacle_scores)
  (:heading_angle_difference_scores
   (&optional __heading_angle_difference_scores)
   (if __heading_angle_difference_scores (setq _heading_angle_difference_scores __heading_angle_difference_scores)) _heading_angle_difference_scores)
  (:chosen_trajectory_index
   (&optional __chosen_trajectory_index)
   (if __chosen_trajectory_index (setq _chosen_trajectory_index __chosen_trajectory_index)) _chosen_trajectory_index)
  (:serialization-length
   ()
   (+
    ;; may_nav_msgs/Trajectory[] _trajectories
    (apply #'+ (send-all _trajectories :serialization-length)) 4
    ;; float32[] _scores
    (* 4    (length _scores)) 4
    ;; float32[] _plan_distance_scores
    (* 4    (length _plan_distance_scores)) 4
    ;; float32[] _target_distance_scores
    (* 4    (length _target_distance_scores)) 4
    ;; float32[] _plan_angle_difference_scores
    (* 4    (length _plan_angle_difference_scores)) 4
    ;; float32[] _target_angle_difference_scores
    (* 4    (length _target_angle_difference_scores)) 4
    ;; float32[] _obstacle_scores
    (* 4    (length _obstacle_scores)) 4
    ;; float32[] _heading_angle_difference_scores
    (* 4    (length _heading_angle_difference_scores)) 4
    ;; int32 _chosen_trajectory_index
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; may_nav_msgs/Trajectory[] _trajectories
     (write-long (length _trajectories) s)
     (dolist (elem _trajectories)
       (send elem :serialize s)
       )
     ;; float32[] _scores
     (write-long (length _scores) s)
     (dotimes (i (length _scores))
       (sys::poke (elt _scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _plan_distance_scores
     (write-long (length _plan_distance_scores) s)
     (dotimes (i (length _plan_distance_scores))
       (sys::poke (elt _plan_distance_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _target_distance_scores
     (write-long (length _target_distance_scores) s)
     (dotimes (i (length _target_distance_scores))
       (sys::poke (elt _target_distance_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _plan_angle_difference_scores
     (write-long (length _plan_angle_difference_scores) s)
     (dotimes (i (length _plan_angle_difference_scores))
       (sys::poke (elt _plan_angle_difference_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _target_angle_difference_scores
     (write-long (length _target_angle_difference_scores) s)
     (dotimes (i (length _target_angle_difference_scores))
       (sys::poke (elt _target_angle_difference_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _obstacle_scores
     (write-long (length _obstacle_scores) s)
     (dotimes (i (length _obstacle_scores))
       (sys::poke (elt _obstacle_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _heading_angle_difference_scores
     (write-long (length _heading_angle_difference_scores) s)
     (dotimes (i (length _heading_angle_difference_scores))
       (sys::poke (elt _heading_angle_difference_scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; int32 _chosen_trajectory_index
       (write-long _chosen_trajectory_index s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; may_nav_msgs/Trajectory[] _trajectories
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectories (let (r) (dotimes (i n) (push (instance may_nav_msgs::Trajectory :init) r)) r))
     (dolist (elem- _trajectories)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _plan_distance_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plan_distance_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _plan_distance_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _target_distance_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_distance_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _target_distance_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _plan_angle_difference_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plan_angle_difference_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _plan_angle_difference_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _target_angle_difference_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_angle_difference_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _target_angle_difference_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _obstacle_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obstacle_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _obstacle_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _heading_angle_difference_scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _heading_angle_difference_scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _heading_angle_difference_scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; int32 _chosen_trajectory_index
     (setq _chosen_trajectory_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get may_nav_msgs::ScoredTrajectories :md5sum-) "f5c548ba9491b852a98720ee47439e25")
(setf (get may_nav_msgs::ScoredTrajectories :datatype-) "may_nav_msgs/ScoredTrajectories")
(setf (get may_nav_msgs::ScoredTrajectories :definition-)
      "may_nav_msgs/Trajectory[] trajectories
float32[] scores
float32[] plan_distance_scores
float32[] target_distance_scores
float32[] plan_angle_difference_scores
float32[] target_angle_difference_scores
float32[] obstacle_scores
float32[] heading_angle_difference_scores
int32 chosen_trajectory_index

================================================================================
MSG: may_nav_msgs/Trajectory
geometry_msgs/Pose2D[] poses

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

")



(provide :may_nav_msgs/ScoredTrajectories "f5c548ba9491b852a98720ee47439e25")


