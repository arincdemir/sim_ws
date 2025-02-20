; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude Asleep.msg.html

(cl:defclass <Asleep> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Asleep (<Asleep>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Asleep>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Asleep)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<Asleep> is deprecated: use gizmo_msgs-msg:Asleep instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Asleep>) ostream)
  "Serializes a message object of type '<Asleep>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Asleep>) istream)
  "Deserializes a message object of type '<Asleep>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Asleep>)))
  "Returns string type for a message object of type '<Asleep>"
  "gizmo_msgs/Asleep")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Asleep)))
  "Returns string type for a message object of type 'Asleep"
  "gizmo_msgs/Asleep")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Asleep>)))
  "Returns md5sum for a message object of type '<Asleep>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Asleep)))
  "Returns md5sum for a message object of type 'Asleep"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Asleep>)))
  "Returns full string definition for message of type '<Asleep>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Asleep)))
  "Returns full string definition for message of type 'Asleep"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Asleep>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Asleep>))
  "Converts a ROS message object to a list"
  (cl:list 'Asleep
))
