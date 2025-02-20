; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude Sensors.msg.html

(cl:defclass <Sensors> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bumper
    :reader bumper
    :initarg :bumper
    :type (cl:vector mobile_base_driver-msg:Bumper)
   :initform (cl:make-array 3 :element-type 'mobile_base_driver-msg:Bumper :initial-element (cl:make-instance 'mobile_base_driver-msg:Bumper)))
   (wheeldrop
    :reader wheeldrop
    :initarg :wheeldrop
    :type (cl:vector mobile_base_driver-msg:WheelDrop)
   :initform (cl:make-array 2 :element-type 'mobile_base_driver-msg:WheelDrop :initial-element (cl:make-instance 'mobile_base_driver-msg:WheelDrop)))
   (touch
    :reader touch
    :initarg :touch
    :type mobile_base_driver-msg:Touch
    :initform (cl:make-instance 'mobile_base_driver-msg:Touch)))
)

(cl:defclass Sensors (<Sensors>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sensors>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sensors)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<Sensors> is deprecated: use mobile_base_driver-msg:Sensors instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:header-val is deprecated.  Use mobile_base_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bumper-val :lambda-list '(m))
(cl:defmethod bumper-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:bumper-val is deprecated.  Use mobile_base_driver-msg:bumper instead.")
  (bumper m))

(cl:ensure-generic-function 'wheeldrop-val :lambda-list '(m))
(cl:defmethod wheeldrop-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:wheeldrop-val is deprecated.  Use mobile_base_driver-msg:wheeldrop instead.")
  (wheeldrop m))

(cl:ensure-generic-function 'touch-val :lambda-list '(m))
(cl:defmethod touch-val ((m <Sensors>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:touch-val is deprecated.  Use mobile_base_driver-msg:touch instead.")
  (touch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sensors>) ostream)
  "Serializes a message object of type '<Sensors>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bumper))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'wheeldrop))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'touch) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sensors>) istream)
  "Deserializes a message object of type '<Sensors>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'bumper) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'bumper)))
    (cl:dotimes (i 3)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mobile_base_driver-msg:Bumper))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (cl:setf (cl:slot-value msg 'wheeldrop) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'wheeldrop)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mobile_base_driver-msg:WheelDrop))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'touch) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sensors>)))
  "Returns string type for a message object of type '<Sensors>"
  "mobile_base_driver/Sensors")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sensors)))
  "Returns string type for a message object of type 'Sensors"
  "mobile_base_driver/Sensors")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sensors>)))
  "Returns md5sum for a message object of type '<Sensors>"
  "62120da0767c5e0efa3534875705e11a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sensors)))
  "Returns md5sum for a message object of type 'Sensors"
  "62120da0767c5e0efa3534875705e11a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sensors>)))
  "Returns full string definition for message of type '<Sensors>"
  (cl:format cl:nil "# sensor state published at a fixed frequency by the driver~%~%Header header~%~%# XXX: sensor indices in their respective arrays does not necessarily~%# reflect what sensor it actually represents~%# Each of these messages has its own internal field for that purpose.~%# Example: check wheeldrop[0].wheel == WheelDrop.RIGHT and do not rely on the 0~%Bumper[3]          bumper~%WheelDrop[2]       wheeldrop~%Touch              touch~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mobile_base_driver/Bumper~%# Provides a bumper stae~%~%# bumper~%uint8 RIGHT     = 0~%uint8 CENTER    = 1~%uint8 LEFT      = 2~%~%# bumper state~%uint8 RELEASED = 0~%uint8 PRESSED = 1~%~%uint8 bumper~%uint8 state~%~%================================================================================~%MSG: mobile_base_driver/WheelDrop~%# Provides a wheeldrop sensor stae~%~%# wheel~%uint8 RIGHT = 0~%uint8 LEFT  = 1~%~%# wheel state~%uint8 RAISED  = 0~%uint8 DROPPED = 1~%~%uint8 wheel~%uint8 state~%~%================================================================================~%MSG: mobile_base_driver/Touch~%# true means touched~%# [FRONT_LEFT, LEFT, REAR_LEFT, CENTER, FRONT, REAR_RIGHT, RIGHT, FRONT_RIGHT]~%bool[] electrodes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sensors)))
  "Returns full string definition for message of type 'Sensors"
  (cl:format cl:nil "# sensor state published at a fixed frequency by the driver~%~%Header header~%~%# XXX: sensor indices in their respective arrays does not necessarily~%# reflect what sensor it actually represents~%# Each of these messages has its own internal field for that purpose.~%# Example: check wheeldrop[0].wheel == WheelDrop.RIGHT and do not rely on the 0~%Bumper[3]          bumper~%WheelDrop[2]       wheeldrop~%Touch              touch~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: mobile_base_driver/Bumper~%# Provides a bumper stae~%~%# bumper~%uint8 RIGHT     = 0~%uint8 CENTER    = 1~%uint8 LEFT      = 2~%~%# bumper state~%uint8 RELEASED = 0~%uint8 PRESSED = 1~%~%uint8 bumper~%uint8 state~%~%================================================================================~%MSG: mobile_base_driver/WheelDrop~%# Provides a wheeldrop sensor stae~%~%# wheel~%uint8 RIGHT = 0~%uint8 LEFT  = 1~%~%# wheel state~%uint8 RAISED  = 0~%uint8 DROPPED = 1~%~%uint8 wheel~%uint8 state~%~%================================================================================~%MSG: mobile_base_driver/Touch~%# true means touched~%# [FRONT_LEFT, LEFT, REAR_LEFT, CENTER, FRONT, REAR_RIGHT, RIGHT, FRONT_RIGHT]~%bool[] electrodes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sensors>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'bumper) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'wheeldrop) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'touch))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sensors>))
  "Converts a ROS message object to a list"
  (cl:list 'Sensors
    (cl:cons ':header (header msg))
    (cl:cons ':bumper (bumper msg))
    (cl:cons ':wheeldrop (wheeldrop msg))
    (cl:cons ':touch (touch msg))
))
