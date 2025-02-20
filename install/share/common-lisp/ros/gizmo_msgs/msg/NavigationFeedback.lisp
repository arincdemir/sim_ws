; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude NavigationFeedback.msg.html

(cl:defclass <NavigationFeedback> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (nav_type
    :reader nav_type
    :initarg :nav_type
    :type cl:integer
    :initform 0)
   (request_id
    :reader request_id
    :initarg :request_id
    :type cl:string
    :initform "")
   (error
    :reader error
    :initarg :error
    :type cl:string
    :initform "")
   (waypoint_uuid
    :reader waypoint_uuid
    :initarg :waypoint_uuid
    :type cl:string
    :initform "")
   (goal
    :reader goal
    :initarg :goal
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass NavigationFeedback (<NavigationFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<NavigationFeedback> is deprecated: use gizmo_msgs-msg:NavigationFeedback instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NavigationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:status-val is deprecated.  Use gizmo_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'nav_type-val :lambda-list '(m))
(cl:defmethod nav_type-val ((m <NavigationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:nav_type-val is deprecated.  Use gizmo_msgs-msg:nav_type instead.")
  (nav_type m))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <NavigationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:request_id-val is deprecated.  Use gizmo_msgs-msg:request_id instead.")
  (request_id m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <NavigationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:error-val is deprecated.  Use gizmo_msgs-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'waypoint_uuid-val :lambda-list '(m))
(cl:defmethod waypoint_uuid-val ((m <NavigationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:waypoint_uuid-val is deprecated.  Use gizmo_msgs-msg:waypoint_uuid instead.")
  (waypoint_uuid m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <NavigationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:goal-val is deprecated.  Use gizmo_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavigationFeedback>)))
    "Constants for message type '<NavigationFeedback>"
  '((:GO_TO_WAYPOINT . 0)
    (:DRIVE_TO_POINT_IN_IMAGE . 1)
    (:FOLLOW_ME . 2)
    (:NAV_SUCCESS . 0)
    (:NAV_PLANNING . 1)
    (:NAV_MOVING . 2)
    (:NAV_ERROR . 3)
    (:NAV_CANCELED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavigationFeedback)))
    "Constants for message type 'NavigationFeedback"
  '((:GO_TO_WAYPOINT . 0)
    (:DRIVE_TO_POINT_IN_IMAGE . 1)
    (:FOLLOW_ME . 2)
    (:NAV_SUCCESS . 0)
    (:NAV_PLANNING . 1)
    (:NAV_MOVING . 2)
    (:NAV_ERROR . 3)
    (:NAV_CANCELED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationFeedback>) ostream)
  "Serializes a message object of type '<NavigationFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nav_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'waypoint_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'waypoint_uuid))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationFeedback>) istream)
  "Deserializes a message object of type '<NavigationFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'nav_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'waypoint_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'waypoint_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationFeedback>)))
  "Returns string type for a message object of type '<NavigationFeedback>"
  "gizmo_msgs/NavigationFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationFeedback)))
  "Returns string type for a message object of type 'NavigationFeedback"
  "gizmo_msgs/NavigationFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationFeedback>)))
  "Returns md5sum for a message object of type '<NavigationFeedback>"
  "a66d98bd7814656a690ab6824d61cdf4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationFeedback)))
  "Returns md5sum for a message object of type 'NavigationFeedback"
  "a66d98bd7814656a690ab6824d61cdf4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationFeedback>)))
  "Returns full string definition for message of type '<NavigationFeedback>"
  (cl:format cl:nil "byte GO_TO_WAYPOINT=0~%byte DRIVE_TO_POINT_IN_IMAGE=1~%byte FOLLOW_ME=2~%~%byte NAV_SUCCESS=0~%byte NAV_PLANNING=1~%byte NAV_MOVING=2~%byte NAV_ERROR=3~%byte NAV_CANCELED=4~%~%# NAV_ status~%byte status~%# Type of navigation~%byte nav_type~%# Request ID if from client~%string request_id~%# error string if NAV_ERROR~%string error~%# waypoint UUID if GO_TO_WAYPOINT~%string waypoint_uuid~%# Goal pose~%geometry_msgs/Pose goal~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationFeedback)))
  "Returns full string definition for message of type 'NavigationFeedback"
  (cl:format cl:nil "byte GO_TO_WAYPOINT=0~%byte DRIVE_TO_POINT_IN_IMAGE=1~%byte FOLLOW_ME=2~%~%byte NAV_SUCCESS=0~%byte NAV_PLANNING=1~%byte NAV_MOVING=2~%byte NAV_ERROR=3~%byte NAV_CANCELED=4~%~%# NAV_ status~%byte status~%# Type of navigation~%byte nav_type~%# Request ID if from client~%string request_id~%# error string if NAV_ERROR~%string error~%# waypoint UUID if GO_TO_WAYPOINT~%string waypoint_uuid~%# Goal pose~%geometry_msgs/Pose goal~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationFeedback>))
  (cl:+ 0
     1
     1
     4 (cl:length (cl:slot-value msg 'request_id))
     4 (cl:length (cl:slot-value msg 'error))
     4 (cl:length (cl:slot-value msg 'waypoint_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationFeedback
    (cl:cons ':status (status msg))
    (cl:cons ':nav_type (nav_type msg))
    (cl:cons ':request_id (request_id msg))
    (cl:cons ':error (error msg))
    (cl:cons ':waypoint_uuid (waypoint_uuid msg))
    (cl:cons ':goal (goal msg))
))
