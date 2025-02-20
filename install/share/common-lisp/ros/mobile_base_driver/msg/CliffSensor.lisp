; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude CliffSensor.msg.html

(cl:defclass <CliffSensor> (roslisp-msg-protocol:ros-message)
  ((sensor
    :reader sensor
    :initarg :sensor
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (return_rate
    :reader return_rate
    :initarg :return_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass CliffSensor (<CliffSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CliffSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CliffSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<CliffSensor> is deprecated: use mobile_base_driver-msg:CliffSensor instead.")))

(cl:ensure-generic-function 'sensor-val :lambda-list '(m))
(cl:defmethod sensor-val ((m <CliffSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:sensor-val is deprecated.  Use mobile_base_driver-msg:sensor instead.")
  (sensor m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <CliffSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:state-val is deprecated.  Use mobile_base_driver-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <CliffSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:distance-val is deprecated.  Use mobile_base_driver-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'return_rate-val :lambda-list '(m))
(cl:defmethod return_rate-val ((m <CliffSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:return_rate-val is deprecated.  Use mobile_base_driver-msg:return_rate instead.")
  (return_rate m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CliffSensor>)))
    "Constants for message type '<CliffSensor>"
  '((:RIGHT . 0)
    (:MIDRIGHT . 1)
    (:MIDLEFT . 2)
    (:LEFT . 3)
    (:BACKLEFT . 4)
    (:BACKRIGHT . 5)
    (:FLOOR . 0)
    (:CLIFF . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CliffSensor)))
    "Constants for message type 'CliffSensor"
  '((:RIGHT . 0)
    (:MIDRIGHT . 1)
    (:MIDLEFT . 2)
    (:LEFT . 3)
    (:BACKLEFT . 4)
    (:BACKRIGHT . 5)
    (:FLOOR . 0)
    (:CLIFF . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CliffSensor>) ostream)
  "Serializes a message object of type '<CliffSensor>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'return_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CliffSensor>) istream)
  "Deserializes a message object of type '<CliffSensor>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensor)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'return_rate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CliffSensor>)))
  "Returns string type for a message object of type '<CliffSensor>"
  "mobile_base_driver/CliffSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CliffSensor)))
  "Returns string type for a message object of type 'CliffSensor"
  "mobile_base_driver/CliffSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CliffSensor>)))
  "Returns md5sum for a message object of type '<CliffSensor>"
  "df8e935c1e6098b4bc39e9a6c6ab00d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CliffSensor)))
  "Returns md5sum for a message object of type 'CliffSensor"
  "df8e935c1e6098b4bc39e9a6c6ab00d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CliffSensor>)))
  "Returns full string definition for message of type '<CliffSensor>"
  (cl:format cl:nil "# Provides a cliff sensor reading~%# This message is generated whenever a particular cliff sensor signals that the~%# robot approaches or moves away from a cliff.~%~%# cliff sensor~%uint8 RIGHT     = 0~%uint8 MIDRIGHT  = 1~%uint8 MIDLEFT   = 2~%uint8 LEFT      = 3~%uint8 BACKLEFT  = 4~%uint8 BACKRIGHT = 5~%~%# cliff sensor state~%uint8 FLOOR = 0~%uint8 CLIFF = 1~%~%uint8 sensor~%uint8 state~%~%# distance to floor when cliff was detected~%float32 distance~%~%# return rate from the vl6180x, rear cliff sensors only~%float32 return_rate~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CliffSensor)))
  "Returns full string definition for message of type 'CliffSensor"
  (cl:format cl:nil "# Provides a cliff sensor reading~%# This message is generated whenever a particular cliff sensor signals that the~%# robot approaches or moves away from a cliff.~%~%# cliff sensor~%uint8 RIGHT     = 0~%uint8 MIDRIGHT  = 1~%uint8 MIDLEFT   = 2~%uint8 LEFT      = 3~%uint8 BACKLEFT  = 4~%uint8 BACKRIGHT = 5~%~%# cliff sensor state~%uint8 FLOOR = 0~%uint8 CLIFF = 1~%~%uint8 sensor~%uint8 state~%~%# distance to floor when cliff was detected~%float32 distance~%~%# return rate from the vl6180x, rear cliff sensors only~%float32 return_rate~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CliffSensor>))
  (cl:+ 0
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CliffSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'CliffSensor
    (cl:cons ':sensor (sensor msg))
    (cl:cons ':state (state msg))
    (cl:cons ':distance (distance msg))
    (cl:cons ':return_rate (return_rate msg))
))
