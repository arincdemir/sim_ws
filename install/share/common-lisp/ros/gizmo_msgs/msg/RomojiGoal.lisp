; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude RomojiGoal.msg.html

(cl:defclass <RomojiGoal> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (sound
    :reader sound
    :initarg :sound
    :type cl:boolean
    :initform cl:nil)
   (request_id
    :reader request_id
    :initarg :request_id
    :type cl:string
    :initform ""))
)

(cl:defclass RomojiGoal (<RomojiGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RomojiGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RomojiGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<RomojiGoal> is deprecated: use gizmo_msgs-msg:RomojiGoal instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <RomojiGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:name-val is deprecated.  Use gizmo_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'sound-val :lambda-list '(m))
(cl:defmethod sound-val ((m <RomojiGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:sound-val is deprecated.  Use gizmo_msgs-msg:sound instead.")
  (sound m))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <RomojiGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:request_id-val is deprecated.  Use gizmo_msgs-msg:request_id instead.")
  (request_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RomojiGoal>) ostream)
  "Serializes a message object of type '<RomojiGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'sound) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RomojiGoal>) istream)
  "Deserializes a message object of type '<RomojiGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'sound) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RomojiGoal>)))
  "Returns string type for a message object of type '<RomojiGoal>"
  "gizmo_msgs/RomojiGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RomojiGoal)))
  "Returns string type for a message object of type 'RomojiGoal"
  "gizmo_msgs/RomojiGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RomojiGoal>)))
  "Returns md5sum for a message object of type '<RomojiGoal>"
  "e81e783d10916ab9bbf83e484eaeac29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RomojiGoal)))
  "Returns md5sum for a message object of type 'RomojiGoal"
  "e81e783d10916ab9bbf83e484eaeac29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RomojiGoal>)))
  "Returns full string definition for message of type '<RomojiGoal>"
  (cl:format cl:nil "# Name of romoji to play~%string name~%# Whether to play sound or not (if the animation has sounds)~%bool sound~%# Request ID of the animation~%string request_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RomojiGoal)))
  "Returns full string definition for message of type 'RomojiGoal"
  (cl:format cl:nil "# Name of romoji to play~%string name~%# Whether to play sound or not (if the animation has sounds)~%bool sound~%# Request ID of the animation~%string request_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RomojiGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     4 (cl:length (cl:slot-value msg 'request_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RomojiGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'RomojiGoal
    (cl:cons ':name (name msg))
    (cl:cons ':sound (sound msg))
    (cl:cons ':request_id (request_id msg))
))
