; Auto-generated. Do not edit!


(cl:in-package social_sim_ros-msg)


;//! \htmlinclude TrialStart.msg.html

(cl:defclass <TrialStart> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trial_name
    :reader trial_name
    :initarg :trial_name
    :type cl:string
    :initform "")
   (trial_number
    :reader trial_number
    :initarg :trial_number
    :type cl:fixnum
    :initform 0)
   (spawn
    :reader spawn
    :initarg :spawn
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (target
    :reader target
    :initarg :target
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (people
    :reader people
    :initarg :people
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (time_limit
    :reader time_limit
    :initarg :time_limit
    :type cl:float
    :initform 0.0))
)

(cl:defclass TrialStart (<TrialStart>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrialStart>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrialStart)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name social_sim_ros-msg:<TrialStart> is deprecated: use social_sim_ros-msg:TrialStart instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrialStart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:header-val is deprecated.  Use social_sim_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trial_name-val :lambda-list '(m))
(cl:defmethod trial_name-val ((m <TrialStart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:trial_name-val is deprecated.  Use social_sim_ros-msg:trial_name instead.")
  (trial_name m))

(cl:ensure-generic-function 'trial_number-val :lambda-list '(m))
(cl:defmethod trial_number-val ((m <TrialStart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:trial_number-val is deprecated.  Use social_sim_ros-msg:trial_number instead.")
  (trial_number m))

(cl:ensure-generic-function 'spawn-val :lambda-list '(m))
(cl:defmethod spawn-val ((m <TrialStart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:spawn-val is deprecated.  Use social_sim_ros-msg:spawn instead.")
  (spawn m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <TrialStart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:target-val is deprecated.  Use social_sim_ros-msg:target instead.")
  (target m))

(cl:ensure-generic-function 'people-val :lambda-list '(m))
(cl:defmethod people-val ((m <TrialStart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:people-val is deprecated.  Use social_sim_ros-msg:people instead.")
  (people m))

(cl:ensure-generic-function 'time_limit-val :lambda-list '(m))
(cl:defmethod time_limit-val ((m <TrialStart>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:time_limit-val is deprecated.  Use social_sim_ros-msg:time_limit instead.")
  (time_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrialStart>) ostream)
  "Serializes a message object of type '<TrialStart>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'trial_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'trial_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trial_number)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'spawn) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'people) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrialStart>) istream)
  "Deserializes a message object of type '<TrialStart>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trial_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'trial_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trial_number)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'spawn) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'people) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_limit) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrialStart>)))
  "Returns string type for a message object of type '<TrialStart>"
  "social_sim_ros/TrialStart")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrialStart)))
  "Returns string type for a message object of type 'TrialStart"
  "social_sim_ros/TrialStart")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrialStart>)))
  "Returns md5sum for a message object of type '<TrialStart>"
  "8977fce884e0099b26d82cb11060e412")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrialStart)))
  "Returns md5sum for a message object of type 'TrialStart"
  "8977fce884e0099b26d82cb11060e412")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrialStart>)))
  "Returns full string definition for message of type '<TrialStart>"
  (cl:format cl:nil "# Message containing the parameters to start an A-B navigation trial~%~%Header                  header~%string                  trial_name      # Which trial name are we running~%uint16                  trial_number    # Which trial number are we running~%geometry_msgs/Pose      spawn           # Robot spawn position~%geometry_msgs/Pose      target          # Robot target position~%geometry_msgs/PoseArray people          # People spawn positions~%float64                 time_limit      # Time limit for the trial (in seconds)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrialStart)))
  "Returns full string definition for message of type 'TrialStart"
  (cl:format cl:nil "# Message containing the parameters to start an A-B navigation trial~%~%Header                  header~%string                  trial_name      # Which trial name are we running~%uint16                  trial_number    # Which trial number are we running~%geometry_msgs/Pose      spawn           # Robot spawn position~%geometry_msgs/Pose      target          # Robot target position~%geometry_msgs/PoseArray people          # People spawn positions~%float64                 time_limit      # Time limit for the trial (in seconds)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrialStart>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'trial_name))
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'spawn))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'people))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrialStart>))
  "Converts a ROS message object to a list"
  (cl:list 'TrialStart
    (cl:cons ':header (header msg))
    (cl:cons ':trial_name (trial_name msg))
    (cl:cons ':trial_number (trial_number msg))
    (cl:cons ':spawn (spawn msg))
    (cl:cons ':target (target msg))
    (cl:cons ':people (people msg))
    (cl:cons ':time_limit (time_limit msg))
))
