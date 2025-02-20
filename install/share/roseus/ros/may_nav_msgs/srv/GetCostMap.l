;; Auto-generated. Do not edit!


(when (boundp 'may_nav_msgs::GetCostMap)
  (if (not (find-package "MAY_NAV_MSGS"))
    (make-package "MAY_NAV_MSGS"))
  (shadow 'GetCostMap (find-package "MAY_NAV_MSGS")))
(unless (find-package "MAY_NAV_MSGS::GETCOSTMAP")
  (make-package "MAY_NAV_MSGS::GETCOSTMAP"))
(unless (find-package "MAY_NAV_MSGS::GETCOSTMAPREQUEST")
  (make-package "MAY_NAV_MSGS::GETCOSTMAPREQUEST"))
(unless (find-package "MAY_NAV_MSGS::GETCOSTMAPRESPONSE")
  (make-package "MAY_NAV_MSGS::GETCOSTMAPRESPONSE"))

(in-package "ROS")





(defclass may_nav_msgs::GetCostMapRequest
  :super ros::object
  :slots (_use_dynamic_map ))

(defmethod may_nav_msgs::GetCostMapRequest
  (:init
   (&key
    ((:use_dynamic_map __use_dynamic_map) nil)
    )
   (send-super :init)
   (setq _use_dynamic_map __use_dynamic_map)
   self)
  (:use_dynamic_map
   (&optional (__use_dynamic_map :null))
   (if (not (eq __use_dynamic_map :null)) (setq _use_dynamic_map __use_dynamic_map)) _use_dynamic_map)
  (:serialization-length
   ()
   (+
    ;; bool _use_dynamic_map
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _use_dynamic_map
       (if _use_dynamic_map (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _use_dynamic_map
     (setq _use_dynamic_map (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass may_nav_msgs::GetCostMapResponse
  :super ros::object
  :slots (_cost_map ))

(defmethod may_nav_msgs::GetCostMapResponse
  (:init
   (&key
    ((:cost_map __cost_map) (instance may_nav_msgs::CostMap :init))
    )
   (send-super :init)
   (setq _cost_map __cost_map)
   self)
  (:cost_map
   (&rest __cost_map)
   (if (keywordp (car __cost_map))
       (send* _cost_map __cost_map)
     (progn
       (if __cost_map (setq _cost_map (car __cost_map)))
       _cost_map)))
  (:serialization-length
   ()
   (+
    ;; may_nav_msgs/CostMap _cost_map
    (send _cost_map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; may_nav_msgs/CostMap _cost_map
       (send _cost_map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; may_nav_msgs/CostMap _cost_map
     (send _cost_map :deserialize buf ptr-) (incf ptr- (send _cost_map :serialization-length))
   ;;
   self)
  )

(defclass may_nav_msgs::GetCostMap
  :super ros::object
  :slots ())

(setf (get may_nav_msgs::GetCostMap :md5sum-) "7c7e6394fa7408b42079b9e56f62c547")
(setf (get may_nav_msgs::GetCostMap :datatype-) "may_nav_msgs/GetCostMap")
(setf (get may_nav_msgs::GetCostMap :request) may_nav_msgs::GetCostMapRequest)
(setf (get may_nav_msgs::GetCostMap :response) may_nav_msgs::GetCostMapResponse)

(defmethod may_nav_msgs::GetCostMapRequest
  (:response () (instance may_nav_msgs::GetCostMapResponse :init)))

(setf (get may_nav_msgs::GetCostMapRequest :md5sum-) "7c7e6394fa7408b42079b9e56f62c547")
(setf (get may_nav_msgs::GetCostMapRequest :datatype-) "may_nav_msgs/GetCostMapRequest")
(setf (get may_nav_msgs::GetCostMapRequest :definition-)
      "bool use_dynamic_map
---
may_nav_msgs/CostMap cost_map

================================================================================
MSG: may_nav_msgs/CostMap
# This represents a 2-D cost map, in which each
# cell represents the cost of each position
# as a float

Header header

# MetaData for the map
nav_msgs/MapMetaData info

# The cost map data, in row-major order, starting with (0,0).
# The costs are represented as floats from [0, inf)
float64[] data
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

(setf (get may_nav_msgs::GetCostMapResponse :md5sum-) "7c7e6394fa7408b42079b9e56f62c547")
(setf (get may_nav_msgs::GetCostMapResponse :datatype-) "may_nav_msgs/GetCostMapResponse")
(setf (get may_nav_msgs::GetCostMapResponse :definition-)
      "bool use_dynamic_map
---
may_nav_msgs/CostMap cost_map

================================================================================
MSG: may_nav_msgs/CostMap
# This represents a 2-D cost map, in which each
# cell represents the cost of each position
# as a float

Header header

# MetaData for the map
nav_msgs/MapMetaData info

# The cost map data, in row-major order, starting with (0,0).
# The costs are represented as floats from [0, inf)
float64[] data
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



(provide :may_nav_msgs/GetCostMap "7c7e6394fa7408b42079b9e56f62c547")


