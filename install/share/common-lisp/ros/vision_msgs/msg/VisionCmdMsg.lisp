; Auto-generated. Do not edit!


(cl:in-package vision_msgs-msg)


;//! \htmlinclude VisionCmdMsg.msg.html

(cl:defclass <VisionCmdMsg> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:string
    :initform "")
   (module
    :reader module
    :initarg :module
    :type cl:string
    :initform "")
   (config
    :reader config
    :initarg :config
    :type (cl:vector mayfield_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'mayfield_msgs-msg:KeyValue :initial-element (cl:make-instance 'mayfield_msgs-msg:KeyValue)))
   (params
    :reader params
    :initarg :params
    :type (cl:vector mayfield_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'mayfield_msgs-msg:KeyValue :initial-element (cl:make-instance 'mayfield_msgs-msg:KeyValue))))
)

(cl:defclass VisionCmdMsg (<VisionCmdMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionCmdMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionCmdMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-msg:<VisionCmdMsg> is deprecated: use vision_msgs-msg:VisionCmdMsg instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <VisionCmdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:action-val is deprecated.  Use vision_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'module-val :lambda-list '(m))
(cl:defmethod module-val ((m <VisionCmdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:module-val is deprecated.  Use vision_msgs-msg:module instead.")
  (module m))

(cl:ensure-generic-function 'config-val :lambda-list '(m))
(cl:defmethod config-val ((m <VisionCmdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:config-val is deprecated.  Use vision_msgs-msg:config instead.")
  (config m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <VisionCmdMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-msg:params-val is deprecated.  Use vision_msgs-msg:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionCmdMsg>) ostream)
  "Serializes a message object of type '<VisionCmdMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'action))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'action))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'module))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'module))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'config))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'config))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionCmdMsg>) istream)
  "Deserializes a message object of type '<VisionCmdMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'action) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'module) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'config) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'config)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mayfield_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionCmdMsg>)))
  "Returns string type for a message object of type '<VisionCmdMsg>"
  "vision_msgs/VisionCmdMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionCmdMsg)))
  "Returns string type for a message object of type 'VisionCmdMsg"
  "vision_msgs/VisionCmdMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionCmdMsg>)))
  "Returns md5sum for a message object of type '<VisionCmdMsg>"
  "b5f29199ee20cf95f7e3dafc04935512")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionCmdMsg)))
  "Returns md5sum for a message object of type 'VisionCmdMsg"
  "b5f29199ee20cf95f7e3dafc04935512")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionCmdMsg>)))
  "Returns full string definition for message of type '<VisionCmdMsg>"
  (cl:format cl:nil "string action~%string module~%# Optional config~%mayfield_msgs/KeyValue[] config~%# Optional params~%mayfield_msgs/KeyValue[] params~%~%================================================================================~%MSG: mayfield_msgs/KeyValue~%# Key value pair, with values represented as strings~%string k~%string v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionCmdMsg)))
  "Returns full string definition for message of type 'VisionCmdMsg"
  (cl:format cl:nil "string action~%string module~%# Optional config~%mayfield_msgs/KeyValue[] config~%# Optional params~%mayfield_msgs/KeyValue[] params~%~%================================================================================~%MSG: mayfield_msgs/KeyValue~%# Key value pair, with values represented as strings~%string k~%string v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionCmdMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'action))
     4 (cl:length (cl:slot-value msg 'module))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'config) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionCmdMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionCmdMsg
    (cl:cons ':action (action msg))
    (cl:cons ':module (module msg))
    (cl:cons ':config (config msg))
    (cl:cons ':params (params msg))
))
