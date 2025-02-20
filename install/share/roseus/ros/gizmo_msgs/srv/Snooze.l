;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::Snooze)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'Snooze (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::SNOOZE")
  (make-package "GIZMO_MSGS::SNOOZE"))
(unless (find-package "GIZMO_MSGS::SNOOZEREQUEST")
  (make-package "GIZMO_MSGS::SNOOZEREQUEST"))
(unless (find-package "GIZMO_MSGS::SNOOZERESPONSE")
  (make-package "GIZMO_MSGS::SNOOZERESPONSE"))

(in-package "ROS")





(defclass gizmo_msgs::SnoozeRequest
  :super ros::object
  :slots ())

(defmethod gizmo_msgs::SnoozeRequest
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

(defclass gizmo_msgs::SnoozeResponse
  :super ros::object
  :slots (_state ))

(defmethod gizmo_msgs::SnoozeResponse
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

(defclass gizmo_msgs::Snooze
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::Snooze :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get gizmo_msgs::Snooze :datatype-) "gizmo_msgs/Snooze")
(setf (get gizmo_msgs::Snooze :request) gizmo_msgs::SnoozeRequest)
(setf (get gizmo_msgs::Snooze :response) gizmo_msgs::SnoozeResponse)

(defmethod gizmo_msgs::SnoozeRequest
  (:response () (instance gizmo_msgs::SnoozeResponse :init)))

(setf (get gizmo_msgs::SnoozeRequest :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get gizmo_msgs::SnoozeRequest :datatype-) "gizmo_msgs/SnoozeRequest")
(setf (get gizmo_msgs::SnoozeRequest :definition-)
      "---
string state

")

(setf (get gizmo_msgs::SnoozeResponse :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get gizmo_msgs::SnoozeResponse :datatype-) "gizmo_msgs/SnoozeResponse")
(setf (get gizmo_msgs::SnoozeResponse :definition-)
      "---
string state

")



(provide :gizmo_msgs/Snooze "af6d3a99f0fbeb66d3248fa4b3e675fb")


