; Auto-generated. Do not edit!


(cl:in-package audio_msgs-srv)


;//! \htmlinclude GetDirection-request.msg.html

(cl:defclass <GetDirection-request> (roslisp-msg-protocol:ros-message)
  ((threshold
    :reader threshold
    :initarg :threshold
    :type cl:fixnum
    :initform 0)
   (ms_duration
    :reader ms_duration
    :initarg :ms_duration
    :type cl:fixnum
    :initform 0)
   (ms_delay
    :reader ms_delay
    :initarg :ms_delay
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetDirection-request (<GetDirection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDirection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDirection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_msgs-srv:<GetDirection-request> is deprecated: use audio_msgs-srv:GetDirection-request instead.")))

(cl:ensure-generic-function 'threshold-val :lambda-list '(m))
(cl:defmethod threshold-val ((m <GetDirection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-srv:threshold-val is deprecated.  Use audio_msgs-srv:threshold instead.")
  (threshold m))

(cl:ensure-generic-function 'ms_duration-val :lambda-list '(m))
(cl:defmethod ms_duration-val ((m <GetDirection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-srv:ms_duration-val is deprecated.  Use audio_msgs-srv:ms_duration instead.")
  (ms_duration m))

(cl:ensure-generic-function 'ms_delay-val :lambda-list '(m))
(cl:defmethod ms_delay-val ((m <GetDirection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-srv:ms_delay-val is deprecated.  Use audio_msgs-srv:ms_delay instead.")
  (ms_delay m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDirection-request>) ostream)
  "Serializes a message object of type '<GetDirection-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'threshold)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ms_duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ms_duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ms_delay)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ms_delay)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDirection-request>) istream)
  "Deserializes a message object of type '<GetDirection-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'threshold)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ms_duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ms_duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ms_delay)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ms_delay)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDirection-request>)))
  "Returns string type for a service object of type '<GetDirection-request>"
  "audio_msgs/GetDirectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDirection-request)))
  "Returns string type for a service object of type 'GetDirection-request"
  "audio_msgs/GetDirectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDirection-request>)))
  "Returns md5sum for a message object of type '<GetDirection-request>"
  "18df3bbfde541a22f50d99a6830ed9b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDirection-request)))
  "Returns md5sum for a message object of type 'GetDirection-request"
  "18df3bbfde541a22f50d99a6830ed9b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDirection-request>)))
  "Returns full string definition for message of type '<GetDirection-request>"
  (cl:format cl:nil "uint8 threshold~%uint16 ms_duration~%uint16 ms_delay~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDirection-request)))
  "Returns full string definition for message of type 'GetDirection-request"
  (cl:format cl:nil "uint8 threshold~%uint16 ms_duration~%uint16 ms_delay~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDirection-request>))
  (cl:+ 0
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDirection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDirection-request
    (cl:cons ':threshold (threshold msg))
    (cl:cons ':ms_duration (ms_duration msg))
    (cl:cons ':ms_delay (ms_delay msg))
))
;//! \htmlinclude GetDirection-response.msg.html

(cl:defclass <GetDirection-response> (roslisp-msg-protocol:ros-message)
  ((direction
    :reader direction
    :initarg :direction
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (relative_angle
    :reader relative_angle
    :initarg :relative_angle
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetDirection-response (<GetDirection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetDirection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetDirection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name audio_msgs-srv:<GetDirection-response> is deprecated: use audio_msgs-srv:GetDirection-response instead.")))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <GetDirection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-srv:direction-val is deprecated.  Use audio_msgs-srv:direction instead.")
  (direction m))

(cl:ensure-generic-function 'relative_angle-val :lambda-list '(m))
(cl:defmethod relative_angle-val ((m <GetDirection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader audio_msgs-srv:relative_angle-val is deprecated.  Use audio_msgs-srv:relative_angle instead.")
  (relative_angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetDirection-response>) ostream)
  "Serializes a message object of type '<GetDirection-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'direction) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relative_angle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'relative_angle)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetDirection-response>) istream)
  "Deserializes a message object of type '<GetDirection-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'direction) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'relative_angle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'relative_angle)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetDirection-response>)))
  "Returns string type for a service object of type '<GetDirection-response>"
  "audio_msgs/GetDirectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDirection-response)))
  "Returns string type for a service object of type 'GetDirection-response"
  "audio_msgs/GetDirectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetDirection-response>)))
  "Returns md5sum for a message object of type '<GetDirection-response>"
  "18df3bbfde541a22f50d99a6830ed9b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetDirection-response)))
  "Returns md5sum for a message object of type 'GetDirection-response"
  "18df3bbfde541a22f50d99a6830ed9b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetDirection-response>)))
  "Returns full string definition for message of type '<GetDirection-response>"
  (cl:format cl:nil "geometry_msgs/Vector3 direction~%uint16 relative_angle~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetDirection-response)))
  "Returns full string definition for message of type 'GetDirection-response"
  (cl:format cl:nil "geometry_msgs/Vector3 direction~%uint16 relative_angle~%~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetDirection-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'direction))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetDirection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetDirection-response
    (cl:cons ':direction (direction msg))
    (cl:cons ':relative_angle (relative_angle msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetDirection)))
  'GetDirection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetDirection)))
  'GetDirection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetDirection)))
  "Returns string type for a service object of type '<GetDirection>"
  "audio_msgs/GetDirection")