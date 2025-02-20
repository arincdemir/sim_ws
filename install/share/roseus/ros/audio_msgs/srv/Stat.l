;; Auto-generated. Do not edit!


(when (boundp 'audio_msgs::Stat)
  (if (not (find-package "AUDIO_MSGS"))
    (make-package "AUDIO_MSGS"))
  (shadow 'Stat (find-package "AUDIO_MSGS")))
(unless (find-package "AUDIO_MSGS::STAT")
  (make-package "AUDIO_MSGS::STAT"))
(unless (find-package "AUDIO_MSGS::STATREQUEST")
  (make-package "AUDIO_MSGS::STATREQUEST"))
(unless (find-package "AUDIO_MSGS::STATRESPONSE")
  (make-package "AUDIO_MSGS::STATRESPONSE"))

(in-package "ROS")





(defclass audio_msgs::StatRequest
  :super ros::object
  :slots ())

(defmethod audio_msgs::StatRequest
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

(defclass audio_msgs::StatResponse
  :super ros::object
  :slots (_state _direction ))

(defmethod audio_msgs::StatResponse
  (:init
   (&key
    ((:state __state) "")
    ((:direction __direction) "")
    )
   (send-super :init)
   (setq _state (string __state))
   (setq _direction (string __direction))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ;; string _direction
    4 (length _direction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass audio_msgs::Stat
  :super ros::object
  :slots ())

(setf (get audio_msgs::Stat :md5sum-) "6efbcf0c9bde4f3c542705ddc8687d07")
(setf (get audio_msgs::Stat :datatype-) "audio_msgs/Stat")
(setf (get audio_msgs::Stat :request) audio_msgs::StatRequest)
(setf (get audio_msgs::Stat :response) audio_msgs::StatResponse)

(defmethod audio_msgs::StatRequest
  (:response () (instance audio_msgs::StatResponse :init)))

(setf (get audio_msgs::StatRequest :md5sum-) "6efbcf0c9bde4f3c542705ddc8687d07")
(setf (get audio_msgs::StatRequest :datatype-) "audio_msgs/StatRequest")
(setf (get audio_msgs::StatRequest :definition-)
      "---
string state
string direction
")

(setf (get audio_msgs::StatResponse :md5sum-) "6efbcf0c9bde4f3c542705ddc8687d07")
(setf (get audio_msgs::StatResponse :datatype-) "audio_msgs/StatResponse")
(setf (get audio_msgs::StatResponse :definition-)
      "---
string state
string direction
")



(provide :audio_msgs/Stat "6efbcf0c9bde4f3c542705ddc8687d07")


