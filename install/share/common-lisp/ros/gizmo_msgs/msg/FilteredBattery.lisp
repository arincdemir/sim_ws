; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude FilteredBattery.msg.html

(cl:defclass <FilteredBattery> (roslisp-msg-protocol:ros-message)
  ((rounded_pct
    :reader rounded_pct
    :initarg :rounded_pct
    :type cl:fixnum
    :initform 0)
   (dock_present
    :reader dock_present
    :initarg :dock_present
    :type cl:boolean
    :initform cl:nil)
   (is_charging
    :reader is_charging
    :initarg :is_charging
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FilteredBattery (<FilteredBattery>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilteredBattery>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilteredBattery)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<FilteredBattery> is deprecated: use gizmo_msgs-msg:FilteredBattery instead.")))

(cl:ensure-generic-function 'rounded_pct-val :lambda-list '(m))
(cl:defmethod rounded_pct-val ((m <FilteredBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:rounded_pct-val is deprecated.  Use gizmo_msgs-msg:rounded_pct instead.")
  (rounded_pct m))

(cl:ensure-generic-function 'dock_present-val :lambda-list '(m))
(cl:defmethod dock_present-val ((m <FilteredBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:dock_present-val is deprecated.  Use gizmo_msgs-msg:dock_present instead.")
  (dock_present m))

(cl:ensure-generic-function 'is_charging-val :lambda-list '(m))
(cl:defmethod is_charging-val ((m <FilteredBattery>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:is_charging-val is deprecated.  Use gizmo_msgs-msg:is_charging instead.")
  (is_charging m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilteredBattery>) ostream)
  "Serializes a message object of type '<FilteredBattery>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rounded_pct)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'dock_present) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_charging) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilteredBattery>) istream)
  "Deserializes a message object of type '<FilteredBattery>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rounded_pct)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dock_present) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_charging) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilteredBattery>)))
  "Returns string type for a message object of type '<FilteredBattery>"
  "gizmo_msgs/FilteredBattery")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilteredBattery)))
  "Returns string type for a message object of type 'FilteredBattery"
  "gizmo_msgs/FilteredBattery")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilteredBattery>)))
  "Returns md5sum for a message object of type '<FilteredBattery>"
  "82098baeacd5c1019567d710d5140fd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilteredBattery)))
  "Returns md5sum for a message object of type 'FilteredBattery"
  "82098baeacd5c1019567d710d5140fd2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilteredBattery>)))
  "Returns full string definition for message of type '<FilteredBattery>"
  (cl:format cl:nil "uint8 rounded_pct~%bool dock_present~%bool is_charging~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilteredBattery)))
  "Returns full string definition for message of type 'FilteredBattery"
  (cl:format cl:nil "uint8 rounded_pct~%bool dock_present~%bool is_charging~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilteredBattery>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilteredBattery>))
  "Converts a ROS message object to a list"
  (cl:list 'FilteredBattery
    (cl:cons ':rounded_pct (rounded_pct msg))
    (cl:cons ':dock_present (dock_present msg))
    (cl:cons ':is_charging (is_charging msg))
))
