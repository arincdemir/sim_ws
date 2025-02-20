;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::WakeUp)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'WakeUp (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::WAKEUP")
  (make-package "GIZMO_MSGS::WAKEUP"))
(unless (find-package "GIZMO_MSGS::WAKEUPREQUEST")
  (make-package "GIZMO_MSGS::WAKEUPREQUEST"))
(unless (find-package "GIZMO_MSGS::WAKEUPRESPONSE")
  (make-package "GIZMO_MSGS::WAKEUPRESPONSE"))

(in-package "ROS")





(defclass gizmo_msgs::WakeUpRequest
  :super ros::object
  :slots ())

(defmethod gizmo_msgs::WakeUpRequest
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

(defclass gizmo_msgs::WakeUpResponse
  :super ros::object
  :slots (_state ))

(defmethod gizmo_msgs::WakeUpResponse
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

(defclass gizmo_msgs::WakeUp
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::WakeUp :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get gizmo_msgs::WakeUp :datatype-) "gizmo_msgs/WakeUp")
(setf (get gizmo_msgs::WakeUp :request) gizmo_msgs::WakeUpRequest)
(setf (get gizmo_msgs::WakeUp :response) gizmo_msgs::WakeUpResponse)

(defmethod gizmo_msgs::WakeUpRequest
  (:response () (instance gizmo_msgs::WakeUpResponse :init)))

(setf (get gizmo_msgs::WakeUpRequest :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get gizmo_msgs::WakeUpRequest :datatype-) "gizmo_msgs/WakeUpRequest")
(setf (get gizmo_msgs::WakeUpRequest :definition-)
      "---
string state
")

(setf (get gizmo_msgs::WakeUpResponse :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get gizmo_msgs::WakeUpResponse :datatype-) "gizmo_msgs/WakeUpResponse")
(setf (get gizmo_msgs::WakeUpResponse :definition-)
      "---
string state
")



(provide :gizmo_msgs/WakeUp "af6d3a99f0fbeb66d3248fa4b3e675fb")


