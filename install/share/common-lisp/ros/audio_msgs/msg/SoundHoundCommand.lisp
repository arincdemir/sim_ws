; Auto-generated. Do not edit!


(cl:in-package audio_msgs-msg)


;//! \htmlinclude SoundHoundCommand.msg.html

(cl:defclass <SoundHoundCommand> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (params
    :reader params
    :initarg :params
    :type (cl:vector mayfield_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'mayfield_msgs-msg:KeyValue :initial-element (cl:make-instance 'mayfield_msgs-msg:KeyValue))))
)

(cl:defclass SoundHoundCommand (<SoundHoundCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoundHoundCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoundHoundCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_msgs-msg:<SoundHoundCommand> is deprecated: use audio_msgs-msg:SoundHoundCommand instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <SoundHoundCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-msg:name-val is deprecated.  Use audio_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <SoundHoundCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-msg:params-val is deprecated.  Use audio_msgs-msg:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoundHoundCommand>) ostream)
  "Serializes a message object of type '<SoundHoundCommand>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoundHoundCommand>) istream)
  "Deserializes a message object of type '<SoundHoundCommand>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mayfield_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoundHoundCommand>)))
  "Returns string type for a message object of type '<SoundHoundCommand>"
  "audio_msgs/SoundHoundCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoundHoundCommand)))
  "Returns string type for a message object of type 'SoundHoundCommand"
  "audio_msgs/SoundHoundCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoundHoundCommand>)))
  "Returns md5sum for a message object of type '<SoundHoundCommand>"
  "390c1250bfe4c9f56e75739bb0b6475f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoundHoundCommand)))
  "Returns md5sum for a message object of type 'SoundHoundCommand"
  "390c1250bfe4c9f56e75739bb0b6475f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoundHoundCommand>)))
  "Returns full string definition for message of type '<SoundHoundCommand>"
  (cl:format cl:nil "string name~%mayfield_msgs/KeyValue[] params~%~%================================================================================~%MSG: mayfield_msgs/KeyValue~%# Key value pair, with values represented as strings~%string k~%string v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoundHoundCommand)))
  "Returns full string definition for message of type 'SoundHoundCommand"
  (cl:format cl:nil "string name~%mayfield_msgs/KeyValue[] params~%~%================================================================================~%MSG: mayfield_msgs/KeyValue~%# Key value pair, with values represented as strings~%string k~%string v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoundHoundCommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoundHoundCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'SoundHoundCommand
    (cl:cons ':name (name msg))
    (cl:cons ':params (params msg))
))
