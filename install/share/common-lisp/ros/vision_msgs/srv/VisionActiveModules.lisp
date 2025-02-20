; Auto-generated. Do not edit!


(cl:in-package vision_msgs-srv)


;//! \htmlinclude VisionActiveModules-request.msg.html

(cl:defclass <VisionActiveModules-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass VisionActiveModules-request (<VisionActiveModules-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionActiveModules-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionActiveModules-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-srv:<VisionActiveModules-request> is deprecated: use vision_msgs-srv:VisionActiveModules-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionActiveModules-request>) ostream)
  "Serializes a message object of type '<VisionActiveModules-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionActiveModules-request>) istream)
  "Deserializes a message object of type '<VisionActiveModules-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionActiveModules-request>)))
  "Returns string type for a service object of type '<VisionActiveModules-request>"
  "vision_msgs/VisionActiveModulesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionActiveModules-request)))
  "Returns string type for a service object of type 'VisionActiveModules-request"
  "vision_msgs/VisionActiveModulesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionActiveModules-request>)))
  "Returns md5sum for a message object of type '<VisionActiveModules-request>"
  "c553a0d7cb2ac6d8e15855b335552825")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionActiveModules-request)))
  "Returns md5sum for a message object of type 'VisionActiveModules-request"
  "c553a0d7cb2ac6d8e15855b335552825")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionActiveModules-request>)))
  "Returns full string definition for message of type '<VisionActiveModules-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionActiveModules-request)))
  "Returns full string definition for message of type 'VisionActiveModules-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionActiveModules-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionActiveModules-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionActiveModules-request
))
;//! \htmlinclude VisionActiveModules-response.msg.html

(cl:defclass <VisionActiveModules-response> (roslisp-msg-protocol:ros-message)
  ((modules
    :reader modules
    :initarg :modules
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass VisionActiveModules-response (<VisionActiveModules-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionActiveModules-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionActiveModules-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-srv:<VisionActiveModules-response> is deprecated: use vision_msgs-srv:VisionActiveModules-response instead.")))

(cl:ensure-generic-function 'modules-val :lambda-list '(m))
(cl:defmethod modules-val ((m <VisionActiveModules-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-srv:modules-val is deprecated.  Use vision_msgs-srv:modules instead.")
  (modules m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionActiveModules-response>) ostream)
  "Serializes a message object of type '<VisionActiveModules-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'modules))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'modules))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionActiveModules-response>) istream)
  "Deserializes a message object of type '<VisionActiveModules-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'modules) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'modules)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionActiveModules-response>)))
  "Returns string type for a service object of type '<VisionActiveModules-response>"
  "vision_msgs/VisionActiveModulesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionActiveModules-response)))
  "Returns string type for a service object of type 'VisionActiveModules-response"
  "vision_msgs/VisionActiveModulesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionActiveModules-response>)))
  "Returns md5sum for a message object of type '<VisionActiveModules-response>"
  "c553a0d7cb2ac6d8e15855b335552825")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionActiveModules-response)))
  "Returns md5sum for a message object of type 'VisionActiveModules-response"
  "c553a0d7cb2ac6d8e15855b335552825")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionActiveModules-response>)))
  "Returns full string definition for message of type '<VisionActiveModules-response>"
  (cl:format cl:nil "string[] modules~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionActiveModules-response)))
  "Returns full string definition for message of type 'VisionActiveModules-response"
  (cl:format cl:nil "string[] modules~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionActiveModules-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'modules) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionActiveModules-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionActiveModules-response
    (cl:cons ':modules (modules msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VisionActiveModules)))
  'VisionActiveModules-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VisionActiveModules)))
  'VisionActiveModules-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionActiveModules)))
  "Returns string type for a service object of type '<VisionActiveModules>"
  "vision_msgs/VisionActiveModules")