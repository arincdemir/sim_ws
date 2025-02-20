; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-srv)


;//! \htmlinclude UploaderStatus-request.msg.html

(cl:defclass <UploaderStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass UploaderStatus-request (<UploaderStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UploaderStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UploaderStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<UploaderStatus-request> is deprecated: use gizmo_msgs-srv:UploaderStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UploaderStatus-request>) ostream)
  "Serializes a message object of type '<UploaderStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UploaderStatus-request>) istream)
  "Deserializes a message object of type '<UploaderStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UploaderStatus-request>)))
  "Returns string type for a service object of type '<UploaderStatus-request>"
  "gizmo_msgs/UploaderStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UploaderStatus-request)))
  "Returns string type for a service object of type 'UploaderStatus-request"
  "gizmo_msgs/UploaderStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UploaderStatus-request>)))
  "Returns md5sum for a message object of type '<UploaderStatus-request>"
  "45a8d1674409243c4a0a0fc18fd55f7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UploaderStatus-request)))
  "Returns md5sum for a message object of type 'UploaderStatus-request"
  "45a8d1674409243c4a0a0fc18fd55f7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UploaderStatus-request>)))
  "Returns full string definition for message of type '<UploaderStatus-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UploaderStatus-request)))
  "Returns full string definition for message of type 'UploaderStatus-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UploaderStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UploaderStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UploaderStatus-request
))
;//! \htmlinclude UploaderStatus-response.msg.html

(cl:defclass <UploaderStatus-response> (roslisp-msg-protocol:ros-message)
  ((uploader_queue
    :reader uploader_queue
    :initarg :uploader_queue
    :type cl:string
    :initform ""))
)

(cl:defclass UploaderStatus-response (<UploaderStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UploaderStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UploaderStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<UploaderStatus-response> is deprecated: use gizmo_msgs-srv:UploaderStatus-response instead.")))

(cl:ensure-generic-function 'uploader_queue-val :lambda-list '(m))
(cl:defmethod uploader_queue-val ((m <UploaderStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:uploader_queue-val is deprecated.  Use gizmo_msgs-srv:uploader_queue instead.")
  (uploader_queue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UploaderStatus-response>) ostream)
  "Serializes a message object of type '<UploaderStatus-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uploader_queue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uploader_queue))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UploaderStatus-response>) istream)
  "Deserializes a message object of type '<UploaderStatus-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uploader_queue) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uploader_queue) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UploaderStatus-response>)))
  "Returns string type for a service object of type '<UploaderStatus-response>"
  "gizmo_msgs/UploaderStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UploaderStatus-response)))
  "Returns string type for a service object of type 'UploaderStatus-response"
  "gizmo_msgs/UploaderStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UploaderStatus-response>)))
  "Returns md5sum for a message object of type '<UploaderStatus-response>"
  "45a8d1674409243c4a0a0fc18fd55f7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UploaderStatus-response)))
  "Returns md5sum for a message object of type 'UploaderStatus-response"
  "45a8d1674409243c4a0a0fc18fd55f7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UploaderStatus-response>)))
  "Returns full string definition for message of type '<UploaderStatus-response>"
  (cl:format cl:nil "# In test environment, we let the cloud uploader pick its own path for the~%# uploader queue.  In normal operation this will point to~%# /mayfield/something/something~%string uploader_queue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UploaderStatus-response)))
  "Returns full string definition for message of type 'UploaderStatus-response"
  (cl:format cl:nil "# In test environment, we let the cloud uploader pick its own path for the~%# uploader queue.  In normal operation this will point to~%# /mayfield/something/something~%string uploader_queue~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UploaderStatus-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uploader_queue))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UploaderStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UploaderStatus-response
    (cl:cons ':uploader_queue (uploader_queue msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UploaderStatus)))
  'UploaderStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UploaderStatus)))
  'UploaderStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UploaderStatus)))
  "Returns string type for a service object of type '<UploaderStatus>"
  "gizmo_msgs/UploaderStatus")