; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-srv)


;//! \htmlinclude RobotInfo-request.msg.html

(cl:defclass <RobotInfo-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotInfo-request (<RobotInfo-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotInfo-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotInfo-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<RobotInfo-request> is deprecated: use gizmo_msgs-srv:RobotInfo-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotInfo-request>) ostream)
  "Serializes a message object of type '<RobotInfo-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotInfo-request>) istream)
  "Deserializes a message object of type '<RobotInfo-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotInfo-request>)))
  "Returns string type for a service object of type '<RobotInfo-request>"
  "gizmo_msgs/RobotInfoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotInfo-request)))
  "Returns string type for a service object of type 'RobotInfo-request"
  "gizmo_msgs/RobotInfoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotInfo-request>)))
  "Returns md5sum for a message object of type '<RobotInfo-request>"
  "6bab6b4a913b26a0d3237655be117a32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotInfo-request)))
  "Returns md5sum for a message object of type 'RobotInfo-request"
  "6bab6b4a913b26a0d3237655be117a32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotInfo-request>)))
  "Returns full string definition for message of type '<RobotInfo-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotInfo-request)))
  "Returns full string definition for message of type 'RobotInfo-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotInfo-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotInfo-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotInfo-request
))
;//! \htmlinclude RobotInfo-response.msg.html

(cl:defclass <RobotInfo-response> (roslisp-msg-protocol:ros-message)
  ((client_interface_ver
    :reader client_interface_ver
    :initarg :client_interface_ver
    :type cl:fixnum
    :initform 0)
   (robot_base_ver
    :reader robot_base_ver
    :initarg :robot_base_ver
    :type cl:string
    :initform "")
   (gizmo_ver
    :reader gizmo_ver
    :initarg :gizmo_ver
    :type cl:string
    :initform ""))
)

(cl:defclass RobotInfo-response (<RobotInfo-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotInfo-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotInfo-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<RobotInfo-response> is deprecated: use gizmo_msgs-srv:RobotInfo-response instead.")))

(cl:ensure-generic-function 'client_interface_ver-val :lambda-list '(m))
(cl:defmethod client_interface_ver-val ((m <RobotInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:client_interface_ver-val is deprecated.  Use gizmo_msgs-srv:client_interface_ver instead.")
  (client_interface_ver m))

(cl:ensure-generic-function 'robot_base_ver-val :lambda-list '(m))
(cl:defmethod robot_base_ver-val ((m <RobotInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:robot_base_ver-val is deprecated.  Use gizmo_msgs-srv:robot_base_ver instead.")
  (robot_base_ver m))

(cl:ensure-generic-function 'gizmo_ver-val :lambda-list '(m))
(cl:defmethod gizmo_ver-val ((m <RobotInfo-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:gizmo_ver-val is deprecated.  Use gizmo_msgs-srv:gizmo_ver instead.")
  (gizmo_ver m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotInfo-response>) ostream)
  "Serializes a message object of type '<RobotInfo-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'client_interface_ver)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'client_interface_ver)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_base_ver))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_base_ver))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gizmo_ver))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gizmo_ver))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotInfo-response>) istream)
  "Deserializes a message object of type '<RobotInfo-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'client_interface_ver)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'client_interface_ver)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_base_ver) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_base_ver) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gizmo_ver) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gizmo_ver) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotInfo-response>)))
  "Returns string type for a service object of type '<RobotInfo-response>"
  "gizmo_msgs/RobotInfoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotInfo-response)))
  "Returns string type for a service object of type 'RobotInfo-response"
  "gizmo_msgs/RobotInfoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotInfo-response>)))
  "Returns md5sum for a message object of type '<RobotInfo-response>"
  "6bab6b4a913b26a0d3237655be117a32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotInfo-response)))
  "Returns md5sum for a message object of type 'RobotInfo-response"
  "6bab6b4a913b26a0d3237655be117a32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotInfo-response>)))
  "Returns full string definition for message of type '<RobotInfo-response>"
  (cl:format cl:nil "uint16 client_interface_ver~%string robot_base_ver~%string gizmo_ver~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotInfo-response)))
  "Returns full string definition for message of type 'RobotInfo-response"
  (cl:format cl:nil "uint16 client_interface_ver~%string robot_base_ver~%string gizmo_ver~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotInfo-response>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'robot_base_ver))
     4 (cl:length (cl:slot-value msg 'gizmo_ver))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotInfo-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotInfo-response
    (cl:cons ':client_interface_ver (client_interface_ver msg))
    (cl:cons ':robot_base_ver (robot_base_ver msg))
    (cl:cons ':gizmo_ver (gizmo_ver msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotInfo)))
  'RobotInfo-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotInfo)))
  'RobotInfo-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotInfo)))
  "Returns string type for a service object of type '<RobotInfo>"
  "gizmo_msgs/RobotInfo")