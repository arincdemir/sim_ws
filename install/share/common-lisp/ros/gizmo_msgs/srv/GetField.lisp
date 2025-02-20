; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-srv)


;//! \htmlinclude GetField-request.msg.html

(cl:defclass <GetField-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetField-request (<GetField-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetField-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetField-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<GetField-request> is deprecated: use gizmo_msgs-srv:GetField-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetField-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:name-val is deprecated.  Use gizmo_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetField-request>) ostream)
  "Serializes a message object of type '<GetField-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetField-request>) istream)
  "Deserializes a message object of type '<GetField-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetField-request>)))
  "Returns string type for a service object of type '<GetField-request>"
  "gizmo_msgs/GetFieldRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetField-request)))
  "Returns string type for a service object of type 'GetField-request"
  "gizmo_msgs/GetFieldRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetField-request>)))
  "Returns md5sum for a message object of type '<GetField-request>"
  "fefc1eaa409232c39ae3f696ddd678d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetField-request)))
  "Returns md5sum for a message object of type 'GetField-request"
  "fefc1eaa409232c39ae3f696ddd678d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetField-request>)))
  "Returns full string definition for message of type '<GetField-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetField-request)))
  "Returns full string definition for message of type 'GetField-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetField-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetField-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetField-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetField-response.msg.html

(cl:defclass <GetField-response> (roslisp-msg-protocol:ros-message)
  ((json_value
    :reader json_value
    :initarg :json_value
    :type cl:string
    :initform ""))
)

(cl:defclass GetField-response (<GetField-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetField-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetField-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<GetField-response> is deprecated: use gizmo_msgs-srv:GetField-response instead.")))

(cl:ensure-generic-function 'json_value-val :lambda-list '(m))
(cl:defmethod json_value-val ((m <GetField-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:json_value-val is deprecated.  Use gizmo_msgs-srv:json_value instead.")
  (json_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetField-response>) ostream)
  "Serializes a message object of type '<GetField-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'json_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'json_value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetField-response>) istream)
  "Deserializes a message object of type '<GetField-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetField-response>)))
  "Returns string type for a service object of type '<GetField-response>"
  "gizmo_msgs/GetFieldResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetField-response)))
  "Returns string type for a service object of type 'GetField-response"
  "gizmo_msgs/GetFieldResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetField-response>)))
  "Returns md5sum for a message object of type '<GetField-response>"
  "fefc1eaa409232c39ae3f696ddd678d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetField-response)))
  "Returns md5sum for a message object of type 'GetField-response"
  "fefc1eaa409232c39ae3f696ddd678d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetField-response>)))
  "Returns full string definition for message of type '<GetField-response>"
  (cl:format cl:nil "string json_value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetField-response)))
  "Returns full string definition for message of type 'GetField-response"
  (cl:format cl:nil "string json_value~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetField-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'json_value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetField-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetField-response
    (cl:cons ':json_value (json_value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetField)))
  'GetField-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetField)))
  'GetField-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetField)))
  "Returns string type for a service object of type '<GetField>"
  "gizmo_msgs/GetField")