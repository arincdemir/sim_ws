; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude Clothesline.msg.html

(cl:defclass <Clothesline> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass Clothesline (<Clothesline>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Clothesline>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Clothesline)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<Clothesline> is deprecated: use mobile_base_driver-msg:Clothesline instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Clothesline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:state-val is deprecated.  Use mobile_base_driver-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Clothesline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:distance-val is deprecated.  Use mobile_base_driver-msg:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Clothesline>)))
    "Constants for message type '<Clothesline>"
  '((:NOTHING . 0)
    (:SOMETHING . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Clothesline)))
    "Constants for message type 'Clothesline"
  '((:NOTHING . 0)
    (:SOMETHING . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Clothesline>) ostream)
  "Serializes a message object of type '<Clothesline>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Clothesline>) istream)
  "Deserializes a message object of type '<Clothesline>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Clothesline>)))
  "Returns string type for a message object of type '<Clothesline>"
  "mobile_base_driver/Clothesline")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Clothesline)))
  "Returns string type for a message object of type 'Clothesline"
  "mobile_base_driver/Clothesline")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Clothesline>)))
  "Returns md5sum for a message object of type '<Clothesline>"
  "86c594a65048cb5ab786bd284ae19bfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Clothesline)))
  "Returns md5sum for a message object of type 'Clothesline"
  "86c594a65048cb5ab786bd284ae19bfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Clothesline>)))
  "Returns full string definition for message of type '<Clothesline>"
  (cl:format cl:nil "# clothesline sensor state~%~%uint8 NOTHING   = 0~%uint8 SOMETHING = 1~%~%uint8   state~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Clothesline)))
  "Returns full string definition for message of type 'Clothesline"
  (cl:format cl:nil "# clothesline sensor state~%~%uint8 NOTHING   = 0~%uint8 SOMETHING = 1~%~%uint8   state~%float32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Clothesline>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Clothesline>))
  "Converts a ROS message object to a list"
  (cl:list 'Clothesline
    (cl:cons ':state (state msg))
    (cl:cons ':distance (distance msg))
))
