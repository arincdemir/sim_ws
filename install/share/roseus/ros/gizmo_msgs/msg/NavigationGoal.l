;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::NavigationGoal)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'NavigationGoal (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::NAVIGATIONGOAL")
  (make-package "GIZMO_MSGS::NAVIGATIONGOAL"))

(in-package "ROS")
;;//! \htmlinclude NavigationGoal.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*GO_TO_WAYPOINT*" (find-package "GIZMO_MSGS::NAVIGATIONGOAL"))
(shadow '*GO_TO_WAYPOINT* (find-package "GIZMO_MSGS::NAVIGATIONGOAL"))
(defconstant gizmo_msgs::NavigationGoal::*GO_TO_WAYPOINT* 0)
(intern "*DRIVE_TO_POINT_IN_IMAGE*" (find-package "GIZMO_MSGS::NAVIGATIONGOAL"))
(shadow '*DRIVE_TO_POINT_IN_IMAGE* (find-package "GIZMO_MSGS::NAVIGATIONGOAL"))
(defconstant gizmo_msgs::NavigationGoal::*DRIVE_TO_POINT_IN_IMAGE* 1)
(intern "*FOLLOW_ME*" (find-package "GIZMO_MSGS::NAVIGATIONGOAL"))
(shadow '*FOLLOW_ME* (find-package "GIZMO_MSGS::NAVIGATIONGOAL"))
(defconstant gizmo_msgs::NavigationGoal::*FOLLOW_ME* 2)

(defun gizmo_msgs::NavigationGoal-to-symbol (const)
  (cond
        ((= const 0) 'gizmo_msgs::NavigationGoal::*GO_TO_WAYPOINT*)
        ((= const 1) 'gizmo_msgs::NavigationGoal::*DRIVE_TO_POINT_IN_IMAGE*)
        ((= const 2) 'gizmo_msgs::NavigationGoal::*FOLLOW_ME*)
        (t nil)))

(defclass gizmo_msgs::NavigationGoal
  :super ros::object
  :slots (_nav_type _pose _waypoint_uuid _head_pose _request_id ))

(defmethod gizmo_msgs::NavigationGoal
  (:init
   (&key
    ((:nav_type __nav_type) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:waypoint_uuid __waypoint_uuid) "")
    ((:head_pose __head_pose) (instance gizmo_msgs::HeadPose :init))
    ((:request_id __request_id) "")
    )
   (send-super :init)
   (setq _nav_type (round __nav_type))
   (setq _pose __pose)
   (setq _waypoint_uuid (string __waypoint_uuid))
   (setq _head_pose __head_pose)
   (setq _request_id (string __request_id))
   self)
  (:nav_type
   (&optional __nav_type)
   (if __nav_type (setq _nav_type __nav_type)) _nav_type)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:waypoint_uuid
   (&optional __waypoint_uuid)
   (if __waypoint_uuid (setq _waypoint_uuid __waypoint_uuid)) _waypoint_uuid)
  (:head_pose
   (&rest __head_pose)
   (if (keywordp (car __head_pose))
       (send* _head_pose __head_pose)
     (progn
       (if __head_pose (setq _head_pose (car __head_pose)))
       _head_pose)))
  (:request_id
   (&optional __request_id)
   (if __request_id (setq _request_id __request_id)) _request_id)
  (:serialization-length
   ()
   (+
    ;; byte _nav_type
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; string _waypoint_uuid
    4 (length _waypoint_uuid)
    ;; gizmo_msgs/HeadPose _head_pose
    (send _head_pose :serialization-length)
    ;; string _request_id
    4 (length _request_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _nav_type
       (write-byte _nav_type s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; string _waypoint_uuid
       (write-long (length _waypoint_uuid) s) (princ _waypoint_uuid s)
     ;; gizmo_msgs/HeadPose _head_pose
       (send _head_pose :serialize s)
     ;; string _request_id
       (write-long (length _request_id) s) (princ _request_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _nav_type
     (setq _nav_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _nav_type 127) (setq _nav_type (- _nav_type 256)))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; string _waypoint_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _waypoint_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; gizmo_msgs/HeadPose _head_pose
     (send _head_pose :deserialize buf ptr-) (incf ptr- (send _head_pose :serialization-length))
   ;; string _request_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gizmo_msgs::NavigationGoal :md5sum-) "3c5cee24740976f929b08b2903f932ed")
(setf (get gizmo_msgs::NavigationGoal :datatype-) "gizmo_msgs/NavigationGoal")
(setf (get gizmo_msgs::NavigationGoal :definition-)
      "# This is a message covering all types of navigation
byte GO_TO_WAYPOINT=0
byte DRIVE_TO_POINT_IN_IMAGE=1
byte FOLLOW_ME=2

# Type of navigation
byte nav_type
# Goal of navigation
geometry_msgs/Pose pose
# Waypoint UUID for GO_TO_WAYPOINT
string waypoint_uuid
# Head pose for GO_TO_WAYPOINT
gizmo_msgs/HeadPose head_pose
# Request ID (if from client)
string request_id

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
MSG: gizmo_msgs/HeadPose
float32 pan
float32 tilt

")



(provide :gizmo_msgs/NavigationGoal "3c5cee24740976f929b08b2903f932ed")


