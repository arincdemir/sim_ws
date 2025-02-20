;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::Asleep)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'Asleep (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::ASLEEP")
  (make-package "GIZMO_MSGS::ASLEEP"))

(in-package "ROS")
;;//! \htmlinclude Asleep.msg.html


(defclass gizmo_msgs::Asleep
  :super ros::object
  :slots ())

(defmethod gizmo_msgs::Asleep
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

(setf (get gizmo_msgs::Asleep :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get gizmo_msgs::Asleep :datatype-) "gizmo_msgs/Asleep")
(setf (get gizmo_msgs::Asleep :definition-)
      "
")



(provide :gizmo_msgs/Asleep "d41d8cd98f00b204e9800998ecf8427e")


