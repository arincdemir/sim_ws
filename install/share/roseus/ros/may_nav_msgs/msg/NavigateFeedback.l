;; Auto-generated. Do not edit!


(when (boundp 'may_nav_msgs::NavigateFeedback)
  (if (not (find-package "MAY_NAV_MSGS"))
    (make-package "MAY_NAV_MSGS"))
  (shadow 'NavigateFeedback (find-package "MAY_NAV_MSGS")))
(unless (find-package "MAY_NAV_MSGS::NAVIGATEFEEDBACK")
  (make-package "MAY_NAV_MSGS::NAVIGATEFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude NavigateFeedback.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass may_nav_msgs::NavigateFeedback
  :super ros::object
  :slots (_state _state_machine_state _target_pose _cmd_vel _has_bumped _num_replans _replan_failure_occurred ))

(defmethod may_nav_msgs::NavigateFeedback
  (:init
   (&key
    ((:state __state) "")
    ((:state_machine_state __state_machine_state) "")
    ((:target_pose __target_pose) (instance geometry_msgs::Pose2D :init))
    ((:cmd_vel __cmd_vel) (instance geometry_msgs::Pose2D :init))
    ((:has_bumped __has_bumped) nil)
    ((:num_replans __num_replans) 0)
    ((:replan_failure_occurred __replan_failure_occurred) nil)
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _state_machine_state (string __state_machine_state))
   (setq _target_pose __target_pose)
   (setq _cmd_vel __cmd_vel)
   (setq _has_bumped __has_bumped)
   (setq _num_replans (round __num_replans))
   (setq _replan_failure_occurred __replan_failure_occurred)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:state_machine_state
   (&optional __state_machine_state)
   (if __state_machine_state (setq _state_machine_state __state_machine_state)) _state_machine_state)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:cmd_vel
   (&rest __cmd_vel)
   (if (keywordp (car __cmd_vel))
       (send* _cmd_vel __cmd_vel)
     (progn
       (if __cmd_vel (setq _cmd_vel (car __cmd_vel)))
       _cmd_vel)))
  (:has_bumped
   (&optional (__has_bumped :null))
   (if (not (eq __has_bumped :null)) (setq _has_bumped __has_bumped)) _has_bumped)
  (:num_replans
   (&optional __num_replans)
   (if __num_replans (setq _num_replans __num_replans)) _num_replans)
  (:replan_failure_occurred
   (&optional (__replan_failure_occurred :null))
   (if (not (eq __replan_failure_occurred :null)) (setq _replan_failure_occurred __replan_failure_occurred)) _replan_failure_occurred)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; string _state_machine_state
    4 (length _state_machine_state)
    ;; geometry_msgs/Pose2D _target_pose
    (send _target_pose :serialization-length)
    ;; geometry_msgs/Pose2D _cmd_vel
    (send _cmd_vel :serialization-length)
    ;; bool _has_bumped
    1
    ;; uint32 _num_replans
    4
    ;; bool _replan_failure_occurred
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _state_machine_state
       (write-long (length _state_machine_state) s) (princ _state_machine_state s)
     ;; geometry_msgs/Pose2D _target_pose
       (send _target_pose :serialize s)
     ;; geometry_msgs/Pose2D _cmd_vel
       (send _cmd_vel :serialize s)
     ;; bool _has_bumped
       (if _has_bumped (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _num_replans
       (write-long _num_replans s)
     ;; bool _replan_failure_occurred
       (if _replan_failure_occurred (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _state_machine_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state_machine_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;; geometry_msgs/Pose2D _cmd_vel
     (send _cmd_vel :deserialize buf ptr-) (incf ptr- (send _cmd_vel :serialization-length))
   ;; bool _has_bumped
     (setq _has_bumped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _num_replans
     (setq _num_replans (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _replan_failure_occurred
     (setq _replan_failure_occurred (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get may_nav_msgs::NavigateFeedback :md5sum-) "93b607f29b90c517db4c9c6c8eb188e9")
(setf (get may_nav_msgs::NavigateFeedback :datatype-) "may_nav_msgs/NavigateFeedback")
(setf (get may_nav_msgs::NavigateFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#State fed back to ios (Controlling, Planning, etc)
string state
#Current state of may_nav's state machine
string state_machine_state

#target pose is the target_pose set by the local planner
geometry_msgs/Pose2D target_pose
geometry_msgs/Pose2D cmd_vel
#has_bumped is set to true when the bump sensor message has been received by may_nav
bool has_bumped
uint32 num_replans
bool replan_failure_occurred


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



(provide :may_nav_msgs/NavigateFeedback "93b607f29b90c517db4c9c6c8eb188e9")


