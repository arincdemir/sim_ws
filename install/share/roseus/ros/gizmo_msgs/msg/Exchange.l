;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::Exchange)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'Exchange (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::EXCHANGE")
  (make-package "GIZMO_MSGS::EXCHANGE"))

(in-package "ROS")
;;//! \htmlinclude Exchange.msg.html


(defclass gizmo_msgs::Exchange
  :super ros::object
  :slots (_commands _error _transcription ))

(defmethod gizmo_msgs::Exchange
  (:init
   (&key
    ((:commands __commands) ())
    ((:error __error) "")
    ((:transcription __transcription) "")
    )
   (send-super :init)
   (setq _commands __commands)
   (setq _error (string __error))
   (setq _transcription (string __transcription))
   self)
  (:commands
   (&rest __commands)
   (if (keywordp (car __commands))
       (send* _commands __commands)
     (progn
       (if __commands (setq _commands (car __commands)))
       _commands)))
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:transcription
   (&optional __transcription)
   (if __transcription (setq _transcription __transcription)) _transcription)
  (:serialization-length
   ()
   (+
    ;; gizmo_msgs/SoundHoundCommand[] _commands
    (apply #'+ (send-all _commands :serialization-length)) 4
    ;; string _error
    4 (length _error)
    ;; string _transcription
    4 (length _transcription)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gizmo_msgs/SoundHoundCommand[] _commands
     (write-long (length _commands) s)
     (dolist (elem _commands)
       (send elem :serialize s)
       )
     ;; string _error
       (write-long (length _error) s) (princ _error s)
     ;; string _transcription
       (write-long (length _transcription) s) (princ _transcription s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gizmo_msgs/SoundHoundCommand[] _commands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _commands (let (r) (dotimes (i n) (push (instance gizmo_msgs::SoundHoundCommand :init) r)) r))
     (dolist (elem- _commands)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _error
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _transcription
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _transcription (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gizmo_msgs::Exchange :md5sum-) "d6f8a41761adaba28718c4d86c1aaad1")
(setf (get gizmo_msgs::Exchange :datatype-) "gizmo_msgs/Exchange")
(setf (get gizmo_msgs::Exchange :definition-)
      "SoundHoundCommand[] commands
string error
string transcription

================================================================================
MSG: gizmo_msgs/SoundHoundCommand
string name
mayfield_msgs/KeyValue[] params

================================================================================
MSG: mayfield_msgs/KeyValue
# Key value pair, with values represented as strings
string k
string v

")



(provide :gizmo_msgs/Exchange "d6f8a41761adaba28718c4d86c1aaad1")


