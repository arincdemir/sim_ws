; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude BatteryCapacity.msg.html

(cl:defclass <BatteryCapacity> (roslisp-msg-protocol:ros-message)
  ((mAh
    :reader mAh
    :initarg :mAh
    :type cl:fixnum
    :initform 0)
   (pct
    :reader pct
    :initarg :pct
    :type cl:fixnum
    :initform 0)
   (rounded_pct
    :reader rounded_pct
    :initarg :rounded_pct
    :type cl:fixnum
    :initform 0))
)

(cl:defclass BatteryCapacity (<BatteryCapacity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BatteryCapacity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BatteryCapacity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<BatteryCapacity> is deprecated: use mobile_base_driver-msg:BatteryCapacity instead.")))

(cl:ensure-generic-function 'mAh-val :lambda-list '(m))
(cl:defmethod mAh-val ((m <BatteryCapacity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:mAh-val is deprecated.  Use mobile_base_driver-msg:mAh instead.")
  (mAh m))

(cl:ensure-generic-function 'pct-val :lambda-list '(m))
(cl:defmethod pct-val ((m <BatteryCapacity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:pct-val is deprecated.  Use mobile_base_driver-msg:pct instead.")
  (pct m))

(cl:ensure-generic-function 'rounded_pct-val :lambda-list '(m))
(cl:defmethod rounded_pct-val ((m <BatteryCapacity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:rounded_pct-val is deprecated.  Use mobile_base_driver-msg:rounded_pct instead.")
  (rounded_pct m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BatteryCapacity>) ostream)
  "Serializes a message object of type '<BatteryCapacity>"
  (cl:let* ((signed (cl:slot-value msg 'mAh)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pct)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rounded_pct)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BatteryCapacity>) istream)
  "Deserializes a message object of type '<BatteryCapacity>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mAh) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pct) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rounded_pct) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BatteryCapacity>)))
  "Returns string type for a message object of type '<BatteryCapacity>"
  "mobile_base_driver/BatteryCapacity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BatteryCapacity)))
  "Returns string type for a message object of type 'BatteryCapacity"
  "mobile_base_driver/BatteryCapacity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BatteryCapacity>)))
  "Returns md5sum for a message object of type '<BatteryCapacity>"
  "44e1b0249db4fca04e974c31a68c58b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BatteryCapacity)))
  "Returns md5sum for a message object of type 'BatteryCapacity"
  "44e1b0249db4fca04e974c31a68c58b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BatteryCapacity>)))
  "Returns full string definition for message of type '<BatteryCapacity>"
  (cl:format cl:nil "int16 mAh~%int8 pct~%int8 rounded_pct # capacity percentage estimate, rounded to the nearest 5 and~%                 # subjected to hysteresis so it can only change if the value has~%                 # changed by at least 5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BatteryCapacity)))
  "Returns full string definition for message of type 'BatteryCapacity"
  (cl:format cl:nil "int16 mAh~%int8 pct~%int8 rounded_pct # capacity percentage estimate, rounded to the nearest 5 and~%                 # subjected to hysteresis so it can only change if the value has~%                 # changed by at least 5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BatteryCapacity>))
  (cl:+ 0
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BatteryCapacity>))
  "Converts a ROS message object to a list"
  (cl:list 'BatteryCapacity
    (cl:cons ':mAh (mAh msg))
    (cl:cons ':pct (pct msg))
    (cl:cons ':rounded_pct (rounded_pct msg))
))
