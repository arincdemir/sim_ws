; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude MomentAction.msg.html

(cl:defclass <MomentAction> (roslisp-msg-protocol:ros-message)
  ((event
    :reader event
    :initarg :event
    :type cl:string
    :initform "")
   (uuid
    :reader uuid
    :initarg :uuid
    :type cl:string
    :initform ""))
)

(cl:defclass MomentAction (<MomentAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MomentAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MomentAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<MomentAction> is deprecated: use gizmo_msgs-msg:MomentAction instead.")))

(cl:ensure-generic-function 'event-val :lambda-list '(m))
(cl:defmethod event-val ((m <MomentAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:event-val is deprecated.  Use gizmo_msgs-msg:event instead.")
  (event m))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <MomentAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:uuid-val is deprecated.  Use gizmo_msgs-msg:uuid instead.")
  (uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MomentAction>) ostream)
  "Serializes a message object of type '<MomentAction>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'event))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'event))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MomentAction>) istream)
  "Deserializes a message object of type '<MomentAction>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'event) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'event) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MomentAction>)))
  "Returns string type for a message object of type '<MomentAction>"
  "gizmo_msgs/MomentAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MomentAction)))
  "Returns string type for a message object of type 'MomentAction"
  "gizmo_msgs/MomentAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MomentAction>)))
  "Returns md5sum for a message object of type '<MomentAction>"
  "c9dc0fac8b817df8f7b99ae1839315e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MomentAction)))
  "Returns md5sum for a message object of type 'MomentAction"
  "c9dc0fac8b817df8f7b99ae1839315e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MomentAction>)))
  "Returns full string definition for message of type '<MomentAction>"
  (cl:format cl:nil "string event~%string uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MomentAction)))
  "Returns full string definition for message of type 'MomentAction"
  (cl:format cl:nil "string event~%string uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MomentAction>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'event))
     4 (cl:length (cl:slot-value msg 'uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MomentAction>))
  "Converts a ROS message object to a list"
  (cl:list 'MomentAction
    (cl:cons ':event (event msg))
    (cl:cons ':uuid (uuid msg))
))
