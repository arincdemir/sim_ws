; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude Deaf.msg.html

(cl:defclass <Deaf> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Deaf (<Deaf>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Deaf>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Deaf)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<Deaf> is deprecated: use gizmo_msgs-msg:Deaf instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Deaf>) ostream)
  "Serializes a message object of type '<Deaf>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Deaf>) istream)
  "Deserializes a message object of type '<Deaf>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Deaf>)))
  "Returns string type for a message object of type '<Deaf>"
  "gizmo_msgs/Deaf")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Deaf)))
  "Returns string type for a message object of type 'Deaf"
  "gizmo_msgs/Deaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Deaf>)))
  "Returns md5sum for a message object of type '<Deaf>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Deaf)))
  "Returns md5sum for a message object of type 'Deaf"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Deaf>)))
  "Returns full string definition for message of type '<Deaf>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Deaf)))
  "Returns full string definition for message of type 'Deaf"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Deaf>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Deaf>))
  "Converts a ROS message object to a list"
  (cl:list 'Deaf
))
