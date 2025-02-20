; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude NavigationGoal.msg.html

(cl:defclass <NavigationGoal> (roslisp-msg-protocol:ros-message)
  ((nav_type
    :reader nav_type
    :initarg :nav_type
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (waypoint_uuid
    :reader waypoint_uuid
    :initarg :waypoint_uuid
    :type cl:string
    :initform "")
   (head_pose
    :reader head_pose
    :initarg :head_pose
    :type gizmo_msgs-msg:HeadPose
    :initform (cl:make-instance 'gizmo_msgs-msg:HeadPose))
   (request_id
    :reader request_id
    :initarg :request_id
    :type cl:string
    :initform ""))
)

(cl:defclass NavigationGoal (<NavigationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<NavigationGoal> is deprecated: use gizmo_msgs-msg:NavigationGoal instead.")))

(cl:ensure-generic-function 'nav_type-val :lambda-list '(m))
(cl:defmethod nav_type-val ((m <NavigationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:nav_type-val is deprecated.  Use gizmo_msgs-msg:nav_type instead.")
  (nav_type m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <NavigationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:pose-val is deprecated.  Use gizmo_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'waypoint_uuid-val :lambda-list '(m))
(cl:defmethod waypoint_uuid-val ((m <NavigationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:waypoint_uuid-val is deprecated.  Use gizmo_msgs-msg:waypoint_uuid instead.")
  (waypoint_uuid m))

(cl:ensure-generic-function 'head_pose-val :lambda-list '(m))
(cl:defmethod head_pose-val ((m <NavigationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:head_pose-val is deprecated.  Use gizmo_msgs-msg:head_pose instead.")
  (head_pose m))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <NavigationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:request_id-val is deprecated.  Use gizmo_msgs-msg:request_id instead.")
  (request_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavigationGoal>)))
    "Constants for message type '<NavigationGoal>"
  '((:GO_TO_WAYPOINT . 0)
    (:DRIVE_TO_POINT_IN_IMAGE . 1)
    (:FOLLOW_ME . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavigationGoal)))
    "Constants for message type 'NavigationGoal"
  '((:GO_TO_WAYPOINT . 0)
    (:DRIVE_TO_POINT_IN_IMAGE . 1)
    (:FOLLOW_ME . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationGoal>) ostream)
  "Serializes a message object of type '<NavigationGoal>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nav_type)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'waypoint_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'waypoint_uuid))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'head_pose) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationGoal>) istream)
  "Deserializes a message object of type '<NavigationGoal>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nav_type)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waypoint_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'waypoint_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'head_pose) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationGoal>)))
  "Returns string type for a message object of type '<NavigationGoal>"
  "gizmo_msgs/NavigationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationGoal)))
  "Returns string type for a message object of type 'NavigationGoal"
  "gizmo_msgs/NavigationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationGoal>)))
  "Returns md5sum for a message object of type '<NavigationGoal>"
  "3c5cee24740976f929b08b2903f932ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationGoal)))
  "Returns md5sum for a message object of type 'NavigationGoal"
  "3c5cee24740976f929b08b2903f932ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationGoal>)))
  "Returns full string definition for message of type '<NavigationGoal>"
  (cl:format cl:nil "# This is a message covering all types of navigation~%byte GO_TO_WAYPOINT=0~%byte DRIVE_TO_POINT_IN_IMAGE=1~%byte FOLLOW_ME=2~%~%# Type of navigation~%byte nav_type~%# Goal of navigation~%geometry_msgs/Pose pose~%# Waypoint UUID for GO_TO_WAYPOINT~%string waypoint_uuid~%# Head pose for GO_TO_WAYPOINT~%gizmo_msgs/HeadPose head_pose~%# Request ID (if from client)~%string request_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: gizmo_msgs/HeadPose~%float32 pan~%float32 tilt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationGoal)))
  "Returns full string definition for message of type 'NavigationGoal"
  (cl:format cl:nil "# This is a message covering all types of navigation~%byte GO_TO_WAYPOINT=0~%byte DRIVE_TO_POINT_IN_IMAGE=1~%byte FOLLOW_ME=2~%~%# Type of navigation~%byte nav_type~%# Goal of navigation~%geometry_msgs/Pose pose~%# Waypoint UUID for GO_TO_WAYPOINT~%string waypoint_uuid~%# Head pose for GO_TO_WAYPOINT~%gizmo_msgs/HeadPose head_pose~%# Request ID (if from client)~%string request_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: gizmo_msgs/HeadPose~%float32 pan~%float32 tilt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationGoal>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:length (cl:slot-value msg 'waypoint_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'head_pose))
     4 (cl:length (cl:slot-value msg 'request_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationGoal
    (cl:cons ':nav_type (nav_type msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':waypoint_uuid (waypoint_uuid msg))
    (cl:cons ':head_pose (head_pose msg))
    (cl:cons ':request_id (request_id msg))
))
