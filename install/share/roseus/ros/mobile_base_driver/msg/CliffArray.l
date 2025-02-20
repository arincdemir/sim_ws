;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::CliffArray)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'CliffArray (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::CLIFFARRAY")
  (make-package "MOBILE_BASE_DRIVER::CLIFFARRAY"))

(in-package "ROS")
;;//! \htmlinclude CliffArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mobile_base_driver::CliffArray
  :super ros::object
  :slots (_header _cliff ))

(defmethod mobile_base_driver::CliffArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cliff __cliff) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _cliff __cliff)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cliff
   (&rest __cliff)
   (if (keywordp (car __cliff))
       (send* _cliff __cliff)
     (progn
       (if __cliff (setq _cliff (car __cliff)))
       _cliff)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mobile_base_driver/CliffSensor[] _cliff
    (apply #'+ (send-all _cliff :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; mobile_base_driver/CliffSensor[] _cliff
     (write-long (length _cliff) s)
     (dolist (elem _cliff)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; mobile_base_driver/CliffSensor[] _cliff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cliff (let (r) (dotimes (i n) (push (instance mobile_base_driver::CliffSensor :init) r)) r))
     (dolist (elem- _cliff)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mobile_base_driver::CliffArray :md5sum-) "6fd810cb276829214052d0f48967ff86")
(setf (get mobile_base_driver::CliffArray :datatype-) "mobile_base_driver/CliffArray")
(setf (get mobile_base_driver::CliffArray :definition-)
      "Header header

# XXX: sensor indices in their respective arrays does not necessarily
# reflect what sensor it actually represents
# Each of these messages has its own internal field for that purpose.
# Example: check wheeldrop[0].wheel == WheelDrop.RIGHT and do not rely on the 0
CliffSensor[] cliff

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
MSG: mobile_base_driver/CliffSensor
# Provides a cliff sensor reading
# This message is generated whenever a particular cliff sensor signals that the
# robot approaches or moves away from a cliff.

# cliff sensor
uint8 RIGHT     = 0
uint8 MIDRIGHT  = 1
uint8 MIDLEFT   = 2
uint8 LEFT      = 3
uint8 BACKLEFT  = 4
uint8 BACKRIGHT = 5

# cliff sensor state
uint8 FLOOR = 0
uint8 CLIFF = 1

uint8 sensor
uint8 state

# distance to floor when cliff was detected
float32 distance

# return rate from the vl6180x, rear cliff sensors only
float32 return_rate
")



(provide :mobile_base_driver/CliffArray "6fd810cb276829214052d0f48967ff86")


