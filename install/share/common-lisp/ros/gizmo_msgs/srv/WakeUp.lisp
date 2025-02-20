; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-srv)


;//! \htmlinclude WakeUp-request.msg.html

(cl:defclass <WakeUp-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass WakeUp-request (<WakeUp-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WakeUp-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WakeUp-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<WakeUp-request> is deprecated: use gizmo_msgs-srv:WakeUp-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WakeUp-request>) ostream)
  "Serializes a message object of type '<WakeUp-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WakeUp-request>) istream)
  "Deserializes a message object of type '<WakeUp-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WakeUp-request>)))
  "Returns string type for a service object of type '<WakeUp-request>"
  "gizmo_msgs/WakeUpRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WakeUp-request)))
  "Returns string type for a service object of type 'WakeUp-request"
  "gizmo_msgs/WakeUpRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WakeUp-request>)))
  "Returns md5sum for a message object of type '<WakeUp-request>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WakeUp-request)))
  "Returns md5sum for a message object of type 'WakeUp-request"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WakeUp-request>)))
  "Returns full string definition for message of type '<WakeUp-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WakeUp-request)))
  "Returns full string definition for message of type 'WakeUp-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WakeUp-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WakeUp-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WakeUp-request
))
;//! \htmlinclude WakeUp-response.msg.html

(cl:defclass <WakeUp-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass WakeUp-response (<WakeUp-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WakeUp-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WakeUp-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<WakeUp-response> is deprecated: use gizmo_msgs-srv:WakeUp-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <WakeUp-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:state-val is deprecated.  Use gizmo_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WakeUp-response>) ostream)
  "Serializes a message object of type '<WakeUp-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WakeUp-response>) istream)
  "Deserializes a message object of type '<WakeUp-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WakeUp-response>)))
  "Returns string type for a service object of type '<WakeUp-response>"
  "gizmo_msgs/WakeUpResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WakeUp-response)))
  "Returns string type for a service object of type 'WakeUp-response"
  "gizmo_msgs/WakeUpResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WakeUp-response>)))
  "Returns md5sum for a message object of type '<WakeUp-response>"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WakeUp-response)))
  "Returns md5sum for a message object of type 'WakeUp-response"
  "af6d3a99f0fbeb66d3248fa4b3e675fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WakeUp-response>)))
  "Returns full string definition for message of type '<WakeUp-response>"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WakeUp-response)))
  "Returns full string definition for message of type 'WakeUp-response"
  (cl:format cl:nil "string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WakeUp-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WakeUp-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WakeUp-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WakeUp)))
  'WakeUp-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WakeUp)))
  'WakeUp-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WakeUp)))
  "Returns string type for a service object of type '<WakeUp>"
  "gizmo_msgs/WakeUp")