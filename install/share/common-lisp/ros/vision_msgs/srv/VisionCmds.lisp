; Auto-generated. Do not edit!


(cl:in-package vision_msgs-srv)


;//! \htmlinclude VisionCmds-request.msg.html

(cl:defclass <VisionCmds-request> (roslisp-msg-protocol:ros-message)
  ((commands
    :reader commands
    :initarg :commands
    :type (cl:vector vision_msgs-msg:VisionCmdMsg)
   :initform (cl:make-array 0 :element-type 'vision_msgs-msg:VisionCmdMsg :initial-element (cl:make-instance 'vision_msgs-msg:VisionCmdMsg))))
)

(cl:defclass VisionCmds-request (<VisionCmds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionCmds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionCmds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-srv:<VisionCmds-request> is deprecated: use vision_msgs-srv:VisionCmds-request instead.")))

(cl:ensure-generic-function 'commands-val :lambda-list '(m))
(cl:defmethod commands-val ((m <VisionCmds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-srv:commands-val is deprecated.  Use vision_msgs-srv:commands instead.")
  (commands m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionCmds-request>) ostream)
  "Serializes a message object of type '<VisionCmds-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'commands))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'commands))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionCmds-request>) istream)
  "Deserializes a message object of type '<VisionCmds-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'commands) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'commands)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vision_msgs-msg:VisionCmdMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionCmds-request>)))
  "Returns string type for a service object of type '<VisionCmds-request>"
  "vision_msgs/VisionCmdsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionCmds-request)))
  "Returns string type for a service object of type 'VisionCmds-request"
  "vision_msgs/VisionCmdsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionCmds-request>)))
  "Returns md5sum for a message object of type '<VisionCmds-request>"
  "10c7d0ceeefb07098922de1daf972410")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionCmds-request)))
  "Returns md5sum for a message object of type 'VisionCmds-request"
  "10c7d0ceeefb07098922de1daf972410")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionCmds-request>)))
  "Returns full string definition for message of type '<VisionCmds-request>"
  (cl:format cl:nil "VisionCmdMsg[] commands~%~%================================================================================~%MSG: vision_msgs/VisionCmdMsg~%string action~%string module~%# Optional config~%mayfield_msgs/KeyValue[] config~%# Optional params~%mayfield_msgs/KeyValue[] params~%~%================================================================================~%MSG: mayfield_msgs/KeyValue~%# Key value pair, with values represented as strings~%string k~%string v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionCmds-request)))
  "Returns full string definition for message of type 'VisionCmds-request"
  (cl:format cl:nil "VisionCmdMsg[] commands~%~%================================================================================~%MSG: vision_msgs/VisionCmdMsg~%string action~%string module~%# Optional config~%mayfield_msgs/KeyValue[] config~%# Optional params~%mayfield_msgs/KeyValue[] params~%~%================================================================================~%MSG: mayfield_msgs/KeyValue~%# Key value pair, with values represented as strings~%string k~%string v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionCmds-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'commands) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionCmds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionCmds-request
    (cl:cons ':commands (commands msg))
))
;//! \htmlinclude VisionCmds-response.msg.html

(cl:defclass <VisionCmds-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VisionCmds-response (<VisionCmds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionCmds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionCmds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-srv:<VisionCmds-response> is deprecated: use vision_msgs-srv:VisionCmds-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <VisionCmds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-srv:success-val is deprecated.  Use vision_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionCmds-response>) ostream)
  "Serializes a message object of type '<VisionCmds-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionCmds-response>) istream)
  "Deserializes a message object of type '<VisionCmds-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionCmds-response>)))
  "Returns string type for a service object of type '<VisionCmds-response>"
  "vision_msgs/VisionCmdsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionCmds-response)))
  "Returns string type for a service object of type 'VisionCmds-response"
  "vision_msgs/VisionCmdsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionCmds-response>)))
  "Returns md5sum for a message object of type '<VisionCmds-response>"
  "10c7d0ceeefb07098922de1daf972410")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionCmds-response)))
  "Returns md5sum for a message object of type 'VisionCmds-response"
  "10c7d0ceeefb07098922de1daf972410")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionCmds-response>)))
  "Returns full string definition for message of type '<VisionCmds-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionCmds-response)))
  "Returns full string definition for message of type 'VisionCmds-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionCmds-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionCmds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionCmds-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VisionCmds)))
  'VisionCmds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VisionCmds)))
  'VisionCmds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionCmds)))
  "Returns string type for a service object of type '<VisionCmds>"
  "vision_msgs/VisionCmds")