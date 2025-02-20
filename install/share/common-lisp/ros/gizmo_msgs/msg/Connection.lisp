; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude Connection.msg.html

(cl:defclass <Connection> (roslisp-msg-protocol:ros-message)
  ((is_connected
    :reader is_connected
    :initarg :is_connected
    :type cl:boolean
    :initform cl:nil)
   (peer_id
    :reader peer_id
    :initarg :peer_id
    :type cl:string
    :initform "")
   (are_all_peers_gone
    :reader are_all_peers_gone
    :initarg :are_all_peers_gone
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Connection (<Connection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Connection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Connection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<Connection> is deprecated: use gizmo_msgs-msg:Connection instead.")))

(cl:ensure-generic-function 'is_connected-val :lambda-list '(m))
(cl:defmethod is_connected-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:is_connected-val is deprecated.  Use gizmo_msgs-msg:is_connected instead.")
  (is_connected m))

(cl:ensure-generic-function 'peer_id-val :lambda-list '(m))
(cl:defmethod peer_id-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:peer_id-val is deprecated.  Use gizmo_msgs-msg:peer_id instead.")
  (peer_id m))

(cl:ensure-generic-function 'are_all_peers_gone-val :lambda-list '(m))
(cl:defmethod are_all_peers_gone-val ((m <Connection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:are_all_peers_gone-val is deprecated.  Use gizmo_msgs-msg:are_all_peers_gone instead.")
  (are_all_peers_gone m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Connection>) ostream)
  "Serializes a message object of type '<Connection>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_connected) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'peer_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'peer_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'are_all_peers_gone) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Connection>) istream)
  "Deserializes a message object of type '<Connection>"
    (cl:setf (cl:slot-value msg 'is_connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'peer_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'peer_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'are_all_peers_gone) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Connection>)))
  "Returns string type for a message object of type '<Connection>"
  "gizmo_msgs/Connection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connection)))
  "Returns string type for a message object of type 'Connection"
  "gizmo_msgs/Connection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Connection>)))
  "Returns md5sum for a message object of type '<Connection>"
  "4f822d32f1144ffda815fe88d48597f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Connection)))
  "Returns md5sum for a message object of type 'Connection"
  "4f822d32f1144ffda815fe88d48597f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Connection>)))
  "Returns full string definition for message of type '<Connection>"
  (cl:format cl:nil "bool is_connected~%string peer_id~%bool are_all_peers_gone~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Connection)))
  "Returns full string definition for message of type 'Connection"
  (cl:format cl:nil "bool is_connected~%string peer_id~%bool are_all_peers_gone~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Connection>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'peer_id))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Connection>))
  "Converts a ROS message object to a list"
  (cl:list 'Connection
    (cl:cons ':is_connected (is_connected msg))
    (cl:cons ':peer_id (peer_id msg))
    (cl:cons ':are_all_peers_gone (are_all_peers_gone msg))
))
