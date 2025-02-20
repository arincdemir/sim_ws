; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude MqttMessage.msg.html

(cl:defclass <MqttMessage> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform "")
   (payload
    :reader payload
    :initarg :payload
    :type cl:string
    :initform ""))
)

(cl:defclass MqttMessage (<MqttMessage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MqttMessage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MqttMessage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<MqttMessage> is deprecated: use gizmo_msgs-msg:MqttMessage instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <MqttMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:topic-val is deprecated.  Use gizmo_msgs-msg:topic instead.")
  (topic m))

(cl:ensure-generic-function 'payload-val :lambda-list '(m))
(cl:defmethod payload-val ((m <MqttMessage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:payload-val is deprecated.  Use gizmo_msgs-msg:payload instead.")
  (payload m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MqttMessage>) ostream)
  "Serializes a message object of type '<MqttMessage>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'payload))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'payload))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MqttMessage>) istream)
  "Deserializes a message object of type '<MqttMessage>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'payload) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'payload) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MqttMessage>)))
  "Returns string type for a message object of type '<MqttMessage>"
  "gizmo_msgs/MqttMessage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MqttMessage)))
  "Returns string type for a message object of type 'MqttMessage"
  "gizmo_msgs/MqttMessage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MqttMessage>)))
  "Returns md5sum for a message object of type '<MqttMessage>"
  "6282ed264ea4df95b3b9b7a4ec52d03c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MqttMessage)))
  "Returns md5sum for a message object of type 'MqttMessage"
  "6282ed264ea4df95b3b9b7a4ec52d03c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MqttMessage>)))
  "Returns full string definition for message of type '<MqttMessage>"
  (cl:format cl:nil "string topic~%string payload~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MqttMessage)))
  "Returns full string definition for message of type 'MqttMessage"
  (cl:format cl:nil "string topic~%string payload~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MqttMessage>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
     4 (cl:length (cl:slot-value msg 'payload))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MqttMessage>))
  "Converts a ROS message object to a list"
  (cl:list 'MqttMessage
    (cl:cons ':topic (topic msg))
    (cl:cons ':payload (payload msg))
))
