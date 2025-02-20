; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude CliffArray.msg.html

(cl:defclass <CliffArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cliff
    :reader cliff
    :initarg :cliff
    :type (cl:vector mobile_base_driver-msg:CliffSensor)
   :initform (cl:make-array 0 :element-type 'mobile_base_driver-msg:CliffSensor :initial-element (cl:make-instance 'mobile_base_driver-msg:CliffSensor))))
)

(cl:defclass CliffArray (<CliffArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CliffArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CliffArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<CliffArray> is deprecated: use mobile_base_driver-msg:CliffArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CliffArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:header-val is deprecated.  Use mobile_base_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cliff-val :lambda-list '(m))
(cl:defmethod cliff-val ((m <CliffArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:cliff-val is deprecated.  Use mobile_base_driver-msg:cliff instead.")
  (cliff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CliffArray>) ostream)
  "Serializes a message object of type '<CliffArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cliff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cliff))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CliffArray>) istream)
  "Deserializes a message object of type '<CliffArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cliff) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cliff)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mobile_base_driver-msg:CliffSensor))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CliffArray>)))
  "Returns string type for a message object of type '<CliffArray>"
  "mobile_base_driver/CliffArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CliffArray)))
  "Returns string type for a message object of type 'CliffArray"
  "mobile_base_driver/CliffArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CliffArray>)))
  "Returns md5sum for a message object of type '<CliffArray>"
  "6fd810cb276829214052d0f48967ff86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CliffArray)))
  "Returns md5sum for a message object of type 'CliffArray"
  "6fd810cb276829214052d0f48967ff86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CliffArray>)))
  "Returns full string definition for message of type '<CliffArray>"
  (cl:format cl:nil "Header header~%~%# XXX: sensor indices in their respective arrays does not necessarily~%# reflect what sensor it actually represents~%# Each of these messages has its own internal field for that purpose.~%# Example: check wheeldrop[0].wheel == WheelDrop.RIGHT and do not rely on the 0~%CliffSensor[] cliff~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mobile_base_driver/CliffSensor~%# Provides a cliff sensor reading~%# This message is generated whenever a particular cliff sensor signals that the~%# robot approaches or moves away from a cliff.~%~%# cliff sensor~%uint8 RIGHT     = 0~%uint8 MIDRIGHT  = 1~%uint8 MIDLEFT   = 2~%uint8 LEFT      = 3~%uint8 BACKLEFT  = 4~%uint8 BACKRIGHT = 5~%~%# cliff sensor state~%uint8 FLOOR = 0~%uint8 CLIFF = 1~%~%uint8 sensor~%uint8 state~%~%# distance to floor when cliff was detected~%float32 distance~%~%# return rate from the vl6180x, rear cliff sensors only~%float32 return_rate~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CliffArray)))
  "Returns full string definition for message of type 'CliffArray"
  (cl:format cl:nil "Header header~%~%# XXX: sensor indices in their respective arrays does not necessarily~%# reflect what sensor it actually represents~%# Each of these messages has its own internal field for that purpose.~%# Example: check wheeldrop[0].wheel == WheelDrop.RIGHT and do not rely on the 0~%CliffSensor[] cliff~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mobile_base_driver/CliffSensor~%# Provides a cliff sensor reading~%# This message is generated whenever a particular cliff sensor signals that the~%# robot approaches or moves away from a cliff.~%~%# cliff sensor~%uint8 RIGHT     = 0~%uint8 MIDRIGHT  = 1~%uint8 MIDLEFT   = 2~%uint8 LEFT      = 3~%uint8 BACKLEFT  = 4~%uint8 BACKRIGHT = 5~%~%# cliff sensor state~%uint8 FLOOR = 0~%uint8 CLIFF = 1~%~%uint8 sensor~%uint8 state~%~%# distance to floor when cliff was detected~%float32 distance~%~%# return rate from the vl6180x, rear cliff sensors only~%float32 return_rate~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CliffArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cliff) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CliffArray>))
  "Converts a ROS message object to a list"
  (cl:list 'CliffArray
    (cl:cons ':header (header msg))
    (cl:cons ':cliff (cliff msg))
))
