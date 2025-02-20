; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-srv)


;//! \htmlinclude SetField-request.msg.html

(cl:defclass <SetField-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (json_value
    :reader json_value
    :initarg :json_value
    :type cl:string
    :initform ""))
)

(cl:defclass SetField-request (<SetField-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetField-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetField-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<SetField-request> is deprecated: use gizmo_msgs-srv:SetField-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SetField-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:name-val is deprecated.  Use gizmo_msgs-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'json_value-val :lambda-list '(m))
(cl:defmethod json_value-val ((m <SetField-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:json_value-val is deprecated.  Use gizmo_msgs-srv:json_value instead.")
  (json_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetField-request>) ostream)
  "Serializes a message object of type '<SetField-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json_value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetField-request>) istream)
  "Deserializes a message object of type '<SetField-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'json_value) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'json_value) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetField-request>)))
  "Returns string type for a service object of type '<SetField-request>"
  "gizmo_msgs/SetFieldRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetField-request)))
  "Returns string type for a service object of type 'SetField-request"
  "gizmo_msgs/SetFieldRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetField-request>)))
  "Returns md5sum for a message object of type '<SetField-request>"
  "bed64f0c585e577c90cce651a3e4553f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetField-request)))
  "Returns md5sum for a message object of type 'SetField-request"
  "bed64f0c585e577c90cce651a3e4553f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetField-request>)))
  "Returns full string definition for message of type '<SetField-request>"
  (cl:format cl:nil "string name~%string json_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetField-request)))
  "Returns full string definition for message of type 'SetField-request"
  (cl:format cl:nil "string name~%string json_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetField-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'json_value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetField-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetField-request
    (cl:cons ':name (name msg))
    (cl:cons ':json_value (json_value msg))
))
;//! \htmlinclude SetField-response.msg.html

(cl:defclass <SetField-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetField-response (<SetField-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetField-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetField-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<SetField-response> is deprecated: use gizmo_msgs-srv:SetField-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetField-response>) ostream)
  "Serializes a message object of type '<SetField-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetField-response>) istream)
  "Deserializes a message object of type '<SetField-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetField-response>)))
  "Returns string type for a service object of type '<SetField-response>"
  "gizmo_msgs/SetFieldResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetField-response)))
  "Returns string type for a service object of type 'SetField-response"
  "gizmo_msgs/SetFieldResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetField-response>)))
  "Returns md5sum for a message object of type '<SetField-response>"
  "bed64f0c585e577c90cce651a3e4553f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetField-response)))
  "Returns md5sum for a message object of type 'SetField-response"
  "bed64f0c585e577c90cce651a3e4553f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetField-response>)))
  "Returns full string definition for message of type '<SetField-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetField-response)))
  "Returns full string definition for message of type 'SetField-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetField-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetField-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetField-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetField)))
  'SetField-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetField)))
  'SetField-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetField)))
  "Returns string type for a service object of type '<SetField>"
  "gizmo_msgs/SetField")