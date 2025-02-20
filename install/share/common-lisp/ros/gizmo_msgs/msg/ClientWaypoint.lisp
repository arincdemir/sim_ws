; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude ClientWaypoint.msg.html

(cl:defclass <ClientWaypoint> (roslisp-msg-protocol:ros-message)
  ((request_id
    :reader request_id
    :initarg :request_id
    :type cl:string
    :initform "")
   (waypoint_uuid
    :reader waypoint_uuid
    :initarg :waypoint_uuid
    :type cl:string
    :initform ""))
)

(cl:defclass ClientWaypoint (<ClientWaypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClientWaypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClientWaypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<ClientWaypoint> is deprecated: use gizmo_msgs-msg:ClientWaypoint instead.")))

(cl:ensure-generic-function 'request_id-val :lambda-list '(m))
(cl:defmethod request_id-val ((m <ClientWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:request_id-val is deprecated.  Use gizmo_msgs-msg:request_id instead.")
  (request_id m))

(cl:ensure-generic-function 'waypoint_uuid-val :lambda-list '(m))
(cl:defmethod waypoint_uuid-val ((m <ClientWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:waypoint_uuid-val is deprecated.  Use gizmo_msgs-msg:waypoint_uuid instead.")
  (waypoint_uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClientWaypoint>) ostream)
  "Serializes a message object of type '<ClientWaypoint>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'request_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'request_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'waypoint_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'waypoint_uuid))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClientWaypoint>) istream)
  "Deserializes a message object of type '<ClientWaypoint>"
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
      (cl:setf (cl:slot-value msg 'waypoint_uuid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'waypoint_uuid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClientWaypoint>)))
  "Returns string type for a message object of type '<ClientWaypoint>"
  "gizmo_msgs/ClientWaypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClientWaypoint)))
  "Returns string type for a message object of type 'ClientWaypoint"
  "gizmo_msgs/ClientWaypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClientWaypoint>)))
  "Returns md5sum for a message object of type '<ClientWaypoint>"
  "8c9794c65e35c44ec180ec268a6f377c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClientWaypoint)))
  "Returns md5sum for a message object of type 'ClientWaypoint"
  "8c9794c65e35c44ec180ec268a6f377c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClientWaypoint>)))
  "Returns full string definition for message of type '<ClientWaypoint>"
  (cl:format cl:nil "string request_id~%string waypoint_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClientWaypoint)))
  "Returns full string definition for message of type 'ClientWaypoint"
  (cl:format cl:nil "string request_id~%string waypoint_uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClientWaypoint>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'request_id))
     4 (cl:length (cl:slot-value msg 'waypoint_uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClientWaypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'ClientWaypoint
    (cl:cons ':request_id (request_id msg))
    (cl:cons ':waypoint_uuid (waypoint_uuid msg))
))
