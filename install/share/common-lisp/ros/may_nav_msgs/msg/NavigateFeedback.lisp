; Auto-generated. Do not edit!


(cl:in-package may_nav_msgs-msg)


;//! \htmlinclude NavigateFeedback.msg.html

(cl:defclass <NavigateFeedback> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (state_machine_state
    :reader state_machine_state
    :initarg :state_machine_state
    :type cl:string
    :initform "")
   (target_pose
    :reader target_pose
    :initarg :target_pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (cmd_vel
    :reader cmd_vel
    :initarg :cmd_vel
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (has_bumped
    :reader has_bumped
    :initarg :has_bumped
    :type cl:boolean
    :initform cl:nil)
   (num_replans
    :reader num_replans
    :initarg :num_replans
    :type cl:integer
    :initform 0)
   (replan_failure_occurred
    :reader replan_failure_occurred
    :initarg :replan_failure_occurred
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NavigateFeedback (<NavigateFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigateFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigateFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name may_nav_msgs-msg:<NavigateFeedback> is deprecated: use may_nav_msgs-msg:NavigateFeedback instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <NavigateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader may_nav_msgs-msg:state-val is deprecated.  Use may_nav_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'state_machine_state-val :lambda-list '(m))
(cl:defmethod state_machine_state-val ((m <NavigateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader may_nav_msgs-msg:state_machine_state-val is deprecated.  Use may_nav_msgs-msg:state_machine_state instead.")
  (state_machine_state m))

(cl:ensure-generic-function 'target_pose-val :lambda-list '(m))
(cl:defmethod target_pose-val ((m <NavigateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader may_nav_msgs-msg:target_pose-val is deprecated.  Use may_nav_msgs-msg:target_pose instead.")
  (target_pose m))

(cl:ensure-generic-function 'cmd_vel-val :lambda-list '(m))
(cl:defmethod cmd_vel-val ((m <NavigateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader may_nav_msgs-msg:cmd_vel-val is deprecated.  Use may_nav_msgs-msg:cmd_vel instead.")
  (cmd_vel m))

(cl:ensure-generic-function 'has_bumped-val :lambda-list '(m))
(cl:defmethod has_bumped-val ((m <NavigateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader may_nav_msgs-msg:has_bumped-val is deprecated.  Use may_nav_msgs-msg:has_bumped instead.")
  (has_bumped m))

(cl:ensure-generic-function 'num_replans-val :lambda-list '(m))
(cl:defmethod num_replans-val ((m <NavigateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader may_nav_msgs-msg:num_replans-val is deprecated.  Use may_nav_msgs-msg:num_replans instead.")
  (num_replans m))

(cl:ensure-generic-function 'replan_failure_occurred-val :lambda-list '(m))
(cl:defmethod replan_failure_occurred-val ((m <NavigateFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader may_nav_msgs-msg:replan_failure_occurred-val is deprecated.  Use may_nav_msgs-msg:replan_failure_occurred instead.")
  (replan_failure_occurred m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigateFeedback>) ostream)
  "Serializes a message object of type '<NavigateFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state_machine_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state_machine_state))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd_vel) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_bumped) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_replans)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_replans)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_replans)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_replans)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'replan_failure_occurred) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigateFeedback>) istream)
  "Deserializes a message object of type '<NavigateFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state_machine_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state_machine_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd_vel) istream)
    (cl:setf (cl:slot-value msg 'has_bumped) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_replans)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_replans)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_replans)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_replans)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'replan_failure_occurred) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigateFeedback>)))
  "Returns string type for a message object of type '<NavigateFeedback>"
  "may_nav_msgs/NavigateFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigateFeedback)))
  "Returns string type for a message object of type 'NavigateFeedback"
  "may_nav_msgs/NavigateFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigateFeedback>)))
  "Returns md5sum for a message object of type '<NavigateFeedback>"
  "93b607f29b90c517db4c9c6c8eb188e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigateFeedback)))
  "Returns md5sum for a message object of type 'NavigateFeedback"
  "93b607f29b90c517db4c9c6c8eb188e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigateFeedback>)))
  "Returns full string definition for message of type '<NavigateFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#State fed back to ios (Controlling, Planning, etc)~%string state~%#Current state of may_nav's state machine~%string state_machine_state~%~%#target pose is the target_pose set by the local planner~%geometry_msgs/Pose2D target_pose~%geometry_msgs/Pose2D cmd_vel~%#has_bumped is set to true when the bump sensor message has been received by may_nav~%bool has_bumped~%uint32 num_replans~%bool replan_failure_occurred~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigateFeedback)))
  "Returns full string definition for message of type 'NavigateFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#State fed back to ios (Controlling, Planning, etc)~%string state~%#Current state of may_nav's state machine~%string state_machine_state~%~%#target pose is the target_pose set by the local planner~%geometry_msgs/Pose2D target_pose~%geometry_msgs/Pose2D cmd_vel~%#has_bumped is set to true when the bump sensor message has been received by may_nav~%bool has_bumped~%uint32 num_replans~%bool replan_failure_occurred~%~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigateFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'state_machine_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd_vel))
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigateFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigateFeedback
    (cl:cons ':state (state msg))
    (cl:cons ':state_machine_state (state_machine_state msg))
    (cl:cons ':target_pose (target_pose msg))
    (cl:cons ':cmd_vel (cmd_vel msg))
    (cl:cons ':has_bumped (has_bumped msg))
    (cl:cons ':num_replans (num_replans msg))
    (cl:cons ':replan_failure_occurred (replan_failure_occurred msg))
))
