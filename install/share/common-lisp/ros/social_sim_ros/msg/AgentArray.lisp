; Auto-generated. Do not edit!


(cl:in-package social_sim_ros-msg)


;//! \htmlinclude AgentArray.msg.html

(cl:defclass <AgentArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (agents
    :reader agents
    :initarg :agents
    :type (cl:vector social_sim_ros-msg:Agent)
   :initform (cl:make-array 0 :element-type 'social_sim_ros-msg:Agent :initial-element (cl:make-instance 'social_sim_ros-msg:Agent))))
)

(cl:defclass AgentArray (<AgentArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgentArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgentArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name social_sim_ros-msg:<AgentArray> is deprecated: use social_sim_ros-msg:AgentArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AgentArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:header-val is deprecated.  Use social_sim_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'agents-val :lambda-list '(m))
(cl:defmethod agents-val ((m <AgentArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:agents-val is deprecated.  Use social_sim_ros-msg:agents instead.")
  (agents m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgentArray>) ostream)
  "Serializes a message object of type '<AgentArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'agents))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'agents))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgentArray>) istream)
  "Deserializes a message object of type '<AgentArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'agents) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'agents)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'social_sim_ros-msg:Agent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgentArray>)))
  "Returns string type for a message object of type '<AgentArray>"
  "social_sim_ros/AgentArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgentArray)))
  "Returns string type for a message object of type 'AgentArray"
  "social_sim_ros/AgentArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgentArray>)))
  "Returns md5sum for a message object of type '<AgentArray>"
  "2f3637fe5cf04805aaaa1c9d7f5247a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgentArray)))
  "Returns md5sum for a message object of type 'AgentArray"
  "2f3637fe5cf04805aaaa1c9d7f5247a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgentArray>)))
  "Returns full string definition for message of type '<AgentArray>"
  (cl:format cl:nil "# Message defining an array of all agent entries~%Header          header      # Age of the track~%Agent[]         agents      # Array containing the entries for the N agents in the current environment~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: social_sim_ros/Agent~%# Message defining an entry of a agent~%~%Header      header         # Age of the track~%uint64      track_id       # Unique ID for each agent~%~%# Type of agent~%string                  type~%~%# Pose of the track~%geometry_msgs/Pose      pose~%~%# Velocity of the track~%geometry_msgs/Twist     twist~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgentArray)))
  "Returns full string definition for message of type 'AgentArray"
  (cl:format cl:nil "# Message defining an array of all agent entries~%Header          header      # Age of the track~%Agent[]         agents      # Array containing the entries for the N agents in the current environment~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: social_sim_ros/Agent~%# Message defining an entry of a agent~%~%Header      header         # Age of the track~%uint64      track_id       # Unique ID for each agent~%~%# Type of agent~%string                  type~%~%# Pose of the track~%geometry_msgs/Pose      pose~%~%# Velocity of the track~%geometry_msgs/Twist     twist~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgentArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'agents) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgentArray>))
  "Converts a ROS message object to a list"
  (cl:list 'AgentArray
    (cl:cons ':header (header msg))
    (cl:cons ':agents (agents msg))
))
