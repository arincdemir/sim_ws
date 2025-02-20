; Auto-generated. Do not edit!


(cl:in-package audio_msgs-srv)


;//! \htmlinclude Snooze-request.msg.html

(cl:defclass <Snooze-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Snooze-request (<Snooze-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Snooze-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Snooze-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_msgs-srv:<Snooze-request> is deprecated: use audio_msgs-srv:Snooze-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Snooze-request>) ostream)
  "Serializes a message object of type '<Snooze-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Snooze-request>) istream)
  "Deserializes a message object of type '<Snooze-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Snooze-request>)))
  "Returns string type for a service object of type '<Snooze-request>"
  "audio_msgs/SnoozeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Snooze-request)))
  "Returns string type for a service object of type 'Snooze-request"
  "audio_msgs/SnoozeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Snooze-request>)))
  "Returns md5sum for a message object of type '<Snooze-request>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Snooze-request)))
  "Returns md5sum for a message object of type 'Snooze-request"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Snooze-request>)))
  "Returns full string definition for message of type '<Snooze-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Snooze-request)))
  "Returns full string definition for message of type 'Snooze-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Snooze-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Snooze-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Snooze-request
))
;//! \htmlinclude Snooze-response.msg.html

(cl:defclass <Snooze-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass Snooze-response (<Snooze-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Snooze-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Snooze-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_msgs-srv:<Snooze-response> is deprecated: use audio_msgs-srv:Snooze-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Snooze-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-srv:state-val is deprecated.  Use audio_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Snooze-response>) ostream)
  "Serializes a message object of type '<Snooze-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Snooze-response>) istream)
  "Deserializes a message object of type '<Snooze-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Snooze-response>)))
  "Returns string type for a service object of type '<Snooze-response>"
  "audio_msgs/SnoozeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Snooze-response)))
  "Returns string type for a service object of type 'Snooze-response"
  "audio_msgs/SnoozeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Snooze-response>)))
  "Returns md5sum for a message object of type '<Snooze-response>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Snooze-response)))
  "Returns md5sum for a message object of type 'Snooze-response"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Snooze-response>)))
  "Returns full string definition for message of type '<Snooze-response>"
  (cl:format cl:nil "string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Snooze-response)))
  "Returns full string definition for message of type 'Snooze-response"
  (cl:format cl:nil "string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Snooze-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Snooze-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Snooze-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Snooze)))
  'Snooze-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Snooze)))
  'Snooze-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Snooze)))
  "Returns string type for a service object of type '<Snooze>"
  "audio_msgs/Snooze")