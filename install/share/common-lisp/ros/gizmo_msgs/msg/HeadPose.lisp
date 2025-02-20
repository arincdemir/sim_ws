; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude HeadPose.msg.html

(cl:defclass <HeadPose> (roslisp-msg-protocol:ros-message)
  ((pan
    :reader pan
    :initarg :pan
    :type cl:float
    :initform 0.0)
   (tilt
    :reader tilt
    :initarg :tilt
    :type cl:float
    :initform 0.0))
)

(cl:defclass HeadPose (<HeadPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeadPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeadPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<HeadPose> is deprecated: use gizmo_msgs-msg:HeadPose instead.")))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <HeadPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:pan-val is deprecated.  Use gizmo_msgs-msg:pan instead.")
  (pan m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <HeadPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:tilt-val is deprecated.  Use gizmo_msgs-msg:tilt instead.")
  (tilt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeadPose>) ostream)
  "Serializes a message object of type '<HeadPose>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeadPose>) istream)
  "Deserializes a message object of type '<HeadPose>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pan) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tilt) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeadPose>)))
  "Returns string type for a message object of type '<HeadPose>"
  "gizmo_msgs/HeadPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeadPose)))
  "Returns string type for a message object of type 'HeadPose"
  "gizmo_msgs/HeadPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeadPose>)))
  "Returns md5sum for a message object of type '<HeadPose>"
  "938e11f380abc0513a5b7367d0f157bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeadPose)))
  "Returns md5sum for a message object of type 'HeadPose"
  "938e11f380abc0513a5b7367d0f157bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeadPose>)))
  "Returns full string definition for message of type '<HeadPose>"
  (cl:format cl:nil "float32 pan~%float32 tilt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeadPose)))
  "Returns full string definition for message of type 'HeadPose"
  (cl:format cl:nil "float32 pan~%float32 tilt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeadPose>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeadPose>))
  "Converts a ROS message object to a list"
  (cl:list 'HeadPose
    (cl:cons ':pan (pan msg))
    (cl:cons ':tilt (tilt msg))
))
