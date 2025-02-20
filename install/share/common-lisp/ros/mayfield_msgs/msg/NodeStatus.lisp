; Auto-generated. Do not edit!


(cl:in-package mayfield_msgs-msg)


;//! \htmlinclude NodeStatus.msg.html

(cl:defclass <NodeStatus> (roslisp-msg-protocol:ros-message)
  ((node_name
    :reader node_name
    :initarg :node_name
    :type cl:string
    :initform "")
   (online
    :reader online
    :initarg :online
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NodeStatus (<NodeStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mayfield_msgs-msg:<NodeStatus> is deprecated: use mayfield_msgs-msg:NodeStatus instead.")))

(cl:ensure-generic-function 'node_name-val :lambda-list '(m))
(cl:defmethod node_name-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mayfield_msgs-msg:node_name-val is deprecated.  Use mayfield_msgs-msg:node_name instead.")
  (node_name m))

(cl:ensure-generic-function 'online-val :lambda-list '(m))
(cl:defmethod online-val ((m <NodeStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mayfield_msgs-msg:online-val is deprecated.  Use mayfield_msgs-msg:online instead.")
  (online m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeStatus>) ostream)
  "Serializes a message object of type '<NodeStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'online) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeStatus>) istream)
  "Deserializes a message object of type '<NodeStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'online) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeStatus>)))
  "Returns string type for a message object of type '<NodeStatus>"
  "mayfield_msgs/NodeStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeStatus)))
  "Returns string type for a message object of type 'NodeStatus"
  "mayfield_msgs/NodeStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeStatus>)))
  "Returns md5sum for a message object of type '<NodeStatus>"
  "2938585155f971aea1e199f84d3637b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeStatus)))
  "Returns md5sum for a message object of type 'NodeStatus"
  "2938585155f971aea1e199f84d3637b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeStatus>)))
  "Returns full string definition for message of type '<NodeStatus>"
  (cl:format cl:nil "string node_name~%bool online~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeStatus)))
  "Returns full string definition for message of type 'NodeStatus"
  (cl:format cl:nil "string node_name~%bool online~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'node_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeStatus
    (cl:cons ':node_name (node_name msg))
    (cl:cons ':online (online msg))
))
