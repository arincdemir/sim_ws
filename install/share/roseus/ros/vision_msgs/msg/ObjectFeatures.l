;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::ObjectFeatures)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'ObjectFeatures (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::OBJECTFEATURES")
  (make-package "VISION_MSGS::OBJECTFEATURES"))

(in-package "ROS")
;;//! \htmlinclude ObjectFeatures.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vision_msgs::ObjectFeatures
  :super ros::object
  :slots (_header _features ))

(defmethod vision_msgs::ObjectFeatures
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:features __features) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _features __features)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:features
   (&optional __features)
   (if __features (setq _features __features)) _features)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8[] _features
    (* 1    (length _features)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8[] _features
     (write-long (length _features) s)
     (princ _features s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8[] _features
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _features (make-array n :element-type :char))
     (replace _features buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get vision_msgs::ObjectFeatures :md5sum-) "3f44795aaf7a338371ecf63115b2d3b7")
(setf (get vision_msgs::ObjectFeatures :datatype-) "vision_msgs/ObjectFeatures")
(setf (get vision_msgs::ObjectFeatures :definition-)
      "Header header

uint8[] features

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



(provide :vision_msgs/ObjectFeatures "3f44795aaf7a338371ecf63115b2d3b7")


