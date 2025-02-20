;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::Deaf)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'Deaf (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::DEAF")
  (make-package "GIZMO_MSGS::DEAF"))

(in-package "ROS")
;;//! \htmlinclude Deaf.msg.html


(defclass gizmo_msgs::Deaf
  :super ros::object
  :slots ())

(defmethod gizmo_msgs::Deaf
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

(setf (get gizmo_msgs::Deaf :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get gizmo_msgs::Deaf :datatype-) "gizmo_msgs/Deaf")
(setf (get gizmo_msgs::Deaf :definition-)
      "
")



(provide :gizmo_msgs/Deaf "d41d8cd98f00b204e9800998ecf8427e")


