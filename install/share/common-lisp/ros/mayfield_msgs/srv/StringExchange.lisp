; Auto-generated. Do not edit!


(cl:in-package mayfield_msgs-srv)


;//! \htmlinclude StringExchange-request.msg.html

(cl:defclass <StringExchange-request> (roslisp-msg-protocol:ros-message)
  ((in_str
    :reader in_str
    :initarg :in_str
    :type cl:string
    :initform ""))
)

(cl:defclass StringExchange-request (<StringExchange-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringExchange-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringExchange-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mayfield_msgs-srv:<StringExchange-request> is deprecated: use mayfield_msgs-srv:StringExchange-request instead.")))

(cl:ensure-generic-function 'in_str-val :lambda-list '(m))
(cl:defmethod in_str-val ((m <StringExchange-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mayfield_msgs-srv:in_str-val is deprecated.  Use mayfield_msgs-srv:in_str instead.")
  (in_str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringExchange-request>) ostream)
  "Serializes a message object of type '<StringExchange-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'in_str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'in_str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringExchange-request>) istream)
  "Deserializes a message object of type '<StringExchange-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'in_str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'in_str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringExchange-request>)))
  "Returns string type for a service object of type '<StringExchange-request>"
  "mayfield_msgs/StringExchangeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringExchange-request)))
  "Returns string type for a service object of type 'StringExchange-request"
  "mayfield_msgs/StringExchangeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringExchange-request>)))
  "Returns md5sum for a message object of type '<StringExchange-request>"
  "8b07386faeaa10fd20f5d838aa59f460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringExchange-request)))
  "Returns md5sum for a message object of type 'StringExchange-request"
  "8b07386faeaa10fd20f5d838aa59f460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringExchange-request>)))
  "Returns full string definition for message of type '<StringExchange-request>"
  (cl:format cl:nil "string in_str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringExchange-request)))
  "Returns full string definition for message of type 'StringExchange-request"
  (cl:format cl:nil "string in_str~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringExchange-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'in_str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringExchange-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StringExchange-request
    (cl:cons ':in_str (in_str msg))
))
;//! \htmlinclude StringExchange-response.msg.html

(cl:defclass <StringExchange-response> (roslisp-msg-protocol:ros-message)
  ((out_str
    :reader out_str
    :initarg :out_str
    :type cl:string
    :initform ""))
)

(cl:defclass StringExchange-response (<StringExchange-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringExchange-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringExchange-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mayfield_msgs-srv:<StringExchange-response> is deprecated: use mayfield_msgs-srv:StringExchange-response instead.")))

(cl:ensure-generic-function 'out_str-val :lambda-list '(m))
(cl:defmethod out_str-val ((m <StringExchange-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mayfield_msgs-srv:out_str-val is deprecated.  Use mayfield_msgs-srv:out_str instead.")
  (out_str m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringExchange-response>) ostream)
  "Serializes a message object of type '<StringExchange-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'out_str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'out_str))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringExchange-response>) istream)
  "Deserializes a message object of type '<StringExchange-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'out_str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'out_str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringExchange-response>)))
  "Returns string type for a service object of type '<StringExchange-response>"
  "mayfield_msgs/StringExchangeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringExchange-response)))
  "Returns string type for a service object of type 'StringExchange-response"
  "mayfield_msgs/StringExchangeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringExchange-response>)))
  "Returns md5sum for a message object of type '<StringExchange-response>"
  "8b07386faeaa10fd20f5d838aa59f460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringExchange-response)))
  "Returns md5sum for a message object of type 'StringExchange-response"
  "8b07386faeaa10fd20f5d838aa59f460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringExchange-response>)))
  "Returns full string definition for message of type '<StringExchange-response>"
  (cl:format cl:nil "string out_str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringExchange-response)))
  "Returns full string definition for message of type 'StringExchange-response"
  (cl:format cl:nil "string out_str~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringExchange-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'out_str))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringExchange-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StringExchange-response
    (cl:cons ':out_str (out_str msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StringExchange)))
  'StringExchange-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StringExchange)))
  'StringExchange-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringExchange)))
  "Returns string type for a service object of type '<StringExchange>"
  "mayfield_msgs/StringExchange")