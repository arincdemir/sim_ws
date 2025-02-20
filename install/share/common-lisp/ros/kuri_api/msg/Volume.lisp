; Auto-generated. Do not edit!


(cl:in-package kuri_api-msg)


;//! \htmlinclude Volume.msg.html

(cl:defclass <Volume> (roslisp-msg-protocol:ros-message)
  ((level
    :reader level
    :initarg :level
    :type cl:fixnum
    :initform 0)
   (is_relative
    :reader is_relative
    :initarg :is_relative
    :type cl:boolean
    :initform cl:nil)
   (mute
    :reader mute
    :initarg :mute
    :type cl:boolean
    :initform cl:nil)
   (unmute
    :reader unmute
    :initarg :unmute
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Volume (<Volume>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Volume>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Volume)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name kuri_api-msg:<Volume> is deprecated: use kuri_api-msg:Volume instead.")))

(cl:ensure-generic-function 'level-val :lambda-list '(m))
(cl:defmethod level-val ((m <Volume>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kuri_api-msg:level-val is deprecated.  Use kuri_api-msg:level instead.")
  (level m))

(cl:ensure-generic-function 'is_relative-val :lambda-list '(m))
(cl:defmethod is_relative-val ((m <Volume>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kuri_api-msg:is_relative-val is deprecated.  Use kuri_api-msg:is_relative instead.")
  (is_relative m))

(cl:ensure-generic-function 'mute-val :lambda-list '(m))
(cl:defmethod mute-val ((m <Volume>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kuri_api-msg:mute-val is deprecated.  Use kuri_api-msg:mute instead.")
  (mute m))

(cl:ensure-generic-function 'unmute-val :lambda-list '(m))
(cl:defmethod unmute-val ((m <Volume>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader kuri_api-msg:unmute-val is deprecated.  Use kuri_api-msg:unmute instead.")
  (unmute m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Volume>) ostream)
  "Serializes a message object of type '<Volume>"
  (cl:let* ((signed (cl:slot-value msg 'level)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_relative) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mute) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'unmute) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Volume>) istream)
  "Deserializes a message object of type '<Volume>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'level) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'is_relative) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mute) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'unmute) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Volume>)))
  "Returns string type for a message object of type '<Volume>"
  "kuri_api/Volume")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Volume)))
  "Returns string type for a message object of type 'Volume"
  "kuri_api/Volume")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Volume>)))
  "Returns md5sum for a message object of type '<Volume>"
  "c2006af99be3d44213e306b5de119dfc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Volume)))
  "Returns md5sum for a message object of type 'Volume"
  "c2006af99be3d44213e306b5de119dfc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Volume>)))
  "Returns full string definition for message of type '<Volume>"
  (cl:format cl:nil "# Volume level~%# If is_relative is True, this adds to the current volume level~%# If is_relative is False, this sets the current volume level~%# Note: level is on the range [0:100], and will be clapmed appropriately~%# upon receipt of this message~%int16 level~%~%# Whether the level should be added to the current level or set absolutely~%bool is_relative~%~%# Mute and unmute~%# If either of these are set to true, the above values will not be used~%# Muting stores the volume level and sets the level to 0~%# Unmuting restores the volume level (or uses the default volume if no level~%# has been stored)~%bool mute~%bool unmute~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Volume)))
  "Returns full string definition for message of type 'Volume"
  (cl:format cl:nil "# Volume level~%# If is_relative is True, this adds to the current volume level~%# If is_relative is False, this sets the current volume level~%# Note: level is on the range [0:100], and will be clapmed appropriately~%# upon receipt of this message~%int16 level~%~%# Whether the level should be added to the current level or set absolutely~%bool is_relative~%~%# Mute and unmute~%# If either of these are set to true, the above values will not be used~%# Muting stores the volume level and sets the level to 0~%# Unmuting restores the volume level (or uses the default volume if no level~%# has been stored)~%bool mute~%bool unmute~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Volume>))
  (cl:+ 0
     2
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Volume>))
  "Converts a ROS message object to a list"
  (cl:list 'Volume
    (cl:cons ':level (level msg))
    (cl:cons ':is_relative (is_relative msg))
    (cl:cons ':mute (mute msg))
    (cl:cons ':unmute (unmute msg))
))
