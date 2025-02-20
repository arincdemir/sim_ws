;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::ImageClustering)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'ImageClustering (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::IMAGECLUSTERING")
  (make-package "VISION_MSGS::IMAGECLUSTERING"))

(in-package "ROS")
;;//! \htmlinclude ImageClustering.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vision_msgs::ImageClustering
  :super ros::object
  :slots (_header _cluster _current_cluster_size ))

(defmethod vision_msgs::ImageClustering
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cluster __cluster) "")
    ((:current_cluster_size __current_cluster_size) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _cluster (string __cluster))
   (setq _current_cluster_size (round __current_cluster_size))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cluster
   (&optional __cluster)
   (if __cluster (setq _cluster __cluster)) _cluster)
  (:current_cluster_size
   (&optional __current_cluster_size)
   (if __current_cluster_size (setq _current_cluster_size __current_cluster_size)) _current_cluster_size)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _cluster
    4 (length _cluster)
    ;; uint16 _current_cluster_size
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _cluster
       (write-long (length _cluster) s) (princ _cluster s)
     ;; uint16 _current_cluster_size
       (write-word _current_cluster_size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _cluster
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cluster (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _current_cluster_size
     (setq _current_cluster_size (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get vision_msgs::ImageClustering :md5sum-) "e72c57ecabfb90e37b6f225cc4bdd2dd")
(setf (get vision_msgs::ImageClustering :datatype-) "vision_msgs/ImageClustering")
(setf (get vision_msgs::ImageClustering :definition-)
      "# Header for timestamp / frame info
Header header

string cluster
uint16 current_cluster_size

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



(provide :vision_msgs/ImageClustering "e72c57ecabfb90e37b6f225cc4bdd2dd")


