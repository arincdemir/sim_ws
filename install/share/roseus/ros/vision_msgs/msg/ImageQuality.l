;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::ImageQuality)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'ImageQuality (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::IMAGEQUALITY")
  (make-package "VISION_MSGS::IMAGEQUALITY"))

(in-package "ROS")
;;//! \htmlinclude ImageQuality.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vision_msgs::ImageQuality
  :super ros::object
  :slots (_header _brightness _sharpness _brightness_delta _sharpness_delta ))

(defmethod vision_msgs::ImageQuality
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:brightness __brightness) 0.0)
    ((:sharpness __sharpness) 0.0)
    ((:brightness_delta __brightness_delta) 0.0)
    ((:sharpness_delta __sharpness_delta) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _brightness (float __brightness))
   (setq _sharpness (float __sharpness))
   (setq _brightness_delta (float __brightness_delta))
   (setq _sharpness_delta (float __sharpness_delta))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:brightness
   (&optional __brightness)
   (if __brightness (setq _brightness __brightness)) _brightness)
  (:sharpness
   (&optional __sharpness)
   (if __sharpness (setq _sharpness __sharpness)) _sharpness)
  (:brightness_delta
   (&optional __brightness_delta)
   (if __brightness_delta (setq _brightness_delta __brightness_delta)) _brightness_delta)
  (:sharpness_delta
   (&optional __sharpness_delta)
   (if __sharpness_delta (setq _sharpness_delta __sharpness_delta)) _sharpness_delta)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _brightness
    4
    ;; float32 _sharpness
    4
    ;; float32 _brightness_delta
    4
    ;; float32 _sharpness_delta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _brightness
       (sys::poke _brightness (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sharpness
       (sys::poke _sharpness (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brightness_delta
       (sys::poke _brightness_delta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sharpness_delta
       (sys::poke _sharpness_delta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _brightness
     (setq _brightness (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sharpness
     (setq _sharpness (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brightness_delta
     (setq _brightness_delta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sharpness_delta
     (setq _sharpness_delta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vision_msgs::ImageQuality :md5sum-) "e3839252c986c29ecf4e52d533209c6b")
(setf (get vision_msgs::ImageQuality :datatype-) "vision_msgs/ImageQuality")
(setf (get vision_msgs::ImageQuality :definition-)
      "# Header for timestamp info
Header header
float32 brightness
float32 sharpness
float32 brightness_delta
float32 sharpness_delta

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



(provide :vision_msgs/ImageQuality "e3839252c986c29ecf4e52d533209c6b")


