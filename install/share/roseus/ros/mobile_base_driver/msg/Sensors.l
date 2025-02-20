;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::Sensors)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'Sensors (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::SENSORS")
  (make-package "MOBILE_BASE_DRIVER::SENSORS"))

(in-package "ROS")
;;//! \htmlinclude Sensors.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mobile_base_driver::Sensors
  :super ros::object
  :slots (_header _bumper _wheeldrop _touch ))

(defmethod mobile_base_driver::Sensors
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bumper __bumper) (let (r) (dotimes (i 3) (push (instance mobile_base_driver::Bumper :init) r)) r))
    ((:wheeldrop __wheeldrop) (let (r) (dotimes (i 2) (push (instance mobile_base_driver::WheelDrop :init) r)) r))
    ((:touch __touch) (instance mobile_base_driver::Touch :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _bumper __bumper)
   (setq _wheeldrop __wheeldrop)
   (setq _touch __touch)
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
  (:wheeldrop
   (&rest __wheeldrop)
   (if (keywordp (car __wheeldrop))
       (send* _wheeldrop __wheeldrop)
     (progn
       (if __wheeldrop (setq _wheeldrop (car __wheeldrop)))
       _wheeldrop)))
  (:touch
   (&rest __touch)
   (if (keywordp (car __touch))
       (send* _touch __touch)
     (progn
       (if __touch (setq _touch (car __touch)))
       _touch)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; mobile_base_driver/Bumper[3] _bumper
    (apply #'+ (send-all _bumper :serialization-length))
    ;; mobile_base_driver/WheelDrop[2] _wheeldrop
    (apply #'+ (send-all _wheeldrop :serialization-length))
    ;; mobile_base_driver/Touch _touch
    (send _touch :serialization-length)
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
     ;; mobile_base_driver/WheelDrop[2] _wheeldrop
     (dolist (elem _wheeldrop)
       (send elem :serialize s)
       )
     ;; mobile_base_driver/Touch _touch
       (send _touch :serialize s)
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
   ;; mobile_base_driver/WheelDrop[2] _wheeldrop
   (dotimes (i 2)
     (send (elt _wheeldrop i) :deserialize buf ptr-) (incf ptr- (send (elt _wheeldrop i) :serialization-length))
     )
   ;; mobile_base_driver/Touch _touch
     (send _touch :deserialize buf ptr-) (incf ptr- (send _touch :serialization-length))
   ;;
   self)
  )

(setf (get mobile_base_driver::Sensors :md5sum-) "62120da0767c5e0efa3534875705e11a")
(setf (get mobile_base_driver::Sensors :datatype-) "mobile_base_driver/Sensors")
(setf (get mobile_base_driver::Sensors :definition-)
      "# sensor state published at a fixed frequency by the driver

Header header

# XXX: sensor indices in their respective arrays does not necessarily
# reflect what sensor it actually represents
# Each of these messages has its own internal field for that purpose.
# Example: check wheeldrop[0].wheel == WheelDrop.RIGHT and do not rely on the 0
Bumper[3]          bumper
WheelDrop[2]       wheeldrop
Touch              touch

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

================================================================================
MSG: mobile_base_driver/WheelDrop
# Provides a wheeldrop sensor stae

# wheel
uint8 RIGHT = 0
uint8 LEFT  = 1

# wheel state
uint8 RAISED  = 0
uint8 DROPPED = 1

uint8 wheel
uint8 state

================================================================================
MSG: mobile_base_driver/Touch
# true means touched
# [FRONT_LEFT, LEFT, REAR_LEFT, CENTER, FRONT, REAR_RIGHT, RIGHT, FRONT_RIGHT]
bool[] electrodes

")



(provide :mobile_base_driver/Sensors "62120da0767c5e0efa3534875705e11a")


