; Auto-generated. Do not edit!


(cl:in-package social_sim_ros-msg)


;//! \htmlinclude TrialInfo.msg.html

(cl:defclass <TrialInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (trial_start
    :reader trial_start
    :initarg :trial_start
    :type cl:real
    :initform 0)
   (timeout_time
    :reader timeout_time
    :initarg :timeout_time
    :type cl:float
    :initform 0.0)
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
   (num_actors
    :reader num_actors
    :initarg :num_actors
    :type cl:integer
    :initform 0)
   (robot_start
    :reader robot_start
    :initarg :robot_start
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (robot_goal
    :reader robot_goal
    :initarg :robot_goal
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (dist_to_target
    :reader dist_to_target
    :initarg :dist_to_target
    :type cl:float
    :initform 0.0)
   (min_dist_to_target
    :reader min_dist_to_target
    :initarg :min_dist_to_target
    :type cl:float
    :initform 0.0)
   (robot_poses
    :reader robot_poses
    :initarg :robot_poses
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose)))
   (robot_poses_ts
    :reader robot_poses_ts
    :initarg :robot_poses_ts
    :type (cl:vector cl:real)
   :initform (cl:make-array 0 :element-type 'cl:real :initial-element 0))
   (min_dist_to_ped
    :reader min_dist_to_ped
    :initarg :min_dist_to_ped
    :type cl:float
    :initform 0.0)
   (robot_on_person_intimate_dist_violations
    :reader robot_on_person_intimate_dist_violations
    :initarg :robot_on_person_intimate_dist_violations
    :type cl:integer
    :initform 0)
   (person_on_robot_intimate_dist_violations
    :reader person_on_robot_intimate_dist_violations
    :initarg :person_on_robot_intimate_dist_violations
    :type cl:integer
    :initform 0)
   (robot_on_person_personal_dist_violations
    :reader robot_on_person_personal_dist_violations
    :initarg :robot_on_person_personal_dist_violations
    :type cl:integer
    :initform 0)
   (person_on_robot_personal_dist_violations
    :reader person_on_robot_personal_dist_violations
    :initarg :person_on_robot_personal_dist_violations
    :type cl:integer
    :initform 0)
   (robot_on_person_collisions
    :reader robot_on_person_collisions
    :initarg :robot_on_person_collisions
    :type cl:integer
    :initform 0)
   (person_on_robot_collisions
    :reader person_on_robot_collisions
    :initarg :person_on_robot_collisions
    :type cl:integer
    :initform 0)
   (obj_collisions
    :reader obj_collisions
    :initarg :obj_collisions
    :type cl:integer
    :initform 0))
)

(cl:defclass TrialInfo (<TrialInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrialInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrialInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name social_sim_ros-msg:<TrialInfo> is deprecated: use social_sim_ros-msg:TrialInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:header-val is deprecated.  Use social_sim_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'trial_start-val :lambda-list '(m))
(cl:defmethod trial_start-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:trial_start-val is deprecated.  Use social_sim_ros-msg:trial_start instead.")
  (trial_start m))

(cl:ensure-generic-function 'timeout_time-val :lambda-list '(m))
(cl:defmethod timeout_time-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:timeout_time-val is deprecated.  Use social_sim_ros-msg:timeout_time instead.")
  (timeout_time m))

(cl:ensure-generic-function 'trial_name-val :lambda-list '(m))
(cl:defmethod trial_name-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:trial_name-val is deprecated.  Use social_sim_ros-msg:trial_name instead.")
  (trial_name m))

(cl:ensure-generic-function 'trial_number-val :lambda-list '(m))
(cl:defmethod trial_number-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:trial_number-val is deprecated.  Use social_sim_ros-msg:trial_number instead.")
  (trial_number m))

(cl:ensure-generic-function 'num_actors-val :lambda-list '(m))
(cl:defmethod num_actors-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:num_actors-val is deprecated.  Use social_sim_ros-msg:num_actors instead.")
  (num_actors m))

(cl:ensure-generic-function 'robot_start-val :lambda-list '(m))
(cl:defmethod robot_start-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:robot_start-val is deprecated.  Use social_sim_ros-msg:robot_start instead.")
  (robot_start m))

(cl:ensure-generic-function 'robot_goal-val :lambda-list '(m))
(cl:defmethod robot_goal-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:robot_goal-val is deprecated.  Use social_sim_ros-msg:robot_goal instead.")
  (robot_goal m))

(cl:ensure-generic-function 'dist_to_target-val :lambda-list '(m))
(cl:defmethod dist_to_target-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:dist_to_target-val is deprecated.  Use social_sim_ros-msg:dist_to_target instead.")
  (dist_to_target m))

(cl:ensure-generic-function 'min_dist_to_target-val :lambda-list '(m))
(cl:defmethod min_dist_to_target-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:min_dist_to_target-val is deprecated.  Use social_sim_ros-msg:min_dist_to_target instead.")
  (min_dist_to_target m))

(cl:ensure-generic-function 'robot_poses-val :lambda-list '(m))
(cl:defmethod robot_poses-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:robot_poses-val is deprecated.  Use social_sim_ros-msg:robot_poses instead.")
  (robot_poses m))

(cl:ensure-generic-function 'robot_poses_ts-val :lambda-list '(m))
(cl:defmethod robot_poses_ts-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:robot_poses_ts-val is deprecated.  Use social_sim_ros-msg:robot_poses_ts instead.")
  (robot_poses_ts m))

(cl:ensure-generic-function 'min_dist_to_ped-val :lambda-list '(m))
(cl:defmethod min_dist_to_ped-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:min_dist_to_ped-val is deprecated.  Use social_sim_ros-msg:min_dist_to_ped instead.")
  (min_dist_to_ped m))

(cl:ensure-generic-function 'robot_on_person_intimate_dist_violations-val :lambda-list '(m))
(cl:defmethod robot_on_person_intimate_dist_violations-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:robot_on_person_intimate_dist_violations-val is deprecated.  Use social_sim_ros-msg:robot_on_person_intimate_dist_violations instead.")
  (robot_on_person_intimate_dist_violations m))

(cl:ensure-generic-function 'person_on_robot_intimate_dist_violations-val :lambda-list '(m))
(cl:defmethod person_on_robot_intimate_dist_violations-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:person_on_robot_intimate_dist_violations-val is deprecated.  Use social_sim_ros-msg:person_on_robot_intimate_dist_violations instead.")
  (person_on_robot_intimate_dist_violations m))

(cl:ensure-generic-function 'robot_on_person_personal_dist_violations-val :lambda-list '(m))
(cl:defmethod robot_on_person_personal_dist_violations-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:robot_on_person_personal_dist_violations-val is deprecated.  Use social_sim_ros-msg:robot_on_person_personal_dist_violations instead.")
  (robot_on_person_personal_dist_violations m))

(cl:ensure-generic-function 'person_on_robot_personal_dist_violations-val :lambda-list '(m))
(cl:defmethod person_on_robot_personal_dist_violations-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:person_on_robot_personal_dist_violations-val is deprecated.  Use social_sim_ros-msg:person_on_robot_personal_dist_violations instead.")
  (person_on_robot_personal_dist_violations m))

(cl:ensure-generic-function 'robot_on_person_collisions-val :lambda-list '(m))
(cl:defmethod robot_on_person_collisions-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:robot_on_person_collisions-val is deprecated.  Use social_sim_ros-msg:robot_on_person_collisions instead.")
  (robot_on_person_collisions m))

(cl:ensure-generic-function 'person_on_robot_collisions-val :lambda-list '(m))
(cl:defmethod person_on_robot_collisions-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:person_on_robot_collisions-val is deprecated.  Use social_sim_ros-msg:person_on_robot_collisions instead.")
  (person_on_robot_collisions m))

(cl:ensure-generic-function 'obj_collisions-val :lambda-list '(m))
(cl:defmethod obj_collisions-val ((m <TrialInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader social_sim_ros-msg:obj_collisions-val is deprecated.  Use social_sim_ros-msg:obj_collisions instead.")
  (obj_collisions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrialInfo>) ostream)
  "Serializes a message object of type '<TrialInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'trial_start)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'trial_start) (cl:floor (cl:slot-value msg 'trial_start)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timeout_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'trial_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'trial_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_actors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_actors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_actors)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_actors)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'robot_goal) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dist_to_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_dist_to_target))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'robot_poses))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'robot_poses_ts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__sec (cl:floor ele))
        (__nsec (cl:round (cl:* 1e9 (cl:- ele (cl:floor ele))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream)))
   (cl:slot-value msg 'robot_poses_ts))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_dist_to_ped))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_on_person_intimate_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_on_person_intimate_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_on_person_intimate_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_on_person_intimate_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'person_on_robot_intimate_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'person_on_robot_intimate_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'person_on_robot_intimate_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'person_on_robot_intimate_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_on_person_personal_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_on_person_personal_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_on_person_personal_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_on_person_personal_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'person_on_robot_personal_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'person_on_robot_personal_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'person_on_robot_personal_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'person_on_robot_personal_dist_violations)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_on_person_collisions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_on_person_collisions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_on_person_collisions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_on_person_collisions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'person_on_robot_collisions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'person_on_robot_collisions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'person_on_robot_collisions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'person_on_robot_collisions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obj_collisions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'obj_collisions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'obj_collisions)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'obj_collisions)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrialInfo>) istream)
  "Deserializes a message object of type '<TrialInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'trial_start) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeout_time) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_actors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_actors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_actors)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_actors)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'robot_goal) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dist_to_target) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_dist_to_target) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'robot_poses_ts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'robot_poses_ts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9)))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_dist_to_ped) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_on_person_intimate_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_on_person_intimate_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_on_person_intimate_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_on_person_intimate_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'person_on_robot_intimate_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'person_on_robot_intimate_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'person_on_robot_intimate_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'person_on_robot_intimate_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_on_person_personal_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_on_person_personal_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_on_person_personal_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_on_person_personal_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'person_on_robot_personal_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'person_on_robot_personal_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'person_on_robot_personal_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'person_on_robot_personal_dist_violations)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_on_person_collisions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'robot_on_person_collisions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'robot_on_person_collisions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'robot_on_person_collisions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'person_on_robot_collisions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'person_on_robot_collisions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'person_on_robot_collisions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'person_on_robot_collisions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'obj_collisions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'obj_collisions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'obj_collisions)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'obj_collisions)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrialInfo>)))
  "Returns string type for a message object of type '<TrialInfo>"
  "social_sim_ros/TrialInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrialInfo)))
  "Returns string type for a message object of type 'TrialInfo"
  "social_sim_ros/TrialInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrialInfo>)))
  "Returns md5sum for a message object of type '<TrialInfo>"
  "e8f0eee793947e51716938ffff8f8195")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrialInfo)))
  "Returns md5sum for a message object of type 'TrialInfo"
  "e8f0eee793947e51716938ffff8f8195")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrialInfo>)))
  "Returns full string definition for message of type '<TrialInfo>"
  (cl:format cl:nil "# Message containing the information of running a single A-B navigation trial~%~%Header                    header~%~%# Information about the current interaction~%time                      trial_start                                    # When did we start tracking metrics for this trial~%float64                   timeout_time                                   # How long is allowed for the episode have to complete?~%string                    trial_name                                     # Which trial name are we running~%uint16                    trial_number                                   # Which trial number are we running~%uint32                    num_actors                                     # How many people in the scene?~%~%# Robot start / goal locations~%geometry_msgs/Pose        robot_start~%geometry_msgs/Pose        robot_goal~%~%# Robot location / distance relative to start / goal~%float64                   dist_to_target                                 # Current distance to target~%float64                   min_dist_to_target                             # Closest difference to the target the robot has come~%geometry_msgs/Pose[]      robot_poses                                    # Poses of the robot over the episode~%time[]                    robot_poses_ts                                 # Timestamps of the robot poses over the episode~%~%# Robot location relative to pedestrians~%float64                   min_dist_to_ped                                # Minimum distance to any pedestrian throughout the trial~%~%# Collisions between robots and people~%uint32                    robot_on_person_intimate_dist_violations       # Robot passes w/in the intimate distance of a pedestrian~%uint32                    person_on_robot_intimate_dist_violations       # A person passes w/in the intimate distance of the robot~%uint32                    robot_on_person_personal_dist_violations       # Robot passes w/in the personal distance of a pedestrian~%uint32                    person_on_robot_personal_dist_violations       # A person passes w/in the personal distance of the robot~%uint32                    robot_on_person_collisions                     # Number of times that the robot collided with a person~%uint32                    person_on_robot_collisions                     # Number of times that ap person collided with the robot~%~%# Collisions w/ static objects~%uint32                    obj_collisions                                 # Number of times that the robot collided with a static object~%~%# Computed post-hoc~%#bool                     completed                                      # was the robots finals distance to the goal within the desired distance?~%#float64                  targ_dist_norm                                 # dist_to_target normalized by path length~%#float64                  path_length                                    # Approximate distance traveled by robot~%#float64                  mean_dist_to_target_not_moving                 # How far away from the target was the robot while not moving~%#float64                  time_not_moving                                # Seconds the robot was not moving. Computed by checking if the robot moved more than 0.05m since a check the last 1s ago. If not, accumulate the time since the last check.~%#bool                     episode_timed_out~%#float64                  path_irregularity~%#float64                  path_efficiency~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrialInfo)))
  "Returns full string definition for message of type 'TrialInfo"
  (cl:format cl:nil "# Message containing the information of running a single A-B navigation trial~%~%Header                    header~%~%# Information about the current interaction~%time                      trial_start                                    # When did we start tracking metrics for this trial~%float64                   timeout_time                                   # How long is allowed for the episode have to complete?~%string                    trial_name                                     # Which trial name are we running~%uint16                    trial_number                                   # Which trial number are we running~%uint32                    num_actors                                     # How many people in the scene?~%~%# Robot start / goal locations~%geometry_msgs/Pose        robot_start~%geometry_msgs/Pose        robot_goal~%~%# Robot location / distance relative to start / goal~%float64                   dist_to_target                                 # Current distance to target~%float64                   min_dist_to_target                             # Closest difference to the target the robot has come~%geometry_msgs/Pose[]      robot_poses                                    # Poses of the robot over the episode~%time[]                    robot_poses_ts                                 # Timestamps of the robot poses over the episode~%~%# Robot location relative to pedestrians~%float64                   min_dist_to_ped                                # Minimum distance to any pedestrian throughout the trial~%~%# Collisions between robots and people~%uint32                    robot_on_person_intimate_dist_violations       # Robot passes w/in the intimate distance of a pedestrian~%uint32                    person_on_robot_intimate_dist_violations       # A person passes w/in the intimate distance of the robot~%uint32                    robot_on_person_personal_dist_violations       # Robot passes w/in the personal distance of a pedestrian~%uint32                    person_on_robot_personal_dist_violations       # A person passes w/in the personal distance of the robot~%uint32                    robot_on_person_collisions                     # Number of times that the robot collided with a person~%uint32                    person_on_robot_collisions                     # Number of times that ap person collided with the robot~%~%# Collisions w/ static objects~%uint32                    obj_collisions                                 # Number of times that the robot collided with a static object~%~%# Computed post-hoc~%#bool                     completed                                      # was the robots finals distance to the goal within the desired distance?~%#float64                  targ_dist_norm                                 # dist_to_target normalized by path length~%#float64                  path_length                                    # Approximate distance traveled by robot~%#float64                  mean_dist_to_target_not_moving                 # How far away from the target was the robot while not moving~%#float64                  time_not_moving                                # Seconds the robot was not moving. Computed by checking if the robot moved more than 0.05m since a check the last 1s ago. If not, accumulate the time since the last check.~%#bool                     episode_timed_out~%#float64                  path_irregularity~%#float64                  path_efficiency~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrialInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4 (cl:length (cl:slot-value msg 'trial_name))
     2
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'robot_goal))
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'robot_poses_ts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrialInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TrialInfo
    (cl:cons ':header (header msg))
    (cl:cons ':trial_start (trial_start msg))
    (cl:cons ':timeout_time (timeout_time msg))
    (cl:cons ':trial_name (trial_name msg))
    (cl:cons ':trial_number (trial_number msg))
    (cl:cons ':num_actors (num_actors msg))
    (cl:cons ':robot_start (robot_start msg))
    (cl:cons ':robot_goal (robot_goal msg))
    (cl:cons ':dist_to_target (dist_to_target msg))
    (cl:cons ':min_dist_to_target (min_dist_to_target msg))
    (cl:cons ':robot_poses (robot_poses msg))
    (cl:cons ':robot_poses_ts (robot_poses_ts msg))
    (cl:cons ':min_dist_to_ped (min_dist_to_ped msg))
    (cl:cons ':robot_on_person_intimate_dist_violations (robot_on_person_intimate_dist_violations msg))
    (cl:cons ':person_on_robot_intimate_dist_violations (person_on_robot_intimate_dist_violations msg))
    (cl:cons ':robot_on_person_personal_dist_violations (robot_on_person_personal_dist_violations msg))
    (cl:cons ':person_on_robot_personal_dist_violations (person_on_robot_personal_dist_violations msg))
    (cl:cons ':robot_on_person_collisions (robot_on_person_collisions msg))
    (cl:cons ':person_on_robot_collisions (person_on_robot_collisions msg))
    (cl:cons ':obj_collisions (obj_collisions msg))
))
