; Auto-generated. Do not edit!


(cl:in-package audio_msgs-srv)


;//! \htmlinclude ListFields-request.msg.html

(cl:defclass <ListFields-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ListFields-request (<ListFields-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListFields-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListFields-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_msgs-srv:<ListFields-request> is deprecated: use audio_msgs-srv:ListFields-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListFields-request>) ostream)
  "Serializes a message object of type '<ListFields-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListFields-request>) istream)
  "Deserializes a message object of type '<ListFields-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListFields-request>)))
  "Returns string type for a service object of type '<ListFields-request>"
  "audio_msgs/ListFieldsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListFields-request)))
  "Returns string type for a service object of type 'ListFields-request"
  "audio_msgs/ListFieldsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListFields-request>)))
  "Returns md5sum for a message object of type '<ListFields-request>"
  "83d03de94261ba4e29b909e51c50d482")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListFields-request)))
  "Returns md5sum for a message object of type 'ListFields-request"
  "83d03de94261ba4e29b909e51c50d482")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListFields-request>)))
  "Returns full string definition for message of type '<ListFields-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListFields-request)))
  "Returns full string definition for message of type 'ListFields-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListFields-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListFields-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListFields-request
))
;//! \htmlinclude ListFields-response.msg.html

(cl:defclass <ListFields-response> (roslisp-msg-protocol:ros-message)
  ((fields
    :reader fields
    :initarg :fields
    :type (cl:vector audio_msgs-msg:Field)
   :initform (cl:make-array 0 :element-type 'audio_msgs-msg:Field :initial-element (cl:make-instance 'audio_msgs-msg:Field))))
)

(cl:defclass ListFields-response (<ListFields-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListFields-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListFields-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_msgs-srv:<ListFields-response> is deprecated: use audio_msgs-srv:ListFields-response instead.")))

(cl:ensure-generic-function 'fields-val :lambda-list '(m))
(cl:defmethod fields-val ((m <ListFields-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-srv:fields-val is deprecated.  Use audio_msgs-srv:fields instead.")
  (fields m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListFields-response>) ostream)
  "Serializes a message object of type '<ListFields-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fields))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fields))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListFields-response>) istream)
  "Deserializes a message object of type '<ListFields-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fields) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fields)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'audio_msgs-msg:Field))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListFields-response>)))
  "Returns string type for a service object of type '<ListFields-response>"
  "audio_msgs/ListFieldsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListFields-response)))
  "Returns string type for a service object of type 'ListFields-response"
  "audio_msgs/ListFieldsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListFields-response>)))
  "Returns md5sum for a message object of type '<ListFields-response>"
  "83d03de94261ba4e29b909e51c50d482")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListFields-response)))
  "Returns md5sum for a message object of type 'ListFields-response"
  "83d03de94261ba4e29b909e51c50d482")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListFields-response>)))
  "Returns full string definition for message of type '<ListFields-response>"
  (cl:format cl:nil "audio_msgs/Field[] fields~%~%~%================================================================================~%MSG: audio_msgs/Field~%string name~%string type~%uint32 length~%string description~%string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListFields-response)))
  "Returns full string definition for message of type 'ListFields-response"
  (cl:format cl:nil "audio_msgs/Field[] fields~%~%~%================================================================================~%MSG: audio_msgs/Field~%string name~%string type~%uint32 length~%string description~%string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListFields-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fields) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListFields-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListFields-response
    (cl:cons ':fields (fields msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListFields)))
  'ListFields-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListFields)))
  'ListFields-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListFields)))
  "Returns string type for a service object of type '<ListFields>"
  "audio_msgs/ListFields")