; Auto-generated. Do not edit!


(cl:in-package mobile_base_driver-msg)


;//! \htmlinclude Telescope.msg.html

(cl:defclass <Telescope> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (front_noise
    :reader front_noise
    :initarg :front_noise
    :type cl:boolean
    :initform cl:nil)
   (front_left
    :reader front_left
    :initarg :front_left
    :type cl:boolean
    :initform cl:nil)
   (front_right
    :reader front_right
    :initarg :front_right
    :type cl:boolean
    :initform cl:nil)
   (front_middle
    :reader front_middle
    :initarg :front_middle
    :type cl:boolean
    :initform cl:nil)
   (back_noise
    :reader back_noise
    :initarg :back_noise
    :type cl:boolean
    :initform cl:nil)
   (back_left
    :reader back_left
    :initarg :back_left
    :type cl:boolean
    :initform cl:nil)
   (back_right
    :reader back_right
    :initarg :back_right
    :type cl:boolean
    :initform cl:nil)
   (back_middle
    :reader back_middle
    :initarg :back_middle
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Telescope (<Telescope>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Telescope>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Telescope)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mobile_base_driver-msg:<Telescope> is deprecated: use mobile_base_driver-msg:Telescope instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Telescope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:header-val is deprecated.  Use mobile_base_driver-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'front_noise-val :lambda-list '(m))
(cl:defmethod front_noise-val ((m <Telescope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:front_noise-val is deprecated.  Use mobile_base_driver-msg:front_noise instead.")
  (front_noise m))

(cl:ensure-generic-function 'front_left-val :lambda-list '(m))
(cl:defmethod front_left-val ((m <Telescope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:front_left-val is deprecated.  Use mobile_base_driver-msg:front_left instead.")
  (front_left m))

(cl:ensure-generic-function 'front_right-val :lambda-list '(m))
(cl:defmethod front_right-val ((m <Telescope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:front_right-val is deprecated.  Use mobile_base_driver-msg:front_right instead.")
  (front_right m))

(cl:ensure-generic-function 'front_middle-val :lambda-list '(m))
(cl:defmethod front_middle-val ((m <Telescope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:front_middle-val is deprecated.  Use mobile_base_driver-msg:front_middle instead.")
  (front_middle m))

(cl:ensure-generic-function 'back_noise-val :lambda-list '(m))
(cl:defmethod back_noise-val ((m <Telescope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:back_noise-val is deprecated.  Use mobile_base_driver-msg:back_noise instead.")
  (back_noise m))

(cl:ensure-generic-function 'back_left-val :lambda-list '(m))
(cl:defmethod back_left-val ((m <Telescope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:back_left-val is deprecated.  Use mobile_base_driver-msg:back_left instead.")
  (back_left m))

(cl:ensure-generic-function 'back_right-val :lambda-list '(m))
(cl:defmethod back_right-val ((m <Telescope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:back_right-val is deprecated.  Use mobile_base_driver-msg:back_right instead.")
  (back_right m))

(cl:ensure-generic-function 'back_middle-val :lambda-list '(m))
(cl:defmethod back_middle-val ((m <Telescope>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mobile_base_driver-msg:back_middle-val is deprecated.  Use mobile_base_driver-msg:back_middle instead.")
  (back_middle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Telescope>) ostream)
  "Serializes a message object of type '<Telescope>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_noise) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front_middle) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'back_noise) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'back_left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'back_right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'back_middle) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Telescope>) istream)
  "Deserializes a message object of type '<Telescope>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'front_noise) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'front_middle) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'back_noise) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'back_left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'back_right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'back_middle) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Telescope>)))
  "Returns string type for a message object of type '<Telescope>"
  "mobile_base_driver/Telescope")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Telescope)))
  "Returns string type for a message object of type 'Telescope"
  "mobile_base_driver/Telescope")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Telescope>)))
  "Returns md5sum for a message object of type '<Telescope>"
  "d73db4ad7bf87689fa1b86ed4b74ff85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Telescope)))
  "Returns md5sum for a message object of type 'Telescope"
  "d73db4ad7bf87689fa1b86ed4b74ff85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Telescope>)))
  "Returns full string definition for message of type '<Telescope>"
  (cl:format cl:nil "Header header~%bool front_noise~%bool front_left~%bool front_right~%bool front_middle~%bool back_noise~%bool back_left~%bool back_right~%bool back_middle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Telescope)))
  "Returns full string definition for message of type 'Telescope"
  (cl:format cl:nil "Header header~%bool front_noise~%bool front_left~%bool front_right~%bool front_middle~%bool back_noise~%bool back_left~%bool back_right~%bool back_middle~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Telescope>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Telescope>))
  "Converts a ROS message object to a list"
  (cl:list 'Telescope
    (cl:cons ':header (header msg))
    (cl:cons ':front_noise (front_noise msg))
    (cl:cons ':front_left (front_left msg))
    (cl:cons ':front_right (front_right msg))
    (cl:cons ':front_middle (front_middle msg))
    (cl:cons ':back_noise (back_noise msg))
    (cl:cons ':back_left (back_left msg))
    (cl:cons ':back_right (back_right msg))
    (cl:cons ':back_middle (back_middle msg))
))
