;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::CompressedOccupancyGrid)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'CompressedOccupancyGrid (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::COMPRESSEDOCCUPANCYGRID")
  (make-package "GIZMO_MSGS::COMPRESSEDOCCUPANCYGRID"))

(in-package "ROS")
;;//! \htmlinclude CompressedOccupancyGrid.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gizmo_msgs::CompressedOccupancyGrid
  :super ros::object
  :slots (_header _info _data ))

(defmethod gizmo_msgs::CompressedOccupancyGrid
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:info __info) (instance nav_msgs::MapMetaData :init))
    ((:data __data) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _info __info)
   (setq _data (string __data))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; nav_msgs/MapMetaData _info
    (send _info :serialization-length)
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; nav_msgs/MapMetaData _info
       (send _info :serialize s)
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; nav_msgs/MapMetaData _info
     (send _info :deserialize buf ptr-) (incf ptr- (send _info :serialization-length))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gizmo_msgs::CompressedOccupancyGrid :md5sum-) "8bb76280aadaaa162ab38f6d290b053d")
(setf (get gizmo_msgs::CompressedOccupancyGrid :datatype-) "gizmo_msgs/CompressedOccupancyGrid")
(setf (get gizmo_msgs::CompressedOccupancyGrid :definition-)
      "# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header

#MetaData for the map
nav_msgs/MapMetaData info

# This data is a png8 image file as it appears on disk encoded as a base64 string.
# When uncompressed the pixel array is in row-major order, starting with (0,0).
# Currently, unknown is 205, free is 255, and occupied is 0.
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

================================================================================
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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



(provide :gizmo_msgs/CompressedOccupancyGrid "8bb76280aadaaa162ab38f6d290b053d")


