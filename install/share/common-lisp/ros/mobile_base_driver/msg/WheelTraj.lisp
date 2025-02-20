; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude WheelTraj.msg.html

(cl:defclass <WheelTraj> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (points
    :reader points
    :initarg :points
    :type (cl:vector mobile_base_driver-msg:WheelTrajPoint)
   :initform (cl:make-array 0 :element-type 'mobile_base_driver-msg:WheelTrajPoint :initial-element (cl:make-instance 'mobile_base_driver-msg:WheelTrajPoint))))
)

(cl:defclass WheelTraj (<WheelTraj>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelTraj>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelTraj)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<WheelTraj> is deprecated: use mobile_base_driver-msg:WheelTraj instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WheelTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:header-val is deprecated.  Use mobile_base_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <WheelTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:points-val is deprecated.  Use mobile_base_driver-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelTraj>) ostream)
  "Serializes a message object of type '<WheelTraj>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelTraj>) istream)
  "Deserializes a message object of type '<WheelTraj>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mobile_base_driver-msg:WheelTrajPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelTraj>)))
  "Returns string type for a message object of type '<WheelTraj>"
  "mobile_base_driver/WheelTraj")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelTraj)))
  "Returns string type for a message object of type 'WheelTraj"
  "mobile_base_driver/WheelTraj")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelTraj>)))
  "Returns md5sum for a message object of type '<WheelTraj>"
  "184f9008ae215cd8dbb2e259850ca0d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelTraj)))
  "Returns md5sum for a message object of type 'WheelTraj"
  "184f9008ae215cd8dbb2e259850ca0d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelTraj>)))
  "Returns full string definition for message of type '<WheelTraj>"
  (cl:format cl:nil "Header header~%WheelTrajPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mobile_base_driver/WheelTrajPoint~%duration time_from_start~%float64 linear_vel~%float64 angular_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelTraj)))
  "Returns full string definition for message of type 'WheelTraj"
  (cl:format cl:nil "Header header~%WheelTrajPoint[] points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mobile_base_driver/WheelTrajPoint~%duration time_from_start~%float64 linear_vel~%float64 angular_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelTraj>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelTraj>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelTraj
    (cl:cons ':header (header msg))
    (cl:cons ':points (points msg))
))
