; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude WheelDrop.msg.html

(cl:defclass <WheelDrop> (roslisp-msg-protocol:ros-message)
  ((wheel
    :reader wheel
    :initarg :wheel
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WheelDrop (<WheelDrop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelDrop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelDrop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<WheelDrop> is deprecated: use mobile_base_driver-msg:WheelDrop instead.")))

(cl:ensure-generic-function 'wheel-val :lambda-list '(m))
(cl:defmethod wheel-val ((m <WheelDrop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:wheel-val is deprecated.  Use mobile_base_driver-msg:wheel instead.")
  (wheel m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <WheelDrop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:state-val is deprecated.  Use mobile_base_driver-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WheelDrop>)))
    "Constants for message type '<WheelDrop>"
  '((:RIGHT . 0)
    (:LEFT . 1)
    (:RAISED . 0)
    (:DROPPED . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WheelDrop)))
    "Constants for message type 'WheelDrop"
  '((:RIGHT . 0)
    (:LEFT . 1)
    (:RAISED . 0)
    (:DROPPED . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelDrop>) ostream)
  "Serializes a message object of type '<WheelDrop>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelDrop>) istream)
  "Deserializes a message object of type '<WheelDrop>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wheel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelDrop>)))
  "Returns string type for a message object of type '<WheelDrop>"
  "mobile_base_driver/WheelDrop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelDrop)))
  "Returns string type for a message object of type 'WheelDrop"
  "mobile_base_driver/WheelDrop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelDrop>)))
  "Returns md5sum for a message object of type '<WheelDrop>"
  "fb4521cb4dace44ce1858348261dd098")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelDrop)))
  "Returns md5sum for a message object of type 'WheelDrop"
  "fb4521cb4dace44ce1858348261dd098")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelDrop>)))
  "Returns full string definition for message of type '<WheelDrop>"
  (cl:format cl:nil "# Provides a wheeldrop sensor stae~%~%# wheel~%uint8 RIGHT = 0~%uint8 LEFT  = 1~%~%# wheel state~%uint8 RAISED  = 0~%uint8 DROPPED = 1~%~%uint8 wheel~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelDrop)))
  "Returns full string definition for message of type 'WheelDrop"
  (cl:format cl:nil "# Provides a wheeldrop sensor stae~%~%# wheel~%uint8 RIGHT = 0~%uint8 LEFT  = 1~%~%# wheel state~%uint8 RAISED  = 0~%uint8 DROPPED = 1~%~%uint8 wheel~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelDrop>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelDrop>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelDrop
    (cl:cons ':wheel (wheel msg))
    (cl:cons ':state (state msg))
))
