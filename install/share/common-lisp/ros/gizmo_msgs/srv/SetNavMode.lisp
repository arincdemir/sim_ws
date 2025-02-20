; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-srv)


;//! \htmlinclude SetNavMode-request.msg.html

(cl:defclass <SetNavMode-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform ""))
)

(cl:defclass SetNavMode-request (<SetNavMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNavMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNavMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<SetNavMode-request> is deprecated: use gizmo_msgs-srv:SetNavMode-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <SetNavMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:mode-val is deprecated.  Use gizmo_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNavMode-request>) ostream)
  "Serializes a message object of type '<SetNavMode-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNavMode-request>) istream)
  "Deserializes a message object of type '<SetNavMode-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNavMode-request>)))
  "Returns string type for a service object of type '<SetNavMode-request>"
  "gizmo_msgs/SetNavModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavMode-request)))
  "Returns string type for a service object of type 'SetNavMode-request"
  "gizmo_msgs/SetNavModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNavMode-request>)))
  "Returns md5sum for a message object of type '<SetNavMode-request>"
  "939409827c5731ec5346c99677bd2a1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNavMode-request)))
  "Returns md5sum for a message object of type 'SetNavMode-request"
  "939409827c5731ec5346c99677bd2a1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNavMode-request>)))
  "Returns full string definition for message of type '<SetNavMode-request>"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNavMode-request)))
  "Returns full string definition for message of type 'SetNavMode-request"
  (cl:format cl:nil "string mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNavMode-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNavMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNavMode-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude SetNavMode-response.msg.html

(cl:defclass <SetNavMode-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetNavMode-response (<SetNavMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetNavMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetNavMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<SetNavMode-response> is deprecated: use gizmo_msgs-srv:SetNavMode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetNavMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:success-val is deprecated.  Use gizmo_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetNavMode-response>) ostream)
  "Serializes a message object of type '<SetNavMode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetNavMode-response>) istream)
  "Deserializes a message object of type '<SetNavMode-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetNavMode-response>)))
  "Returns string type for a service object of type '<SetNavMode-response>"
  "gizmo_msgs/SetNavModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavMode-response)))
  "Returns string type for a service object of type 'SetNavMode-response"
  "gizmo_msgs/SetNavModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetNavMode-response>)))
  "Returns md5sum for a message object of type '<SetNavMode-response>"
  "939409827c5731ec5346c99677bd2a1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetNavMode-response)))
  "Returns md5sum for a message object of type 'SetNavMode-response"
  "939409827c5731ec5346c99677bd2a1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetNavMode-response>)))
  "Returns full string definition for message of type '<SetNavMode-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetNavMode-response)))
  "Returns full string definition for message of type 'SetNavMode-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetNavMode-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetNavMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetNavMode-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetNavMode)))
  'SetNavMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetNavMode)))
  'SetNavMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetNavMode)))
  "Returns string type for a service object of type '<SetNavMode>"
  "gizmo_msgs/SetNavMode")