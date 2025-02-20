; Auto-generated. Do not edit!


(cl:in-package audio_msgs-msg)


;//! \htmlinclude Exchange.msg.html

(cl:defclass <Exchange> (roslisp-msg-protocol:ros-message)
  ((commands
    :reader commands
    :initarg :commands
    :type (cl:vector audio_msgs-msg:SoundHoundCommand)
   :initform (cl:make-array 0 :element-type 'audio_msgs-msg:SoundHoundCommand :initial-element (cl:make-instance 'audio_msgs-msg:SoundHoundCommand)))
   (error
    :reader error
    :initarg :error
    :type cl:string
    :initform "")
   (transcription
    :reader transcription
    :initarg :transcription
    :type cl:string
    :initform ""))
)

(cl:defclass Exchange (<Exchange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Exchange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Exchange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_msgs-msg:<Exchange> is deprecated: use audio_msgs-msg:Exchange instead.")))

(cl:ensure-generic-function 'commands-val :lambda-list '(m))
(cl:defmethod commands-val ((m <Exchange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-msg:commands-val is deprecated.  Use audio_msgs-msg:commands instead.")
  (commands m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <Exchange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-msg:error-val is deprecated.  Use audio_msgs-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'transcription-val :lambda-list '(m))
(cl:defmethod transcription-val ((m <Exchange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-msg:transcription-val is deprecated.  Use audio_msgs-msg:transcription instead.")
  (transcription m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Exchange>) ostream)
  "Serializes a message object of type '<Exchange>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'commands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'commands))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'transcription))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'transcription))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Exchange>) istream)
  "Deserializes a message object of type '<Exchange>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'commands) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'commands)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'audio_msgs-msg:SoundHoundCommand))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'transcription) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'transcription) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Exchange>)))
  "Returns string type for a message object of type '<Exchange>"
  "audio_msgs/Exchange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Exchange)))
  "Returns string type for a message object of type 'Exchange"
  "audio_msgs/Exchange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Exchange>)))
  "Returns md5sum for a message object of type '<Exchange>"
  "d6f8a41761adaba28718c4d86c1aaad1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Exchange)))
  "Returns md5sum for a message object of type 'Exchange"
  "d6f8a41761adaba28718c4d86c1aaad1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Exchange>)))
  "Returns full string definition for message of type '<Exchange>"
  (cl:format cl:nil "SoundHoundCommand[] commands~%string error~%string transcription~%~%================================================================================~%MSG: audio_msgs/SoundHoundCommand~%string name~%mayfield_msgs/KeyValue[] params~%~%================================================================================~%MSG: mayfield_msgs/KeyValue~%# Key value pair, with values represented as strings~%string k~%string v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Exchange)))
  "Returns full string definition for message of type 'Exchange"
  (cl:format cl:nil "SoundHoundCommand[] commands~%string error~%string transcription~%~%================================================================================~%MSG: audio_msgs/SoundHoundCommand~%string name~%mayfield_msgs/KeyValue[] params~%~%================================================================================~%MSG: mayfield_msgs/KeyValue~%# Key value pair, with values represented as strings~%string k~%string v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Exchange>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'commands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'error))
     4 (cl:length (cl:slot-value msg 'transcription))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Exchange>))
  "Converts a ROS message object to a list"
  (cl:list 'Exchange
    (cl:cons ':commands (commands msg))
    (cl:cons ':error (error msg))
    (cl:cons ':transcription (transcription msg))
))
