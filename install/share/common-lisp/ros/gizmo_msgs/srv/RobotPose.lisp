; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-srv)


;//! \htmlinclude RobotPose-request.msg.html

(cl:defclass <RobotPose-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass RobotPose-request (<RobotPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<RobotPose-request> is deprecated: use gizmo_msgs-srv:RobotPose-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotPose-request>) ostream)
  "Serializes a message object of type '<RobotPose-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotPose-request>) istream)
  "Deserializes a message object of type '<RobotPose-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotPose-request>)))
  "Returns string type for a service object of type '<RobotPose-request>"
  "gizmo_msgs/RobotPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotPose-request)))
  "Returns string type for a service object of type 'RobotPose-request"
  "gizmo_msgs/RobotPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotPose-request>)))
  "Returns md5sum for a message object of type '<RobotPose-request>"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotPose-request)))
  "Returns md5sum for a message object of type 'RobotPose-request"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotPose-request>)))
  "Returns full string definition for message of type '<RobotPose-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotPose-request)))
  "Returns full string definition for message of type 'RobotPose-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotPose-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotPose-request
))
;//! \htmlinclude RobotPose-response.msg.html

(cl:defclass <RobotPose-response> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass RobotPose-response (<RobotPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<RobotPose-response> is deprecated: use gizmo_msgs-srv:RobotPose-response instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <RobotPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:pose-val is deprecated.  Use gizmo_msgs-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotPose-response>) ostream)
  "Serializes a message object of type '<RobotPose-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotPose-response>) istream)
  "Deserializes a message object of type '<RobotPose-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotPose-response>)))
  "Returns string type for a service object of type '<RobotPose-response>"
  "gizmo_msgs/RobotPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotPose-response)))
  "Returns string type for a service object of type 'RobotPose-response"
  "gizmo_msgs/RobotPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotPose-response>)))
  "Returns md5sum for a message object of type '<RobotPose-response>"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotPose-response)))
  "Returns md5sum for a message object of type 'RobotPose-response"
  "f192399f711a48924df9a394d37edd67")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotPose-response>)))
  "Returns full string definition for message of type '<RobotPose-response>"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotPose-response)))
  "Returns full string definition for message of type 'RobotPose-response"
  (cl:format cl:nil "geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotPose-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotPose-response
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RobotPose)))
  'RobotPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RobotPose)))
  'RobotPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotPose)))
  "Returns string type for a service object of type '<RobotPose>"
  "gizmo_msgs/RobotPose")