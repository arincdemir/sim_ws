; Auto-generated. Do not edit!


(cl:in-package social_sim_ros-msg)


;//! \htmlinclude PersonEntryArray.msg.html

(cl:defclass <PersonEntryArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (people
    :reader people
    :initarg :people
    :type (cl:vector social_sim_ros-msg:PersonEntry)
   :initform (cl:make-array 0 :element-type 'social_sim_ros-msg:PersonEntry :initial-element (cl:make-instance 'social_sim_ros-msg:PersonEntry))))
)

(cl:defclass PersonEntryArray (<PersonEntryArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonEntryArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonEntryArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name social_sim_ros-msg:<PersonEntryArray> is deprecated: use social_sim_ros-msg:PersonEntryArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PersonEntryArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:header-val is deprecated.  Use social_sim_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'people-val :lambda-list '(m))
(cl:defmethod people-val ((m <PersonEntryArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:people-val is deprecated.  Use social_sim_ros-msg:people instead.")
  (people m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonEntryArray>) ostream)
  "Serializes a message object of type '<PersonEntryArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'people))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'people))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonEntryArray>) istream)
  "Deserializes a message object of type '<PersonEntryArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'people) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'people)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'social_sim_ros-msg:PersonEntry))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonEntryArray>)))
  "Returns string type for a message object of type '<PersonEntryArray>"
  "social_sim_ros/PersonEntryArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonEntryArray)))
  "Returns string type for a message object of type 'PersonEntryArray"
  "social_sim_ros/PersonEntryArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonEntryArray>)))
  "Returns md5sum for a message object of type '<PersonEntryArray>"
  "8348034da65c22b0b7c89265fa8ea1ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonEntryArray)))
  "Returns md5sum for a message object of type 'PersonEntryArray"
  "8348034da65c22b0b7c89265fa8ea1ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonEntryArray>)))
  "Returns full string definition for message of type '<PersonEntryArray>"
  (cl:format cl:nil "# Message defining an array of all people entries~%~%Header          header      # Age of the track~%PersonEntry[]   people      # Array containing the entries for the N tracked persons~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: social_sim_ros/PersonEntry~%# Message defining an entry of a person~%~%Header      header         # Age of the track~%uint64      track_id       # Unique ID for each person~%~%# The following fields are extracted from the Kalman state x and its covariance C~%~%# Pose of the track~%geometry_msgs/Pose      pose~%~%# Velocity of the track~%geometry_msgs/Twist     twist~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonEntryArray)))
  "Returns full string definition for message of type 'PersonEntryArray"
  (cl:format cl:nil "# Message defining an array of all people entries~%~%Header          header      # Age of the track~%PersonEntry[]   people      # Array containing the entries for the N tracked persons~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: social_sim_ros/PersonEntry~%# Message defining an entry of a person~%~%Header      header         # Age of the track~%uint64      track_id       # Unique ID for each person~%~%# The following fields are extracted from the Kalman state x and its covariance C~%~%# Pose of the track~%geometry_msgs/Pose      pose~%~%# Velocity of the track~%geometry_msgs/Twist     twist~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonEntryArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'people) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonEntryArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonEntryArray
    (cl:cons ':header (header msg))
    (cl:cons ':people (people msg))
))
