;; Auto-generated. Do not edit!


(when (boundp 'audio_msgs::Deaf)
  (if (not (find-package "AUDIO_MSGS"))
    (make-package "AUDIO_MSGS"))
  (shadow 'Deaf (find-package "AUDIO_MSGS")))
(unless (find-package "AUDIO_MSGS::DEAF")
  (make-package "AUDIO_MSGS::DEAF"))

(in-package "ROS")
;;//! \htmlinclude Deaf.msg.html


(defclass audio_msgs::Deaf
  :super ros::object
  :slots ())

(defmethod audio_msgs::Deaf
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

(setf (get audio_msgs::Deaf :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get audio_msgs::Deaf :datatype-) "audio_msgs/Deaf")
(setf (get audio_msgs::Deaf :definition-)
      "
")



(provide :audio_msgs/Deaf "d41d8cd98f00b204e9800998ecf8427e")


