; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-srv)


;//! \htmlinclude MqttSubscribe-request.msg.html

(cl:defclass <MqttSubscribe-request> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform ""))
)

(cl:defclass MqttSubscribe-request (<MqttSubscribe-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MqttSubscribe-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MqttSubscribe-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<MqttSubscribe-request> is deprecated: use gizmo_msgs-srv:MqttSubscribe-request instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <MqttSubscribe-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:topic-val is deprecated.  Use gizmo_msgs-srv:topic instead.")
  (topic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MqttSubscribe-request>) ostream)
  "Serializes a message object of type '<MqttSubscribe-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MqttSubscribe-request>) istream)
  "Deserializes a message object of type '<MqttSubscribe-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MqttSubscribe-request>)))
  "Returns string type for a service object of type '<MqttSubscribe-request>"
  "gizmo_msgs/MqttSubscribeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MqttSubscribe-request)))
  "Returns string type for a service object of type 'MqttSubscribe-request"
  "gizmo_msgs/MqttSubscribeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MqttSubscribe-request>)))
  "Returns md5sum for a message object of type '<MqttSubscribe-request>"
  "d3ab87cb63701ba577b5ab3413ba13da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MqttSubscribe-request)))
  "Returns md5sum for a message object of type 'MqttSubscribe-request"
  "d3ab87cb63701ba577b5ab3413ba13da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MqttSubscribe-request>)))
  "Returns full string definition for message of type '<MqttSubscribe-request>"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MqttSubscribe-request)))
  "Returns full string definition for message of type 'MqttSubscribe-request"
  (cl:format cl:nil "string topic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MqttSubscribe-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MqttSubscribe-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MqttSubscribe-request
    (cl:cons ':topic (topic msg))
))
;//! \htmlinclude MqttSubscribe-response.msg.html

(cl:defclass <MqttSubscribe-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MqttSubscribe-response (<MqttSubscribe-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MqttSubscribe-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MqttSubscribe-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<MqttSubscribe-response> is deprecated: use gizmo_msgs-srv:MqttSubscribe-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <MqttSubscribe-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:success-val is deprecated.  Use gizmo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MqttSubscribe-response>) ostream)
  "Serializes a message object of type '<MqttSubscribe-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MqttSubscribe-response>) istream)
  "Deserializes a message object of type '<MqttSubscribe-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MqttSubscribe-response>)))
  "Returns string type for a service object of type '<MqttSubscribe-response>"
  "gizmo_msgs/MqttSubscribeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MqttSubscribe-response)))
  "Returns string type for a service object of type 'MqttSubscribe-response"
  "gizmo_msgs/MqttSubscribeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MqttSubscribe-response>)))
  "Returns md5sum for a message object of type '<MqttSubscribe-response>"
  "d3ab87cb63701ba577b5ab3413ba13da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MqttSubscribe-response)))
  "Returns md5sum for a message object of type 'MqttSubscribe-response"
  "d3ab87cb63701ba577b5ab3413ba13da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MqttSubscribe-response>)))
  "Returns full string definition for message of type '<MqttSubscribe-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MqttSubscribe-response)))
  "Returns full string definition for message of type 'MqttSubscribe-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MqttSubscribe-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MqttSubscribe-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MqttSubscribe-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MqttSubscribe)))
  'MqttSubscribe-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MqttSubscribe)))
  'MqttSubscribe-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MqttSubscribe)))
  "Returns string type for a service object of type '<MqttSubscribe>"
  "gizmo_msgs/MqttSubscribe")