;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::CalibrationPathFeedback)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'CalibrationPathFeedback (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::CALIBRATIONPATHFEEDBACK")
  (make-package "GIZMO_MSGS::CALIBRATIONPATHFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude CalibrationPathFeedback.msg.html


(defclass gizmo_msgs::CalibrationPathFeedback
  :super ros::object
  :slots ())

(defmethod gizmo_msgs::CalibrationPathFeedback
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

(setf (get gizmo_msgs::CalibrationPathFeedback :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get gizmo_msgs::CalibrationPathFeedback :datatype-) "gizmo_msgs/CalibrationPathFeedback")
(setf (get gizmo_msgs::CalibrationPathFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======





")



(provide :gizmo_msgs/CalibrationPathFeedback "d41d8cd98f00b204e9800998ecf8427e")


