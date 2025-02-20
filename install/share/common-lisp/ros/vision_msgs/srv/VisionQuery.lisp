; Auto-generated. Do not edit!


(cl:in-package vision_msgs-srv)


;//! \htmlinclude VisionQuery-request.msg.html

(cl:defclass <VisionQuery-request> (roslisp-msg-protocol:ros-message)
  ((module
    :reader module
    :initarg :module
    :type cl:string
    :initform ""))
)

(cl:defclass VisionQuery-request (<VisionQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-srv:<VisionQuery-request> is deprecated: use vision_msgs-srv:VisionQuery-request instead.")))

(cl:ensure-generic-function 'module-val :lambda-list '(m))
(cl:defmethod module-val ((m <VisionQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-srv:module-val is deprecated.  Use vision_msgs-srv:module instead.")
  (module m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionQuery-request>) ostream)
  "Serializes a message object of type '<VisionQuery-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'module))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'module))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionQuery-request>) istream)
  "Deserializes a message object of type '<VisionQuery-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'module) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'module) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionQuery-request>)))
  "Returns string type for a service object of type '<VisionQuery-request>"
  "vision_msgs/VisionQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionQuery-request)))
  "Returns string type for a service object of type 'VisionQuery-request"
  "vision_msgs/VisionQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionQuery-request>)))
  "Returns md5sum for a message object of type '<VisionQuery-request>"
  "a18a49860895521a1824a72a6363fcaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionQuery-request)))
  "Returns md5sum for a message object of type 'VisionQuery-request"
  "a18a49860895521a1824a72a6363fcaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionQuery-request>)))
  "Returns full string definition for message of type '<VisionQuery-request>"
  (cl:format cl:nil "string module~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionQuery-request)))
  "Returns full string definition for message of type 'VisionQuery-request"
  (cl:format cl:nil "string module~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionQuery-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'module))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionQuery-request
    (cl:cons ':module (module msg))
))
;//! \htmlinclude VisionQuery-response.msg.html

(cl:defclass <VisionQuery-response> (roslisp-msg-protocol:ros-message)
  ((params
    :reader params
    :initarg :params
    :type (cl:vector mayfield_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'mayfield_msgs-msg:KeyValue :initial-element (cl:make-instance 'mayfield_msgs-msg:KeyValue))))
)

(cl:defclass VisionQuery-response (<VisionQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisionQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisionQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vision_msgs-srv:<VisionQuery-response> is deprecated: use vision_msgs-srv:VisionQuery-response instead.")))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <VisionQuery-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vision_msgs-srv:params-val is deprecated.  Use vision_msgs-srv:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisionQuery-response>) ostream)
  "Serializes a message object of type '<VisionQuery-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'params))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisionQuery-response>) istream)
  "Deserializes a message object of type '<VisionQuery-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisionQuery-response>)))
  "Returns string type for a service object of type '<VisionQuery-response>"
  "vision_msgs/VisionQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionQuery-response)))
  "Returns string type for a service object of type 'VisionQuery-response"
  "vision_msgs/VisionQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisionQuery-response>)))
  "Returns md5sum for a message object of type '<VisionQuery-response>"
  "a18a49860895521a1824a72a6363fcaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisionQuery-response)))
  "Returns md5sum for a message object of type 'VisionQuery-response"
  "a18a49860895521a1824a72a6363fcaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisionQuery-response>)))
  "Returns full string definition for message of type '<VisionQuery-response>"
  (cl:format cl:nil "mayfield_msgs/KeyValue[] params~%~%~%================================================================================~%MSG: mayfield_msgs/KeyValue~%# Key value pair, with values represented as strings~%string k~%string v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisionQuery-response)))
  "Returns full string definition for message of type 'VisionQuery-response"
  (cl:format cl:nil "mayfield_msgs/KeyValue[] params~%~%~%================================================================================~%MSG: mayfield_msgs/KeyValue~%# Key value pair, with values represented as strings~%string k~%string v~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisionQuery-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisionQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VisionQuery-response
    (cl:cons ':params (params msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VisionQuery)))
  'VisionQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VisionQuery)))
  'VisionQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisionQuery)))
  "Returns string type for a service object of type '<VisionQuery>"
  "vision_msgs/VisionQuery")