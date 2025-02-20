; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-msg)


;//! \htmlinclude ChestLED.msg.html

(cl:defclass <ChestLED> (roslisp-msg-protocol:ros-message)
  ((array
    :reader array
    :initarg :array
    :type (cl:vector std_msgs-msg:ColorRGBA)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:ColorRGBA :initial-element (cl:make-instance 'std_msgs-msg:ColorRGBA))))
)

(cl:defclass ChestLED (<ChestLED>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChestLED>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChestLED)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-msg:<ChestLED> is deprecated: use gizmo_msgs-msg:ChestLED instead.")))

(cl:ensure-generic-function 'array-val :lambda-list '(m))
(cl:defmethod array-val ((m <ChestLED>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-msg:array-val is deprecated.  Use gizmo_msgs-msg:array instead.")
  (array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChestLED>) ostream)
  "Serializes a message object of type '<ChestLED>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChestLED>) istream)
  "Deserializes a message object of type '<ChestLED>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:ColorRGBA))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChestLED>)))
  "Returns string type for a message object of type '<ChestLED>"
  "gizmo_msgs/ChestLED")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChestLED)))
  "Returns string type for a message object of type 'ChestLED"
  "gizmo_msgs/ChestLED")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChestLED>)))
  "Returns md5sum for a message object of type '<ChestLED>"
  "00ea539b8abace8c98c145055575f66f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChestLED)))
  "Returns md5sum for a message object of type 'ChestLED"
  "00ea539b8abace8c98c145055575f66f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChestLED>)))
  "Returns full string definition for message of type '<ChestLED>"
  (cl:format cl:nil "std_msgs/ColorRGBA[] array~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChestLED)))
  "Returns full string definition for message of type 'ChestLED"
  (cl:format cl:nil "std_msgs/ColorRGBA[] array~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChestLED>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChestLED>))
  "Converts a ROS message object to a list"
  (cl:list 'ChestLED
    (cl:cons ':array (array msg))
))
