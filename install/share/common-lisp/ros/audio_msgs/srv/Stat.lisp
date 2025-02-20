; Auto-generated. Do not edit!


(cl:in-package audio_msgs-srv)


;//! \htmlinclude Stat-request.msg.html

(cl:defclass <Stat-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Stat-request (<Stat-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stat-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stat-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_msgs-srv:<Stat-request> is deprecated: use audio_msgs-srv:Stat-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stat-request>) ostream)
  "Serializes a message object of type '<Stat-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stat-request>) istream)
  "Deserializes a message object of type '<Stat-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stat-request>)))
  "Returns string type for a service object of type '<Stat-request>"
  "audio_msgs/StatRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stat-request)))
  "Returns string type for a service object of type 'Stat-request"
  "audio_msgs/StatRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stat-request>)))
  "Returns md5sum for a message object of type '<Stat-request>"
  "6efbcf0c9bde4f3c542705ddc8687d07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stat-request)))
  "Returns md5sum for a message object of type 'Stat-request"
  "6efbcf0c9bde4f3c542705ddc8687d07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stat-request>)))
  "Returns full string definition for message of type '<Stat-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stat-request)))
  "Returns full string definition for message of type 'Stat-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stat-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stat-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Stat-request
))
;//! \htmlinclude Stat-response.msg.html

(cl:defclass <Stat-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (direction
    :reader direction
    :initarg :direction
    :type cl:string
    :initform ""))
)

(cl:defclass Stat-response (<Stat-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stat-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stat-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_msgs-srv:<Stat-response> is deprecated: use audio_msgs-srv:Stat-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Stat-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-srv:state-val is deprecated.  Use audio_msgs-srv:state instead.")
  (state m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <Stat-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-srv:direction-val is deprecated.  Use audio_msgs-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stat-response>) ostream)
  "Serializes a message object of type '<Stat-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'direction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'direction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stat-response>) istream)
  "Deserializes a message object of type '<Stat-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'direction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stat-response>)))
  "Returns string type for a service object of type '<Stat-response>"
  "audio_msgs/StatResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stat-response)))
  "Returns string type for a service object of type 'Stat-response"
  "audio_msgs/StatResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stat-response>)))
  "Returns md5sum for a message object of type '<Stat-response>"
  "6efbcf0c9bde4f3c542705ddc8687d07")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stat-response)))
  "Returns md5sum for a message object of type 'Stat-response"
  "6efbcf0c9bde4f3c542705ddc8687d07")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stat-response>)))
  "Returns full string definition for message of type '<Stat-response>"
  (cl:format cl:nil "string state~%string direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stat-response)))
  "Returns full string definition for message of type 'Stat-response"
  (cl:format cl:nil "string state~%string direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stat-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
     4 (cl:length (cl:slot-value msg 'direction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stat-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Stat-response
    (cl:cons ':state (state msg))
    (cl:cons ':direction (direction msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Stat)))
  'Stat-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Stat)))
  'Stat-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stat)))
  "Returns string type for a service object of type '<Stat>"
  "audio_msgs/Stat")