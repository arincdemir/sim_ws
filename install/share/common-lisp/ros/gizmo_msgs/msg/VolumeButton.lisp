; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude VolumeButton.msg.html

(cl:defclass <VolumeButton> (roslisp-msg-protocol:ros-message)
  ((up_button_pressed
    :reader up_button_pressed
    :initarg :up_button_pressed
    :type cl:boolean
    :initform cl:nil)
   (down_button_pressed
    :reader down_button_pressed
    :initarg :down_button_pressed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VolumeButton (<VolumeButton>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VolumeButton>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VolumeButton)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<VolumeButton> is deprecated: use gizmo_msgs-msg:VolumeButton instead.")))

(cl:ensure-generic-function 'up_button_pressed-val :lambda-list '(m))
(cl:defmethod up_button_pressed-val ((m <VolumeButton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:up_button_pressed-val is deprecated.  Use gizmo_msgs-msg:up_button_pressed instead.")
  (up_button_pressed m))

(cl:ensure-generic-function 'down_button_pressed-val :lambda-list '(m))
(cl:defmethod down_button_pressed-val ((m <VolumeButton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:down_button_pressed-val is deprecated.  Use gizmo_msgs-msg:down_button_pressed instead.")
  (down_button_pressed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VolumeButton>) ostream)
  "Serializes a message object of type '<VolumeButton>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'up_button_pressed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'down_button_pressed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VolumeButton>) istream)
  "Deserializes a message object of type '<VolumeButton>"
    (cl:setf (cl:slot-value msg 'up_button_pressed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'down_button_pressed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VolumeButton>)))
  "Returns string type for a message object of type '<VolumeButton>"
  "gizmo_msgs/VolumeButton")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VolumeButton)))
  "Returns string type for a message object of type 'VolumeButton"
  "gizmo_msgs/VolumeButton")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VolumeButton>)))
  "Returns md5sum for a message object of type '<VolumeButton>"
  "521894f40e8f5ce718766f39cf828cea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VolumeButton)))
  "Returns md5sum for a message object of type 'VolumeButton"
  "521894f40e8f5ce718766f39cf828cea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VolumeButton>)))
  "Returns full string definition for message of type '<VolumeButton>"
  (cl:format cl:nil "bool up_button_pressed~%bool down_button_pressed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VolumeButton)))
  "Returns full string definition for message of type 'VolumeButton"
  (cl:format cl:nil "bool up_button_pressed~%bool down_button_pressed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VolumeButton>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VolumeButton>))
  "Converts a ROS message object to a list"
  (cl:list 'VolumeButton
    (cl:cons ':up_button_pressed (up_button_pressed msg))
    (cl:cons ':down_button_pressed (down_button_pressed msg))
))
