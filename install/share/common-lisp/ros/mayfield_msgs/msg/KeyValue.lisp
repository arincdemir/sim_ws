; Auto-generated. Do not edit!


(cl:in-package mayfield_msgs-msg)


;//! \htmlinclude KeyValue.msg.html

(cl:defclass <KeyValue> (roslisp-msg-protocol:ros-message)
  ((k
    :reader k
    :initarg :k
    :type cl:string
    :initform "")
   (v
    :reader v
    :initarg :v
    :type cl:string
    :initform ""))
)

(cl:defclass KeyValue (<KeyValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KeyValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KeyValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mayfield_msgs-msg:<KeyValue> is deprecated: use mayfield_msgs-msg:KeyValue instead.")))

(cl:ensure-generic-function 'k-val :lambda-list '(m))
(cl:defmethod k-val ((m <KeyValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mayfield_msgs-msg:k-val is deprecated.  Use mayfield_msgs-msg:k instead.")
  (k m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <KeyValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mayfield_msgs-msg:v-val is deprecated.  Use mayfield_msgs-msg:v instead.")
  (v m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KeyValue>) ostream)
  "Serializes a message object of type '<KeyValue>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'k))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'k))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'v))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'v))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KeyValue>) istream)
  "Deserializes a message object of type '<KeyValue>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'k) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'k) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'v) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'v) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KeyValue>)))
  "Returns string type for a message object of type '<KeyValue>"
  "mayfield_msgs/KeyValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KeyValue)))
  "Returns string type for a message object of type 'KeyValue"
  "mayfield_msgs/KeyValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KeyValue>)))
  "Returns md5sum for a message object of type '<KeyValue>"
  "ecd078d493bbb685fc79824134b47497")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KeyValue)))
  "Returns md5sum for a message object of type 'KeyValue"
  "ecd078d493bbb685fc79824134b47497")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KeyValue>)))
  "Returns full string definition for message of type '<KeyValue>"
  (cl:format cl:nil "# Key value pair, with values represented as strings~%string k~%string v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KeyValue)))
  "Returns full string definition for message of type 'KeyValue"
  (cl:format cl:nil "# Key value pair, with values represented as strings~%string k~%string v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KeyValue>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'k))
     4 (cl:length (cl:slot-value msg 'v))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KeyValue>))
  "Converts a ROS message object to a list"
  (cl:list 'KeyValue
    (cl:cons ':k (k msg))
    (cl:cons ':v (v msg))
))
