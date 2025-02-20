; Auto-generated. Do not edit!


(cl:in-package gizmo_msgs-srv)


;//! \htmlinclude PhotoCapture-request.msg.html

(cl:defclass <PhotoCapture-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass PhotoCapture-request (<PhotoCapture-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PhotoCapture-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PhotoCapture-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<PhotoCapture-request> is deprecated: use gizmo_msgs-srv:PhotoCapture-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PhotoCapture-request>) ostream)
  "Serializes a message object of type '<PhotoCapture-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PhotoCapture-request>) istream)
  "Deserializes a message object of type '<PhotoCapture-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PhotoCapture-request>)))
  "Returns string type for a service object of type '<PhotoCapture-request>"
  "gizmo_msgs/PhotoCaptureRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PhotoCapture-request)))
  "Returns string type for a service object of type 'PhotoCapture-request"
  "gizmo_msgs/PhotoCaptureRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PhotoCapture-request>)))
  "Returns md5sum for a message object of type '<PhotoCapture-request>"
  "8c9a314071e9327ffee25d026549122a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PhotoCapture-request)))
  "Returns md5sum for a message object of type 'PhotoCapture-request"
  "8c9a314071e9327ffee25d026549122a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PhotoCapture-request>)))
  "Returns full string definition for message of type '<PhotoCapture-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PhotoCapture-request)))
  "Returns full string definition for message of type 'PhotoCapture-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PhotoCapture-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PhotoCapture-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PhotoCapture-request
))
;//! \htmlinclude PhotoCapture-response.msg.html

(cl:defclass <PhotoCapture-response> (roslisp-msg-protocol:ros-message)
  ((image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage)))
)

(cl:defclass PhotoCapture-response (<PhotoCapture-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PhotoCapture-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PhotoCapture-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gizmo_msgs-srv:<PhotoCapture-response> is deprecated: use gizmo_msgs-srv:PhotoCapture-response instead.")))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <PhotoCapture-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gizmo_msgs-srv:image-val is deprecated.  Use gizmo_msgs-srv:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PhotoCapture-response>) ostream)
  "Serializes a message object of type '<PhotoCapture-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PhotoCapture-response>) istream)
  "Deserializes a message object of type '<PhotoCapture-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PhotoCapture-response>)))
  "Returns string type for a service object of type '<PhotoCapture-response>"
  "gizmo_msgs/PhotoCaptureResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PhotoCapture-response)))
  "Returns string type for a service object of type 'PhotoCapture-response"
  "gizmo_msgs/PhotoCaptureResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PhotoCapture-response>)))
  "Returns md5sum for a message object of type '<PhotoCapture-response>"
  "8c9a314071e9327ffee25d026549122a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PhotoCapture-response)))
  "Returns md5sum for a message object of type 'PhotoCapture-response"
  "8c9a314071e9327ffee25d026549122a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PhotoCapture-response>)))
  "Returns full string definition for message of type '<PhotoCapture-response>"
  (cl:format cl:nil "sensor_msgs/CompressedImage image~%~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PhotoCapture-response)))
  "Returns full string definition for message of type 'PhotoCapture-response"
  (cl:format cl:nil "sensor_msgs/CompressedImage image~%~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PhotoCapture-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PhotoCapture-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PhotoCapture-response
    (cl:cons ':image (image msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PhotoCapture)))
  'PhotoCapture-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PhotoCapture)))
  'PhotoCapture-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PhotoCapture)))
  "Returns string type for a service object of type '<PhotoCapture>"
  "gizmo_msgs/PhotoCapture")