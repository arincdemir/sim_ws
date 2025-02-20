;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::Bumpers)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'Bumpers (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::BUMPERS")
  (make-package "GIZMO_MSGS::BUMPERS"))

(in-package "ROS")
;;//! \htmlinclude Bumpers.msg.html
(if (not (find-package "MOBILE_BASE_DRIVER"))
  (ros::roseus-add-msgs "mobile_base_driver"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gizmo_msgs::Bumpers
  :super ros::object
  :slots (_header _bumper ))

(defmethod gizmo_msgs::Bumpers
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bumper __bumper) (let (r) (dotimes (i 3) (push (instance mobile_base_driver::Bumper :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _bumper __bumper)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bumper
   (&rest __bumper)
   (if (keywordp (car __bumper))
       (send* _bumper __bumper)
     (progn
       (if __bumper (setq _bumper (car __bumper)))
       _bumper)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mobile_base_driver/Bumper[3] _bumper
    (apply #'+ (send-all _bumper :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mobile_base_driver/Bumper[3] _bumper
     (dolist (elem _bumper)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mobile_base_driver/Bumper[3] _bumper
   (dotimes (i 3)
     (send (elt _bumper i) :deserialize buf ptr-) (incf ptr- (send (elt _bumper i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get gizmo_msgs::Bumpers :md5sum-) "f40b3136ebc0dbea733a4f8867c82aba")
(setf (get gizmo_msgs::Bumpers :datatype-) "gizmo_msgs/Bumpers")
(setf (get gizmo_msgs::Bumpers :definition-)
      "Header header
mobile_base_driver/Bumper[3] bumper

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
MSG: mobile_base_driver/Bumper
# Provides a bumper stae

# bumper
uint8 RIGHT     = 0
uint8 CENTER    = 1
uint8 LEFT      = 2

# bumper state
uint8 RELEASED = 0
uint8 PRESSED = 1

uint8 bumper
uint8 state

")



(provide :gizmo_msgs/Bumpers "f40b3136ebc0dbea733a4f8867c82aba")


