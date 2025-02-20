; Auto-generated. Do not edit!


(cl:in-package may_nav_msgs-srv)


;//! \htmlinclude GetObstacleDist-request.msg.html

(cl:defclass <GetObstacleDist-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetObstacleDist-request (<GetObstacleDist-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetObstacleDist-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetObstacleDist-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name may_nav_msgs-srv:<GetObstacleDist-request> is deprecated: use may_nav_msgs-srv:GetObstacleDist-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetObstacleDist-request>) ostream)
  "Serializes a message object of type '<GetObstacleDist-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetObstacleDist-request>) istream)
  "Deserializes a message object of type '<GetObstacleDist-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetObstacleDist-request>)))
  "Returns string type for a service object of type '<GetObstacleDist-request>"
  "may_nav_msgs/GetObstacleDistRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObstacleDist-request)))
  "Returns string type for a service object of type 'GetObstacleDist-request"
  "may_nav_msgs/GetObstacleDistRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetObstacleDist-request>)))
  "Returns md5sum for a message object of type '<GetObstacleDist-request>"
  "444b488bceb285c64c25be6c2269d8db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetObstacleDist-request)))
  "Returns md5sum for a message object of type 'GetObstacleDist-request"
  "444b488bceb285c64c25be6c2269d8db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetObstacleDist-request>)))
  "Returns full string definition for message of type '<GetObstacleDist-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetObstacleDist-request)))
  "Returns full string definition for message of type 'GetObstacleDist-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetObstacleDist-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetObstacleDist-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetObstacleDist-request
))
;//! \htmlinclude GetObstacleDist-response.msg.html

(cl:defclass <GetObstacleDist-response> (roslisp-msg-protocol:ros-message)
  ((obstacle_dist
    :reader obstacle_dist
    :initarg :obstacle_dist
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetObstacleDist-response (<GetObstacleDist-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetObstacleDist-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetObstacleDist-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name may_nav_msgs-srv:<GetObstacleDist-response> is deprecated: use may_nav_msgs-srv:GetObstacleDist-response instead.")))

(cl:ensure-generic-function 'obstacle_dist-val :lambda-list '(m))
(cl:defmethod obstacle_dist-val ((m <GetObstacleDist-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader may_nav_msgs-srv:obstacle_dist-val is deprecated.  Use may_nav_msgs-srv:obstacle_dist instead.")
  (obstacle_dist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetObstacleDist-response>) ostream)
  "Serializes a message object of type '<GetObstacleDist-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'obstacle_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetObstacleDist-response>) istream)
  "Deserializes a message object of type '<GetObstacleDist-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obstacle_dist) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetObstacleDist-response>)))
  "Returns string type for a service object of type '<GetObstacleDist-response>"
  "may_nav_msgs/GetObstacleDistResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObstacleDist-response)))
  "Returns string type for a service object of type 'GetObstacleDist-response"
  "may_nav_msgs/GetObstacleDistResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetObstacleDist-response>)))
  "Returns md5sum for a message object of type '<GetObstacleDist-response>"
  "444b488bceb285c64c25be6c2269d8db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetObstacleDist-response)))
  "Returns md5sum for a message object of type 'GetObstacleDist-response"
  "444b488bceb285c64c25be6c2269d8db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetObstacleDist-response>)))
  "Returns full string definition for message of type '<GetObstacleDist-response>"
  (cl:format cl:nil "float64 obstacle_dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetObstacleDist-response)))
  "Returns full string definition for message of type 'GetObstacleDist-response"
  (cl:format cl:nil "float64 obstacle_dist~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetObstacleDist-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetObstacleDist-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetObstacleDist-response
    (cl:cons ':obstacle_dist (obstacle_dist msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetObstacleDist)))
  'GetObstacleDist-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetObstacleDist)))
  'GetObstacleDist-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetObstacleDist)))
  "Returns string type for a service object of type '<GetObstacleDist>"
  "may_nav_msgs/GetObstacleDist")