; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude ClientTouch.msg.html

(cl:defclass <ClientTouch> (roslisp-msg-protocol:ros-message)
  ((request_id
    :reader request_id
    :initarg :request_id
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass ClientTouch (<ClientTouch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClientTouch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClientTouch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<ClientTouch> is deprecated: use gizmo_msgs-msg:ClientTouch instead.")))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <ClientTouch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:request_id-val is deprecated.  Use gizmo_msgs-msg:request_id instead.")
  (request_id m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ClientTouch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:x-val is deprecated.  Use gizmo_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <ClientTouch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:y-val is deprecated.  Use gizmo_msgs-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClientTouch>) ostream)
  "Serializes a message object of type '<ClientTouch>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request_id))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClientTouch>) istream)
  "Deserializes a message object of type '<ClientTouch>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'request_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'request_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClientTouch>)))
  "Returns string type for a message object of type '<ClientTouch>"
  "gizmo_msgs/ClientTouch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClientTouch)))
  "Returns string type for a message object of type 'ClientTouch"
  "gizmo_msgs/ClientTouch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClientTouch>)))
  "Returns md5sum for a message object of type '<ClientTouch>"
  "610826be44921ea1b77cfd12a76976f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClientTouch)))
  "Returns md5sum for a message object of type 'ClientTouch"
  "610826be44921ea1b77cfd12a76976f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClientTouch>)))
  "Returns full string definition for message of type '<ClientTouch>"
  (cl:format cl:nil "string request_id~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClientTouch)))
  "Returns full string definition for message of type 'ClientTouch"
  (cl:format cl:nil "string request_id~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClientTouch>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request_id))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClientTouch>))
  "Converts a ROS message object to a list"
  (cl:list 'ClientTouch
    (cl:cons ':request_id (request_id msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
