; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude RomojiFeedback.msg.html

(cl:defclass <RomojiFeedback> (roslisp-msg-protocol:ros-message)
  ((request_id
    :reader request_id
    :initarg :request_id
    :type cl:string
    :initform "")
   (feedback
    :reader feedback
    :initarg :feedback
    :type cl:string
    :initform ""))
)

(cl:defclass RomojiFeedback (<RomojiFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RomojiFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RomojiFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<RomojiFeedback> is deprecated: use gizmo_msgs-msg:RomojiFeedback instead.")))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <RomojiFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:request_id-val is deprecated.  Use gizmo_msgs-msg:request_id instead.")
  (request_id m))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <RomojiFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:feedback-val is deprecated.  Use gizmo_msgs-msg:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RomojiFeedback>) ostream)
  "Serializes a message object of type '<RomojiFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RomojiFeedback>) istream)
  "Deserializes a message object of type '<RomojiFeedback>"
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
      (cl:setf (cl:slot-value msg 'feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RomojiFeedback>)))
  "Returns string type for a message object of type '<RomojiFeedback>"
  "gizmo_msgs/RomojiFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RomojiFeedback)))
  "Returns string type for a message object of type 'RomojiFeedback"
  "gizmo_msgs/RomojiFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RomojiFeedback>)))
  "Returns md5sum for a message object of type '<RomojiFeedback>"
  "779c10426637afb40e1ff669a0a1211a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RomojiFeedback)))
  "Returns md5sum for a message object of type 'RomojiFeedback"
  "779c10426637afb40e1ff669a0a1211a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RomojiFeedback>)))
  "Returns full string definition for message of type '<RomojiFeedback>"
  (cl:format cl:nil "string request_id~%string feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RomojiFeedback)))
  "Returns full string definition for message of type 'RomojiFeedback"
  (cl:format cl:nil "string request_id~%string feedback~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RomojiFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request_id))
     4 (cl:length (cl:slot-value msg 'feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RomojiFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'RomojiFeedback
    (cl:cons ':request_id (request_id msg))
    (cl:cons ':feedback (feedback msg))
))
