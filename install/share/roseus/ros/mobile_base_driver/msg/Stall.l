;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::Stall)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'Stall (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::STALL")
  (make-package "MOBILE_BASE_DRIVER::STALL"))

(in-package "ROS")
;;//! \htmlinclude Stall.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mobile_base_driver::Stall
  :super ros::object
  :slots (_header _motor ))

(defmethod mobile_base_driver::Stall
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:motor __motor) (let (r) (dotimes (i 5) (push (instance mobile_base_driver::Motor :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _motor __motor)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:motor
   (&rest __motor)
   (if (keywordp (car __motor))
       (send* _motor __motor)
     (progn
       (if __motor (setq _motor (car __motor)))
       _motor)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mobile_base_driver/Motor[5] _motor
    (apply #'+ (send-all _motor :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mobile_base_driver/Motor[5] _motor
     (dolist (elem _motor)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mobile_base_driver/Motor[5] _motor
   (dotimes (i 5)
     (send (elt _motor i) :deserialize buf ptr-) (incf ptr- (send (elt _motor i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get mobile_base_driver::Stall :md5sum-) "6519e11145a7e7fc40fd5a90d611dcc9")
(setf (get mobile_base_driver::Stall :datatype-) "mobile_base_driver/Stall")
(setf (get mobile_base_driver::Stall :definition-)
      "# Motor Stall state published at a fixed frequency by the driver

Header header

# XXX: wheel indices in their respective arrays does not necessarily
# reflect what wheel it actually represents
# Each of these messages has its own internal field for that purpose.
# Example: check motor[0].motor == Motor.RIGHTWHEEL and do not rely on the 0

Motor[5] motor

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
MSG: mobile_base_driver/Motor
# Provides a motor state

# motor
uint8 RIGHTWHEEL     = 0
uint8 LEFTWHEEL      = 1
uint8 PAN            = 2
uint8 TILT           = 3
uint8 EYES           = 4

bool  stalled
bool  pushed
")



(provide :mobile_base_driver/Stall "6519e11145a7e7fc40fd5a90d611dcc9")


