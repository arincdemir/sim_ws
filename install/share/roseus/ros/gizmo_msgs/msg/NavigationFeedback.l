;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::NavigationFeedback)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'NavigationFeedback (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK")
  (make-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude NavigationFeedback.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*GO_TO_WAYPOINT*" (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(shadow '*GO_TO_WAYPOINT* (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(defconstant gizmo_msgs::NavigationFeedback::*GO_TO_WAYPOINT* 0)
(intern "*DRIVE_TO_POINT_IN_IMAGE*" (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(shadow '*DRIVE_TO_POINT_IN_IMAGE* (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(defconstant gizmo_msgs::NavigationFeedback::*DRIVE_TO_POINT_IN_IMAGE* 1)
(intern "*FOLLOW_ME*" (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(shadow '*FOLLOW_ME* (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(defconstant gizmo_msgs::NavigationFeedback::*FOLLOW_ME* 2)
(intern "*NAV_SUCCESS*" (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(shadow '*NAV_SUCCESS* (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(defconstant gizmo_msgs::NavigationFeedback::*NAV_SUCCESS* 0)
(intern "*NAV_PLANNING*" (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(shadow '*NAV_PLANNING* (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(defconstant gizmo_msgs::NavigationFeedback::*NAV_PLANNING* 1)
(intern "*NAV_MOVING*" (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(shadow '*NAV_MOVING* (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(defconstant gizmo_msgs::NavigationFeedback::*NAV_MOVING* 2)
(intern "*NAV_ERROR*" (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(shadow '*NAV_ERROR* (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(defconstant gizmo_msgs::NavigationFeedback::*NAV_ERROR* 3)
(intern "*NAV_CANCELED*" (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(shadow '*NAV_CANCELED* (find-package "GIZMO_MSGS::NAVIGATIONFEEDBACK"))
(defconstant gizmo_msgs::NavigationFeedback::*NAV_CANCELED* 4)

(defun gizmo_msgs::NavigationFeedback-to-symbol (const)
  (cond
        ((= const 0) 'gizmo_msgs::NavigationFeedback::*GO_TO_WAYPOINT*)
        ((= const 1) 'gizmo_msgs::NavigationFeedback::*DRIVE_TO_POINT_IN_IMAGE*)
        ((= const 2) 'gizmo_msgs::NavigationFeedback::*FOLLOW_ME*)
        ((= const 0) 'gizmo_msgs::NavigationFeedback::*NAV_SUCCESS*)
        ((= const 1) 'gizmo_msgs::NavigationFeedback::*NAV_PLANNING*)
        ((= const 2) 'gizmo_msgs::NavigationFeedback::*NAV_MOVING*)
        ((= const 3) 'gizmo_msgs::NavigationFeedback::*NAV_ERROR*)
        ((= const 4) 'gizmo_msgs::NavigationFeedback::*NAV_CANCELED*)
        (t nil)))

(defclass gizmo_msgs::NavigationFeedback
  :super ros::object
  :slots (_status _nav_type _request_id _error _waypoint_uuid _goal ))

(defmethod gizmo_msgs::NavigationFeedback
  (:init
   (&key
    ((:status __status) 0)
    ((:nav_type __nav_type) 0)
    ((:request_id __request_id) "")
    ((:error __error) "")
    ((:waypoint_uuid __waypoint_uuid) "")
    ((:goal __goal) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _nav_type (round __nav_type))
   (setq _request_id (string __request_id))
   (setq _error (string __error))
   (setq _waypoint_uuid (string __waypoint_uuid))
   (setq _goal __goal)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:nav_type
   (&optional __nav_type)
   (if __nav_type (setq _nav_type __nav_type)) _nav_type)
  (:request_id
   (&optional __request_id)
   (if __request_id (setq _request_id __request_id)) _request_id)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:waypoint_uuid
   (&optional __waypoint_uuid)
   (if __waypoint_uuid (setq _waypoint_uuid __waypoint_uuid)) _waypoint_uuid)
  (:goal
   (&rest __goal)
   (if (keywordp (car __goal))
       (send* _goal __goal)
     (progn
       (if __goal (setq _goal (car __goal)))
       _goal)))
  (:serialization-length
   ()
   (+
    ;; byte _status
    1
    ;; byte _nav_type
    1
    ;; string _request_id
    4 (length _request_id)
    ;; string _error
    4 (length _error)
    ;; string _waypoint_uuid
    4 (length _waypoint_uuid)
    ;; geometry_msgs/Pose _goal
    (send _goal :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte _status
       (write-byte _status s)
     ;; byte _nav_type
       (write-byte _nav_type s)
     ;; string _request_id
       (write-long (length _request_id) s) (princ _request_id s)
     ;; string _error
       (write-long (length _error) s) (princ _error s)
     ;; string _waypoint_uuid
       (write-long (length _waypoint_uuid) s) (princ _waypoint_uuid s)
     ;; geometry_msgs/Pose _goal
       (send _goal :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _status 127) (setq _status (- _status 256)))
   ;; byte _nav_type
     (setq _nav_type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _nav_type 127) (setq _nav_type (- _nav_type 256)))
   ;; string _request_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _waypoint_uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _waypoint_uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _goal
     (send _goal :deserialize buf ptr-) (incf ptr- (send _goal :serialization-length))
   ;;
   self)
  )

(setf (get gizmo_msgs::NavigationFeedback :md5sum-) "a66d98bd7814656a690ab6824d61cdf4")
(setf (get gizmo_msgs::NavigationFeedback :datatype-) "gizmo_msgs/NavigationFeedback")
(setf (get gizmo_msgs::NavigationFeedback :definition-)
      "byte GO_TO_WAYPOINT=0
byte DRIVE_TO_POINT_IN_IMAGE=1
byte FOLLOW_ME=2

byte NAV_SUCCESS=0
byte NAV_PLANNING=1
byte NAV_MOVING=2
byte NAV_ERROR=3
byte NAV_CANCELED=4

# NAV_ status
byte status
# Type of navigation
byte nav_type
# Request ID if from client
string request_id
# error string if NAV_ERROR
string error
# waypoint UUID if GO_TO_WAYPOINT
string waypoint_uuid
# Goal pose
geometry_msgs/Pose goal

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



(provide :gizmo_msgs/NavigationFeedback "a66d98bd7814656a690ab6824d61cdf4")


