; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-srv)


;//! \htmlinclude MqttStatus-request.msg.html

(cl:defclass <MqttStatus-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MqttStatus-request (<MqttStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MqttStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MqttStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<MqttStatus-request> is deprecated: use gizmo_msgs-srv:MqttStatus-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MqttStatus-request>) ostream)
  "Serializes a message object of type '<MqttStatus-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MqttStatus-request>) istream)
  "Deserializes a message object of type '<MqttStatus-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MqttStatus-request>)))
  "Returns string type for a service object of type '<MqttStatus-request>"
  "gizmo_msgs/MqttStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MqttStatus-request)))
  "Returns string type for a service object of type 'MqttStatus-request"
  "gizmo_msgs/MqttStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MqttStatus-request>)))
  "Returns md5sum for a message object of type '<MqttStatus-request>"
  "3313a52b8cda4d151d159b5b106a66d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MqttStatus-request)))
  "Returns md5sum for a message object of type 'MqttStatus-request"
  "3313a52b8cda4d151d159b5b106a66d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MqttStatus-request>)))
  "Returns full string definition for message of type '<MqttStatus-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MqttStatus-request)))
  "Returns full string definition for message of type 'MqttStatus-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MqttStatus-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MqttStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MqttStatus-request
))
;//! \htmlinclude MqttStatus-response.msg.html

(cl:defclass <MqttStatus-response> (roslisp-msg-protocol:ros-message)
  ((device
    :reader device
    :initarg :device
    :type cl:string
    :initform "")
   (environment
    :reader environment
    :initarg :environment
    :type cl:string
    :initform "")
   (robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:string
    :initform "")
   (alt_cred_path
    :reader alt_cred_path
    :initarg :alt_cred_path
    :type cl:string
    :initform "")
   (connected
    :reader connected
    :initarg :connected
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MqttStatus-response (<MqttStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MqttStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MqttStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<MqttStatus-response> is deprecated: use gizmo_msgs-srv:MqttStatus-response instead.")))

(cl:ensure-generic-function 'device-val :lambda-list '(m))
(cl:defmethod device-val ((m <MqttStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:device-val is deprecated.  Use gizmo_msgs-srv:device instead.")
  (device m))

(cl:ensure-generic-function 'environment-val :lambda-list '(m))
(cl:defmethod environment-val ((m <MqttStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:environment-val is deprecated.  Use gizmo_msgs-srv:environment instead.")
  (environment m))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <MqttStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:robot_id-val is deprecated.  Use gizmo_msgs-srv:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'alt_cred_path-val :lambda-list '(m))
(cl:defmethod alt_cred_path-val ((m <MqttStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:alt_cred_path-val is deprecated.  Use gizmo_msgs-srv:alt_cred_path instead.")
  (alt_cred_path m))

(cl:ensure-generic-function 'connected-val :lambda-list '(m))
(cl:defmethod connected-val ((m <MqttStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:connected-val is deprecated.  Use gizmo_msgs-srv:connected instead.")
  (connected m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MqttStatus-response>) ostream)
  "Serializes a message object of type '<MqttStatus-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'device))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'device))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'environment))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'environment))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'alt_cred_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'alt_cred_path))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'connected) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MqttStatus-response>) istream)
  "Deserializes a message object of type '<MqttStatus-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'device) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'device) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'environment) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'environment) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'alt_cred_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'alt_cred_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'connected) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MqttStatus-response>)))
  "Returns string type for a service object of type '<MqttStatus-response>"
  "gizmo_msgs/MqttStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MqttStatus-response)))
  "Returns string type for a service object of type 'MqttStatus-response"
  "gizmo_msgs/MqttStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MqttStatus-response>)))
  "Returns md5sum for a message object of type '<MqttStatus-response>"
  "3313a52b8cda4d151d159b5b106a66d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MqttStatus-response)))
  "Returns md5sum for a message object of type 'MqttStatus-response"
  "3313a52b8cda4d151d159b5b106a66d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MqttStatus-response>)))
  "Returns full string definition for message of type '<MqttStatus-response>"
  (cl:format cl:nil "# MQTT Node will assemble topic names for you based on the device, environment~%# robot_id, and the 'endpoint' which is specified when you publish the message~%# More info at:~%# https://github.com/mayfieldrobotics/kuri_project_management/tree/master/mqtt~%string device~%string environment~%string robot_id~%~%# In test environment, we let MQTT pick its own path for credentials so we~%# don't interfere with other MQTT nodes~%string alt_cred_path~%~%bool connected~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MqttStatus-response)))
  "Returns full string definition for message of type 'MqttStatus-response"
  (cl:format cl:nil "# MQTT Node will assemble topic names for you based on the device, environment~%# robot_id, and the 'endpoint' which is specified when you publish the message~%# More info at:~%# https://github.com/mayfieldrobotics/kuri_project_management/tree/master/mqtt~%string device~%string environment~%string robot_id~%~%# In test environment, we let MQTT pick its own path for credentials so we~%# don't interfere with other MQTT nodes~%string alt_cred_path~%~%bool connected~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MqttStatus-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'device))
     4 (cl:length (cl:slot-value msg 'environment))
     4 (cl:length (cl:slot-value msg 'robot_id))
     4 (cl:length (cl:slot-value msg 'alt_cred_path))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MqttStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MqttStatus-response
    (cl:cons ':device (device msg))
    (cl:cons ':environment (environment msg))
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':alt_cred_path (alt_cred_path msg))
    (cl:cons ':connected (connected msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MqttStatus)))
  'MqttStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MqttStatus)))
  'MqttStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MqttStatus)))
  "Returns string type for a service object of type '<MqttStatus>"
  "gizmo_msgs/MqttStatus")