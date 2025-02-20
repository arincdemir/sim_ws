; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude MomentActions.msg.html

(cl:defclass <MomentActions> (roslisp-msg-protocol:ros-message)
  ((actions
    :reader actions
    :initarg :actions
    :type (cl:vector gizmo_msgs-msg:MomentAction)
   :initform (cl:make-array 0 :element-type 'gizmo_msgs-msg:MomentAction :initial-element (cl:make-instance 'gizmo_msgs-msg:MomentAction))))
)

(cl:defclass MomentActions (<MomentActions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MomentActions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MomentActions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<MomentActions> is deprecated: use gizmo_msgs-msg:MomentActions instead.")))

(cl:ensure-generic-function 'actions-val :lambda-list '(m))
(cl:defmethod actions-val ((m <MomentActions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:actions-val is deprecated.  Use gizmo_msgs-msg:actions instead.")
  (actions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MomentActions>) ostream)
  "Serializes a message object of type '<MomentActions>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MomentActions>) istream)
  "Deserializes a message object of type '<MomentActions>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'gizmo_msgs-msg:MomentAction))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MomentActions>)))
  "Returns string type for a message object of type '<MomentActions>"
  "gizmo_msgs/MomentActions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MomentActions)))
  "Returns string type for a message object of type 'MomentActions"
  "gizmo_msgs/MomentActions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MomentActions>)))
  "Returns md5sum for a message object of type '<MomentActions>"
  "6d12004285292c1609e1a1a3054cc536")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MomentActions)))
  "Returns md5sum for a message object of type 'MomentActions"
  "6d12004285292c1609e1a1a3054cc536")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MomentActions>)))
  "Returns full string definition for message of type '<MomentActions>"
  (cl:format cl:nil "MomentAction[] actions~%~%================================================================================~%MSG: gizmo_msgs/MomentAction~%string event~%string uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MomentActions)))
  "Returns full string definition for message of type 'MomentActions"
  (cl:format cl:nil "MomentAction[] actions~%~%================================================================================~%MSG: gizmo_msgs/MomentAction~%string event~%string uuid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MomentActions>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MomentActions>))
  "Converts a ROS message object to a list"
  (cl:list 'MomentActions
    (cl:cons ':actions (actions msg))
))
