;; Auto-generated. Do not edit!


(when (boundp 'audio_msgs::Asleep)
  (if (not (find-package "AUDIO_MSGS"))
    (make-package "AUDIO_MSGS"))
  (shadow 'Asleep (find-package "AUDIO_MSGS")))
(unless (find-package "AUDIO_MSGS::ASLEEP")
  (make-package "AUDIO_MSGS::ASLEEP"))

(in-package "ROS")
;;//! \htmlinclude Asleep.msg.html


(defclass audio_msgs::Asleep
  :super ros::object
  :slots ())

(defmethod audio_msgs::Asleep
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

(setf (get audio_msgs::Asleep :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get audio_msgs::Asleep :datatype-) "audio_msgs/Asleep")
(setf (get audio_msgs::Asleep :definition-)
      "
")



(provide :audio_msgs/Asleep "d41d8cd98f00b204e9800998ecf8427e")


