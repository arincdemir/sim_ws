;; Auto-generated. Do not edit!


(when (boundp 'audio_msgs::Snooze)
  (if (not (find-package "AUDIO_MSGS"))
    (make-package "AUDIO_MSGS"))
  (shadow 'Snooze (find-package "AUDIO_MSGS")))
(unless (find-package "AUDIO_MSGS::SNOOZE")
  (make-package "AUDIO_MSGS::SNOOZE"))
(unless (find-package "AUDIO_MSGS::SNOOZEREQUEST")
  (make-package "AUDIO_MSGS::SNOOZEREQUEST"))
(unless (find-package "AUDIO_MSGS::SNOOZERESPONSE")
  (make-package "AUDIO_MSGS::SNOOZERESPONSE"))

(in-package "ROS")





(defclass audio_msgs::SnoozeRequest
  :super ros::object
  :slots ())

(defmethod audio_msgs::SnoozeRequest
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

(defclass audio_msgs::SnoozeResponse
  :super ros::object
  :slots (_state ))

(defmethod audio_msgs::SnoozeResponse
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

(defclass audio_msgs::Snooze
  :super ros::object
  :slots ())

(setf (get audio_msgs::Snooze :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get audio_msgs::Snooze :datatype-) "audio_msgs/Snooze")
(setf (get audio_msgs::Snooze :request) audio_msgs::SnoozeRequest)
(setf (get audio_msgs::Snooze :response) audio_msgs::SnoozeResponse)

(defmethod audio_msgs::SnoozeRequest
  (:response () (instance audio_msgs::SnoozeResponse :init)))

(setf (get audio_msgs::SnoozeRequest :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get audio_msgs::SnoozeRequest :datatype-) "audio_msgs/SnoozeRequest")
(setf (get audio_msgs::SnoozeRequest :definition-)
      "---
string state

")

(setf (get audio_msgs::SnoozeResponse :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get audio_msgs::SnoozeResponse :datatype-) "audio_msgs/SnoozeResponse")
(setf (get audio_msgs::SnoozeResponse :definition-)
      "---
string state

")



(provide :audio_msgs/Snooze "af6d3a99f0fbeb66d3248fa4b3e675fb")


