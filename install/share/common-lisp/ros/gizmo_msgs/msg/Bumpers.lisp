; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude Bumpers.msg.html

(cl:defclass <Bumpers> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bumper
    :reader bumper
    :initarg :bumper
    :type (cl:vector mobile_base_driver-msg:Bumper)
   :initform (cl:make-array 3 :element-type 'mobile_base_driver-msg:Bumper :initial-element (cl:make-instance 'mobile_base_driver-msg:Bumper))))
)

(cl:defclass Bumpers (<Bumpers>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bumpers>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bumpers)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<Bumpers> is deprecated: use gizmo_msgs-msg:Bumpers instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Bumpers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:header-val is deprecated.  Use gizmo_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bumper-val :lambda-list '(m))
(cl:defmethod bumper-val ((m <Bumpers>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:bumper-val is deprecated.  Use gizmo_msgs-msg:bumper instead.")
  (bumper m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bumpers>) ostream)
  "Serializes a message object of type '<Bumpers>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bumper))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bumpers>) istream)
  "Deserializes a message object of type '<Bumpers>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'bumper) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'bumper)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mobile_base_driver-msg:Bumper))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bumpers>)))
  "Returns string type for a message object of type '<Bumpers>"
  "gizmo_msgs/Bumpers")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bumpers)))
  "Returns string type for a message object of type 'Bumpers"
  "gizmo_msgs/Bumpers")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bumpers>)))
  "Returns md5sum for a message object of type '<Bumpers>"
  "f40b3136ebc0dbea733a4f8867c82aba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bumpers)))
  "Returns md5sum for a message object of type 'Bumpers"
  "f40b3136ebc0dbea733a4f8867c82aba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bumpers>)))
  "Returns full string definition for message of type '<Bumpers>"
  (cl:format cl:nil "Header header~%mobile_base_driver/Bumper[3] bumper~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mobile_base_driver/Bumper~%# Provides a bumper stae~%~%# bumper~%uint8 RIGHT     = 0~%uint8 CENTER    = 1~%uint8 LEFT      = 2~%~%# bumper state~%uint8 RELEASED = 0~%uint8 PRESSED = 1~%~%uint8 bumper~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bumpers)))
  "Returns full string definition for message of type 'Bumpers"
  (cl:format cl:nil "Header header~%mobile_base_driver/Bumper[3] bumper~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mobile_base_driver/Bumper~%# Provides a bumper stae~%~%# bumper~%uint8 RIGHT     = 0~%uint8 CENTER    = 1~%uint8 LEFT      = 2~%~%# bumper state~%uint8 RELEASED = 0~%uint8 PRESSED = 1~%~%uint8 bumper~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bumpers>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'bumper) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bumpers>))
  "Converts a ROS message object to a list"
  (cl:list 'Bumpers
    (cl:cons ':header (header msg))
    (cl:cons ':bumper (bumper msg))
))
