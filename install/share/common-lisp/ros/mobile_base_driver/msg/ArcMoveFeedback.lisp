; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude ArcMoveFeedback.msg.html

(cl:defclass <ArcMoveFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ArcMoveFeedback (<ArcMoveFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArcMoveFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArcMoveFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<ArcMoveFeedback> is deprecated: use mobile_base_driver-msg:ArcMoveFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArcMoveFeedback>) ostream)
  "Serializes a message object of type '<ArcMoveFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArcMoveFeedback>) istream)
  "Deserializes a message object of type '<ArcMoveFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArcMoveFeedback>)))
  "Returns string type for a message object of type '<ArcMoveFeedback>"
  "mobile_base_driver/ArcMoveFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArcMoveFeedback)))
  "Returns string type for a message object of type 'ArcMoveFeedback"
  "mobile_base_driver/ArcMoveFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArcMoveFeedback>)))
  "Returns md5sum for a message object of type '<ArcMoveFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArcMoveFeedback)))
  "Returns md5sum for a message object of type 'ArcMoveFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArcMoveFeedback>)))
  "Returns full string definition for message of type '<ArcMoveFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArcMoveFeedback)))
  "Returns full string definition for message of type 'ArcMoveFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArcMoveFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArcMoveFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ArcMoveFeedback
))
