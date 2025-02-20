; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude Stall.msg.html

(cl:defclass <Stall> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (motor
    :reader motor
    :initarg :motor
    :type (cl:vector mobile_base_driver-msg:Motor)
   :initform (cl:make-array 5 :element-type 'mobile_base_driver-msg:Motor :initial-element (cl:make-instance 'mobile_base_driver-msg:Motor))))
)

(cl:defclass Stall (<Stall>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stall>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stall)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<Stall> is deprecated: use mobile_base_driver-msg:Stall instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Stall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:header-val is deprecated.  Use mobile_base_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'motor-val :lambda-list '(m))
(cl:defmethod motor-val ((m <Stall>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:motor-val is deprecated.  Use mobile_base_driver-msg:motor instead.")
  (motor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stall>) ostream)
  "Serializes a message object of type '<Stall>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'motor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stall>) istream)
  "Deserializes a message object of type '<Stall>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'motor) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'motor)))
    (cl:dotimes (i 5)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mobile_base_driver-msg:Motor))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stall>)))
  "Returns string type for a message object of type '<Stall>"
  "mobile_base_driver/Stall")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stall)))
  "Returns string type for a message object of type 'Stall"
  "mobile_base_driver/Stall")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stall>)))
  "Returns md5sum for a message object of type '<Stall>"
  "6519e11145a7e7fc40fd5a90d611dcc9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stall)))
  "Returns md5sum for a message object of type 'Stall"
  "6519e11145a7e7fc40fd5a90d611dcc9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stall>)))
  "Returns full string definition for message of type '<Stall>"
  (cl:format cl:nil "# Motor Stall state published at a fixed frequency by the driver~%~%Header header~%~%# XXX: wheel indices in their respective arrays does not necessarily~%# reflect what wheel it actually represents~%# Each of these messages has its own internal field for that purpose.~%# Example: check motor[0].motor == Motor.RIGHTWHEEL and do not rely on the 0~%~%Motor[5] motor~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mobile_base_driver/Motor~%# Provides a motor state~%~%# motor~%uint8 RIGHTWHEEL     = 0~%uint8 LEFTWHEEL      = 1~%uint8 PAN            = 2~%uint8 TILT           = 3~%uint8 EYES           = 4~%~%bool  stalled~%bool  pushed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stall)))
  "Returns full string definition for message of type 'Stall"
  (cl:format cl:nil "# Motor Stall state published at a fixed frequency by the driver~%~%Header header~%~%# XXX: wheel indices in their respective arrays does not necessarily~%# reflect what wheel it actually represents~%# Each of these messages has its own internal field for that purpose.~%# Example: check motor[0].motor == Motor.RIGHTWHEEL and do not rely on the 0~%~%Motor[5] motor~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mobile_base_driver/Motor~%# Provides a motor state~%~%# motor~%uint8 RIGHTWHEEL     = 0~%uint8 LEFTWHEEL      = 1~%uint8 PAN            = 2~%uint8 TILT           = 3~%uint8 EYES           = 4~%~%bool  stalled~%bool  pushed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stall>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'motor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stall>))
  "Converts a ROS message object to a list"
  (cl:list 'Stall
    (cl:cons ':header (header msg))
    (cl:cons ':motor (motor msg))
))
