; Auto-generated. Do not edit!


(cl:in-package audio_msgs-srv)


;//! \htmlinclude Deafen-request.msg.html

(cl:defclass <Deafen-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Deafen-request (<Deafen-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Deafen-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Deafen-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_msgs-srv:<Deafen-request> is deprecated: use audio_msgs-srv:Deafen-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Deafen-request>) ostream)
  "Serializes a message object of type '<Deafen-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Deafen-request>) istream)
  "Deserializes a message object of type '<Deafen-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Deafen-request>)))
  "Returns string type for a service object of type '<Deafen-request>"
  "audio_msgs/DeafenRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Deafen-request)))
  "Returns string type for a service object of type 'Deafen-request"
  "audio_msgs/DeafenRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Deafen-request>)))
  "Returns md5sum for a message object of type '<Deafen-request>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Deafen-request)))
  "Returns md5sum for a message object of type 'Deafen-request"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Deafen-request>)))
  "Returns full string definition for message of type '<Deafen-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Deafen-request)))
  "Returns full string definition for message of type 'Deafen-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Deafen-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Deafen-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Deafen-request
))
;//! \htmlinclude Deafen-response.msg.html

(cl:defclass <Deafen-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass Deafen-response (<Deafen-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Deafen-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Deafen-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_msgs-srv:<Deafen-response> is deprecated: use audio_msgs-srv:Deafen-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Deafen-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-srv:state-val is deprecated.  Use audio_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Deafen-response>) ostream)
  "Serializes a message object of type '<Deafen-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Deafen-response>) istream)
  "Deserializes a message object of type '<Deafen-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Deafen-response>)))
  "Returns string type for a service object of type '<Deafen-response>"
  "audio_msgs/DeafenResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Deafen-response)))
  "Returns string type for a service object of type 'Deafen-response"
  "audio_msgs/DeafenResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Deafen-response>)))
  "Returns md5sum for a message object of type '<Deafen-response>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Deafen-response)))
  "Returns md5sum for a message object of type 'Deafen-response"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Deafen-response>)))
  "Returns full string definition for message of type '<Deafen-response>"
  (cl:format cl:nil "string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Deafen-response)))
  "Returns full string definition for message of type 'Deafen-response"
  (cl:format cl:nil "string state~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Deafen-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Deafen-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Deafen-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Deafen)))
  'Deafen-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Deafen)))
  'Deafen-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Deafen)))
  "Returns string type for a service object of type '<Deafen>"
  "audio_msgs/Deafen")