;; Auto-generated. Do not edit!


(when (boundp 'audio_msgs::WakeUp)
  (if (not (find-package "AUDIO_MSGS"))
    (make-package "AUDIO_MSGS"))
  (shadow 'WakeUp (find-package "AUDIO_MSGS")))
(unless (find-package "AUDIO_MSGS::WAKEUP")
  (make-package "AUDIO_MSGS::WAKEUP"))
(unless (find-package "AUDIO_MSGS::WAKEUPREQUEST")
  (make-package "AUDIO_MSGS::WAKEUPREQUEST"))
(unless (find-package "AUDIO_MSGS::WAKEUPRESPONSE")
  (make-package "AUDIO_MSGS::WAKEUPRESPONSE"))

(in-package "ROS")





(defclass audio_msgs::WakeUpRequest
  :super ros::object
  :slots ())

(defmethod audio_msgs::WakeUpRequest
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

(defclass audio_msgs::WakeUpResponse
  :super ros::object
  :slots (_state ))

(defmethod audio_msgs::WakeUpResponse
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

(defclass audio_msgs::WakeUp
  :super ros::object
  :slots ())

(setf (get audio_msgs::WakeUp :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get audio_msgs::WakeUp :datatype-) "audio_msgs/WakeUp")
(setf (get audio_msgs::WakeUp :request) audio_msgs::WakeUpRequest)
(setf (get audio_msgs::WakeUp :response) audio_msgs::WakeUpResponse)

(defmethod audio_msgs::WakeUpRequest
  (:response () (instance audio_msgs::WakeUpResponse :init)))

(setf (get audio_msgs::WakeUpRequest :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get audio_msgs::WakeUpRequest :datatype-) "audio_msgs/WakeUpRequest")
(setf (get audio_msgs::WakeUpRequest :definition-)
      "---
string state
")

(setf (get audio_msgs::WakeUpResponse :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get audio_msgs::WakeUpResponse :datatype-) "audio_msgs/WakeUpResponse")
(setf (get audio_msgs::WakeUpResponse :definition-)
      "---
string state
")



(provide :audio_msgs/WakeUp "af6d3a99f0fbeb66d3248fa4b3e675fb")


