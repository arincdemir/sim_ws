; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude Motor.msg.html

(cl:defclass <Motor> (roslisp-msg-protocol:ros-message)
  ((stalled
    :reader stalled
    :initarg :stalled
    :type cl:boolean
    :initform cl:nil)
   (pushed
    :reader pushed
    :initarg :pushed
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Motor (<Motor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Motor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Motor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<Motor> is deprecated: use mobile_base_driver-msg:Motor instead.")))

(cl:ensure-generic-function 'stalled-val :lambda-list '(m))
(cl:defmethod stalled-val ((m <Motor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:stalled-val is deprecated.  Use mobile_base_driver-msg:stalled instead.")
  (stalled m))

(cl:ensure-generic-function 'pushed-val :lambda-list '(m))
(cl:defmethod pushed-val ((m <Motor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:pushed-val is deprecated.  Use mobile_base_driver-msg:pushed instead.")
  (pushed m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Motor>)))
    "Constants for message type '<Motor>"
  '((:RIGHTWHEEL . 0)
    (:LEFTWHEEL . 1)
    (:PAN . 2)
    (:TILT . 3)
    (:EYES . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Motor)))
    "Constants for message type 'Motor"
  '((:RIGHTWHEEL . 0)
    (:LEFTWHEEL . 1)
    (:PAN . 2)
    (:TILT . 3)
    (:EYES . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Motor>) ostream)
  "Serializes a message object of type '<Motor>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stalled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pushed) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Motor>) istream)
  "Deserializes a message object of type '<Motor>"
    (cl:setf (cl:slot-value msg 'stalled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pushed) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Motor>)))
  "Returns string type for a message object of type '<Motor>"
  "mobile_base_driver/Motor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Motor)))
  "Returns string type for a message object of type 'Motor"
  "mobile_base_driver/Motor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Motor>)))
  "Returns md5sum for a message object of type '<Motor>"
  "474302a9ee5ae83e0d6191474935a690")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Motor)))
  "Returns md5sum for a message object of type 'Motor"
  "474302a9ee5ae83e0d6191474935a690")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Motor>)))
  "Returns full string definition for message of type '<Motor>"
  (cl:format cl:nil "# Provides a motor state~%~%# motor~%uint8 RIGHTWHEEL     = 0~%uint8 LEFTWHEEL      = 1~%uint8 PAN            = 2~%uint8 TILT           = 3~%uint8 EYES           = 4~%~%bool  stalled~%bool  pushed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Motor)))
  "Returns full string definition for message of type 'Motor"
  (cl:format cl:nil "# Provides a motor state~%~%# motor~%uint8 RIGHTWHEEL     = 0~%uint8 LEFTWHEEL      = 1~%uint8 PAN            = 2~%uint8 TILT           = 3~%uint8 EYES           = 4~%~%bool  stalled~%bool  pushed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Motor>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Motor>))
  "Converts a ROS message object to a list"
  (cl:list 'Motor
    (cl:cons ':stalled (stalled msg))
    (cl:cons ':pushed (pushed msg))
))
