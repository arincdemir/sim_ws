;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::StringStamped)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'StringStamped (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::STRINGSTAMPED")
  (make-package "GIZMO_MSGS::STRINGSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude StringStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gizmo_msgs::StringStamped
  :super ros::object
  :slots (_header _timems _data ))

(defmethod gizmo_msgs::StringStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timems __timems) "")
    ((:data __data) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _timems (string __timems))
   (setq _data (string __data))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:timems
   (&optional __timems)
   (if __timems (setq _timems __timems)) _timems)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _timems
    4 (length _timems)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _timems
       (write-long (length _timems) s) (princ _timems s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _timems
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _timems (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gizmo_msgs::StringStamped :md5sum-) "bd7517e6aa5a5b34e2b5ef789dca6e29")
(setf (get gizmo_msgs::StringStamped :datatype-) "gizmo_msgs/StringStamped")
(setf (get gizmo_msgs::StringStamped :definition-)
      "Header header
string timems
string data

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

")



(provide :gizmo_msgs/StringStamped "bd7517e6aa5a5b34e2b5ef789dca6e29")


