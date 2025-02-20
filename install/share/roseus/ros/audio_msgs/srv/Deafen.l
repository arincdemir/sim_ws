;; Auto-generated. Do not edit!


(when (boundp 'audio_msgs::Deafen)
  (if (not (find-package "AUDIO_MSGS"))
    (make-package "AUDIO_MSGS"))
  (shadow 'Deafen (find-package "AUDIO_MSGS")))
(unless (find-package "AUDIO_MSGS::DEAFEN")
  (make-package "AUDIO_MSGS::DEAFEN"))
(unless (find-package "AUDIO_MSGS::DEAFENREQUEST")
  (make-package "AUDIO_MSGS::DEAFENREQUEST"))
(unless (find-package "AUDIO_MSGS::DEAFENRESPONSE")
  (make-package "AUDIO_MSGS::DEAFENRESPONSE"))

(in-package "ROS")





(defclass audio_msgs::DeafenRequest
  :super ros::object
  :slots ())

(defmethod audio_msgs::DeafenRequest
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

(defclass audio_msgs::DeafenResponse
  :super ros::object
  :slots (_state ))

(defmethod audio_msgs::DeafenResponse
  (:init
   (&key
    ((:state __state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass audio_msgs::Deafen
  :super ros::object
  :slots ())

(setf (get audio_msgs::Deafen :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get audio_msgs::Deafen :datatype-) "audio_msgs/Deafen")
(setf (get audio_msgs::Deafen :request) audio_msgs::DeafenRequest)
(setf (get audio_msgs::Deafen :response) audio_msgs::DeafenResponse)

(defmethod audio_msgs::DeafenRequest
  (:response () (instance audio_msgs::DeafenResponse :init)))

(setf (get audio_msgs::DeafenRequest :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get audio_msgs::DeafenRequest :datatype-) "audio_msgs/DeafenRequest")
(setf (get audio_msgs::DeafenRequest :definition-)
      "---
string state

")

(setf (get audio_msgs::DeafenResponse :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get audio_msgs::DeafenResponse :datatype-) "audio_msgs/DeafenResponse")
(setf (get audio_msgs::DeafenResponse :definition-)
      "---
string state

")



(provide :audio_msgs/Deafen "af6d3a99f0fbeb66d3248fa4b3e675fb")


