; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude WheelTrajPoint.msg.html

(cl:defclass <WheelTrajPoint> (roslisp-msg-protocol:ros-message)
  ((time_from_start
    :reader time_from_start
    :initarg :time_from_start
    :type cl:real
    :initform 0)
   (linear_vel
    :reader linear_vel
    :initarg :linear_vel
    :type cl:float
    :initform 0.0)
   (angular_vel
    :reader angular_vel
    :initarg :angular_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass WheelTrajPoint (<WheelTrajPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WheelTrajPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WheelTrajPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<WheelTrajPoint> is deprecated: use mobile_base_driver-msg:WheelTrajPoint instead.")))

(cl:ensure-generic-function 'time_from_start-val :lambda-list '(m))
(cl:defmethod time_from_start-val ((m <WheelTrajPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:time_from_start-val is deprecated.  Use mobile_base_driver-msg:time_from_start instead.")
  (time_from_start m))

(cl:ensure-generic-function 'linear_vel-val :lambda-list '(m))
(cl:defmethod linear_vel-val ((m <WheelTrajPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:linear_vel-val is deprecated.  Use mobile_base_driver-msg:linear_vel instead.")
  (linear_vel m))

(cl:ensure-generic-function 'angular_vel-val :lambda-list '(m))
(cl:defmethod angular_vel-val ((m <WheelTrajPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:angular_vel-val is deprecated.  Use mobile_base_driver-msg:angular_vel instead.")
  (angular_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WheelTrajPoint>) ostream)
  "Serializes a message object of type '<WheelTrajPoint>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'time_from_start)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'time_from_start) (cl:floor (cl:slot-value msg 'time_from_start)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'linear_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WheelTrajPoint>) istream)
  "Deserializes a message object of type '<WheelTrajPoint>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'time_from_start) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'linear_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_vel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WheelTrajPoint>)))
  "Returns string type for a message object of type '<WheelTrajPoint>"
  "mobile_base_driver/WheelTrajPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WheelTrajPoint)))
  "Returns string type for a message object of type 'WheelTrajPoint"
  "mobile_base_driver/WheelTrajPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WheelTrajPoint>)))
  "Returns md5sum for a message object of type '<WheelTrajPoint>"
  "83f621b6e10790ea4ea291815a52bf4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WheelTrajPoint)))
  "Returns md5sum for a message object of type 'WheelTrajPoint"
  "83f621b6e10790ea4ea291815a52bf4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WheelTrajPoint>)))
  "Returns full string definition for message of type '<WheelTrajPoint>"
  (cl:format cl:nil "duration time_from_start~%float64 linear_vel~%float64 angular_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WheelTrajPoint)))
  "Returns full string definition for message of type 'WheelTrajPoint"
  (cl:format cl:nil "duration time_from_start~%float64 linear_vel~%float64 angular_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WheelTrajPoint>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WheelTrajPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'WheelTrajPoint
    (cl:cons ':time_from_start (time_from_start msg))
    (cl:cons ':linear_vel (linear_vel msg))
    (cl:cons ':angular_vel (angular_vel msg))
))
