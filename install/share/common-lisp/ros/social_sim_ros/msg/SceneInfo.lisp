; Auto-generated. Do not edit!


(cl:in-package social_sim_ros-msg)


;//! \htmlinclude SceneInfo.msg.html

(cl:defclass <SceneInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (scenario_name
    :reader scenario_name
    :initarg :scenario_name
    :type cl:string
    :initform "")
   (robot_start_pose
    :reader robot_start_pose
    :initarg :robot_start_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (robot_target_pose
    :reader robot_target_pose
    :initarg :robot_target_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (num_people
    :reader num_people
    :initarg :num_people
    :type cl:fixnum
    :initform 0)
   (num_groups
    :reader num_groups
    :initarg :num_groups
    :type cl:fixnum
    :initform 0)
   (environment
    :reader environment
    :initarg :environment
    :type cl:string
    :initform ""))
)

(cl:defclass SceneInfo (<SceneInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SceneInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SceneInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name social_sim_ros-msg:<SceneInfo> is deprecated: use social_sim_ros-msg:SceneInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SceneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:header-val is deprecated.  Use social_sim_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'scenario_name-val :lambda-list '(m))
(cl:defmethod scenario_name-val ((m <SceneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:scenario_name-val is deprecated.  Use social_sim_ros-msg:scenario_name instead.")
  (scenario_name m))

(cl:ensure-generic-function 'robot_start_pose-val :lambda-list '(m))
(cl:defmethod robot_start_pose-val ((m <SceneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:robot_start_pose-val is deprecated.  Use social_sim_ros-msg:robot_start_pose instead.")
  (robot_start_pose m))

(cl:ensure-generic-function 'robot_target_pose-val :lambda-list '(m))
(cl:defmethod robot_target_pose-val ((m <SceneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:robot_target_pose-val is deprecated.  Use social_sim_ros-msg:robot_target_pose instead.")
  (robot_target_pose m))

(cl:ensure-generic-function 'num_people-val :lambda-list '(m))
(cl:defmethod num_people-val ((m <SceneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:num_people-val is deprecated.  Use social_sim_ros-msg:num_people instead.")
  (num_people m))

(cl:ensure-generic-function 'num_groups-val :lambda-list '(m))
(cl:defmethod num_groups-val ((m <SceneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:num_groups-val is deprecated.  Use social_sim_ros-msg:num_groups instead.")
  (num_groups m))

(cl:ensure-generic-function 'environment-val :lambda-list '(m))
(cl:defmethod environment-val ((m <SceneInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:environment-val is deprecated.  Use social_sim_ros-msg:environment instead.")
  (environment m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SceneInfo>) ostream)
  "Serializes a message object of type '<SceneInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'scenario_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'scenario_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_start_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_target_pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_people)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_people)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_groups)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_groups)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'environment))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'environment))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SceneInfo>) istream)
  "Deserializes a message object of type '<SceneInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'scenario_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'scenario_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_start_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_target_pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_people)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_people)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_groups)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_groups)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'environment) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'environment) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SceneInfo>)))
  "Returns string type for a message object of type '<SceneInfo>"
  "social_sim_ros/SceneInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SceneInfo)))
  "Returns string type for a message object of type 'SceneInfo"
  "social_sim_ros/SceneInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SceneInfo>)))
  "Returns md5sum for a message object of type '<SceneInfo>"
  "5da53b93f7c64fcba0abe30ec331516b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SceneInfo)))
  "Returns md5sum for a message object of type 'SceneInfo"
  "5da53b93f7c64fcba0abe30ec331516b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SceneInfo>)))
  "Returns full string definition for message of type '<SceneInfo>"
  (cl:format cl:nil "# Message containing the parameters for Unity Scene trials~%~%Header                  header~%string                  scenario_name        # Which scene we are running~%geometry_msgs/Pose      robot_start_pose     # Pose of robot start location~%geometry_msgs/Pose      robot_target_pose    # Pose of robot target location~%uint16                  num_people           # Number of people in scene~%uint16                  num_groups           # Number of groups in scene~%string                  environment          # Which environment~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SceneInfo)))
  "Returns full string definition for message of type 'SceneInfo"
  (cl:format cl:nil "# Message containing the parameters for Unity Scene trials~%~%Header                  header~%string                  scenario_name        # Which scene we are running~%geometry_msgs/Pose      robot_start_pose     # Pose of robot start location~%geometry_msgs/Pose      robot_target_pose    # Pose of robot target location~%uint16                  num_people           # Number of people in scene~%uint16                  num_groups           # Number of groups in scene~%string                  environment          # Which environment~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SceneInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'scenario_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_start_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_target_pose))
     2
     2
     4 (cl:length (cl:slot-value msg 'environment))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SceneInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SceneInfo
    (cl:cons ':header (header msg))
    (cl:cons ':scenario_name (scenario_name msg))
    (cl:cons ':robot_start_pose (robot_start_pose msg))
    (cl:cons ':robot_target_pose (robot_target_pose msg))
    (cl:cons ':num_people (num_people msg))
    (cl:cons ':num_groups (num_groups msg))
    (cl:cons ':environment (environment msg))
))
