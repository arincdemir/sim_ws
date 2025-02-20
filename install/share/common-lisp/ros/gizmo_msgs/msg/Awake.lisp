; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude Awake.msg.html

(cl:defclass <Awake> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (relative_angle
    :reader relative_angle
    :initarg :relative_angle
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:float
    :initform 0.0))
)

(cl:defclass Awake (<Awake>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Awake>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Awake)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<Awake> is deprecated: use gizmo_msgs-msg:Awake instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <Awake>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:direction-val is deprecated.  Use gizmo_msgs-msg:direction instead.")
  (direction m))

(cl:ensure-generic-function 'relative_angle-val :lambda-list '(m))
(cl:defmethod relative_angle-val ((m <Awake>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:relative_angle-val is deprecated.  Use gizmo_msgs-msg:relative_angle instead.")
  (relative_angle m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <Awake>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:score-val is deprecated.  Use gizmo_msgs-msg:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Awake>) ostream)
  "Serializes a message object of type '<Awake>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relative_angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'relative_angle)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Awake>) istream)
  "Deserializes a message object of type '<Awake>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relative_angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'relative_angle)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'score) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Awake>)))
  "Returns string type for a message object of type '<Awake>"
  "gizmo_msgs/Awake")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Awake)))
  "Returns string type for a message object of type 'Awake"
  "gizmo_msgs/Awake")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Awake>)))
  "Returns md5sum for a message object of type '<Awake>"
  "b67c4c1f2cbb59c79b9f56d85e60a268")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Awake)))
  "Returns md5sum for a message object of type 'Awake"
  "b67c4c1f2cbb59c79b9f56d85e60a268")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Awake>)))
  "Returns full string definition for message of type '<Awake>"
  (cl:format cl:nil "geometry_msgs/Vector3 direction~%uint16 relative_angle~%float32 score~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Awake)))
  "Returns full string definition for message of type 'Awake"
  (cl:format cl:nil "geometry_msgs/Vector3 direction~%uint16 relative_angle~%float32 score~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Awake>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Awake>))
  "Converts a ROS message object to a list"
  (cl:list 'Awake
    (cl:cons ':direction (direction msg))
    (cl:cons ':relative_angle (relative_angle msg))
    (cl:cons ':score (score msg))
))
