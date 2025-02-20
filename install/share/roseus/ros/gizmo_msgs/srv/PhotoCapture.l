;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::PhotoCapture)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'PhotoCapture (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::PHOTOCAPTURE")
  (make-package "GIZMO_MSGS::PHOTOCAPTURE"))
(unless (find-package "GIZMO_MSGS::PHOTOCAPTUREREQUEST")
  (make-package "GIZMO_MSGS::PHOTOCAPTUREREQUEST"))
(unless (find-package "GIZMO_MSGS::PHOTOCAPTURERESPONSE")
  (make-package "GIZMO_MSGS::PHOTOCAPTURERESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass gizmo_msgs::PhotoCaptureRequest
  :super ros::object
  :slots ())

(defmethod gizmo_msgs::PhotoCaptureRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass gizmo_msgs::PhotoCaptureResponse
  :super ros::object
  :slots (_image ))

(defmethod gizmo_msgs::PhotoCaptureResponse
  (:init
   (&key
    ((:image __image) (instance sensor_msgs::CompressedImage :init))
    )
   (send-super :init)
   (setq _image __image)
   self)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/CompressedImage _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/CompressedImage _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/CompressedImage _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(defclass gizmo_msgs::PhotoCapture
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::PhotoCapture :md5sum-) "8c9a314071e9327ffee25d026549122a")
(setf (get gizmo_msgs::PhotoCapture :datatype-) "gizmo_msgs/PhotoCapture")
(setf (get gizmo_msgs::PhotoCapture :request) gizmo_msgs::PhotoCaptureRequest)
(setf (get gizmo_msgs::PhotoCapture :response) gizmo_msgs::PhotoCaptureResponse)

(defmethod gizmo_msgs::PhotoCaptureRequest
  (:response () (instance gizmo_msgs::PhotoCaptureResponse :init)))

(setf (get gizmo_msgs::PhotoCaptureRequest :md5sum-) "8c9a314071e9327ffee25d026549122a")
(setf (get gizmo_msgs::PhotoCaptureRequest :datatype-) "gizmo_msgs/PhotoCaptureRequest")
(setf (get gizmo_msgs::PhotoCaptureRequest :definition-)
      "---
sensor_msgs/CompressedImage image


================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")

(setf (get gizmo_msgs::PhotoCaptureResponse :md5sum-) "8c9a314071e9327ffee25d026549122a")
(setf (get gizmo_msgs::PhotoCaptureResponse :datatype-) "gizmo_msgs/PhotoCaptureResponse")
(setf (get gizmo_msgs::PhotoCaptureResponse :definition-)
      "---
sensor_msgs/CompressedImage image


================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
")



(provide :gizmo_msgs/PhotoCapture "8c9a314071e9327ffee25d026549122a")


