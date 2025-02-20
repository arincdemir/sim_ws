; Auto-generated. Do not edit!


(cl:in-package may_nav_msgs-srv)


;//! \htmlinclude GetCostMap-request.msg.html

(cl:defclass <GetCostMap-request> (roslisp-msg-protocol:ros-message)
  ((use_dynamic_map
    :reader use_dynamic_map
    :initarg :use_dynamic_map
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetCostMap-request (<GetCostMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCostMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCostMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name may_nav_msgs-srv:<GetCostMap-request> is deprecated: use may_nav_msgs-srv:GetCostMap-request instead.")))

(cl:ensure-generic-function 'use_dynamic_map-val :lambda-list '(m))
(cl:defmethod use_dynamic_map-val ((m <GetCostMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader may_nav_msgs-srv:use_dynamic_map-val is deprecated.  Use may_nav_msgs-srv:use_dynamic_map instead.")
  (use_dynamic_map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCostMap-request>) ostream)
  "Serializes a message object of type '<GetCostMap-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'use_dynamic_map) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCostMap-request>) istream)
  "Deserializes a message object of type '<GetCostMap-request>"
    (cl:setf (cl:slot-value msg 'use_dynamic_map) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCostMap-request>)))
  "Returns string type for a service object of type '<GetCostMap-request>"
  "may_nav_msgs/GetCostMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCostMap-request)))
  "Returns string type for a service object of type 'GetCostMap-request"
  "may_nav_msgs/GetCostMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCostMap-request>)))
  "Returns md5sum for a message object of type '<GetCostMap-request>"
  "7c7e6394fa7408b42079b9e56f62c547")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCostMap-request)))
  "Returns md5sum for a message object of type 'GetCostMap-request"
  "7c7e6394fa7408b42079b9e56f62c547")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCostMap-request>)))
  "Returns full string definition for message of type '<GetCostMap-request>"
  (cl:format cl:nil "bool use_dynamic_map~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCostMap-request)))
  "Returns full string definition for message of type 'GetCostMap-request"
  (cl:format cl:nil "bool use_dynamic_map~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCostMap-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCostMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCostMap-request
    (cl:cons ':use_dynamic_map (use_dynamic_map msg))
))
;//! \htmlinclude GetCostMap-response.msg.html

(cl:defclass <GetCostMap-response> (roslisp-msg-protocol:ros-message)
  ((cost_map
    :reader cost_map
    :initarg :cost_map
    :type may_nav_msgs-msg:CostMap
    :initform (cl:make-instance 'may_nav_msgs-msg:CostMap)))
)

(cl:defclass GetCostMap-response (<GetCostMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetCostMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetCostMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name may_nav_msgs-srv:<GetCostMap-response> is deprecated: use may_nav_msgs-srv:GetCostMap-response instead.")))

(cl:ensure-generic-function 'cost_map-val :lambda-list '(m))
(cl:defmethod cost_map-val ((m <GetCostMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader may_nav_msgs-srv:cost_map-val is deprecated.  Use may_nav_msgs-srv:cost_map instead.")
  (cost_map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetCostMap-response>) ostream)
  "Serializes a message object of type '<GetCostMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cost_map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetCostMap-response>) istream)
  "Deserializes a message object of type '<GetCostMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cost_map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetCostMap-response>)))
  "Returns string type for a service object of type '<GetCostMap-response>"
  "may_nav_msgs/GetCostMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCostMap-response)))
  "Returns string type for a service object of type 'GetCostMap-response"
  "may_nav_msgs/GetCostMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetCostMap-response>)))
  "Returns md5sum for a message object of type '<GetCostMap-response>"
  "7c7e6394fa7408b42079b9e56f62c547")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetCostMap-response)))
  "Returns md5sum for a message object of type 'GetCostMap-response"
  "7c7e6394fa7408b42079b9e56f62c547")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetCostMap-response>)))
  "Returns full string definition for message of type '<GetCostMap-response>"
  (cl:format cl:nil "may_nav_msgs/CostMap cost_map~%~%================================================================================~%MSG: may_nav_msgs/CostMap~%# This represents a 2-D cost map, in which each~%# cell represents the cost of each position~%# as a float~%~%Header header~%~%# MetaData for the map~%nav_msgs/MapMetaData info~%~%# The cost map data, in row-major order, starting with (0,0).~%# The costs are represented as floats from [0, inf)~%float64[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetCostMap-response)))
  "Returns full string definition for message of type 'GetCostMap-response"
  (cl:format cl:nil "may_nav_msgs/CostMap cost_map~%~%================================================================================~%MSG: may_nav_msgs/CostMap~%# This represents a 2-D cost map, in which each~%# cell represents the cost of each position~%# as a float~%~%Header header~%~%# MetaData for the map~%nav_msgs/MapMetaData info~%~%# The cost map data, in row-major order, starting with (0,0).~%# The costs are represented as floats from [0, inf)~%float64[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: nav_msgs/MapMetaData~%# This hold basic information about the characterists of the OccupancyGrid~%~%# The time at which the map was loaded~%time map_load_time~%# The map resolution [m/cell]~%float32 resolution~%# Map width [cells]~%uint32 width~%# Map height [cells]~%uint32 height~%# The origin of the map [m, m, rad].  This is the real-world pose of the~%# cell (0,0) in the map.~%geometry_msgs/Pose origin~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetCostMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cost_map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetCostMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetCostMap-response
    (cl:cons ':cost_map (cost_map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetCostMap)))
  'GetCostMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetCostMap)))
  'GetCostMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetCostMap)))
  "Returns string type for a service object of type '<GetCostMap>"
  "may_nav_msgs/GetCostMap")