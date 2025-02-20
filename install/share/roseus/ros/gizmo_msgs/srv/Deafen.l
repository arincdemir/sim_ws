;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::Deafen)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'Deafen (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::DEAFEN")
  (make-package "GIZMO_MSGS::DEAFEN"))
(unless (find-package "GIZMO_MSGS::DEAFENREQUEST")
  (make-package "GIZMO_MSGS::DEAFENREQUEST"))
(unless (find-package "GIZMO_MSGS::DEAFENRESPONSE")
  (make-package "GIZMO_MSGS::DEAFENRESPONSE"))

(in-package "ROS")





(defclass gizmo_msgs::DeafenRequest
  :super ros::object
  :slots ())

(defmethod gizmo_msgs::DeafenRequest
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

(defclass gizmo_msgs::DeafenResponse
  :super ros::object
  :slots (_state ))

(defmethod gizmo_msgs::DeafenResponse
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

(defclass gizmo_msgs::Deafen
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::Deafen :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get gizmo_msgs::Deafen :datatype-) "gizmo_msgs/Deafen")
(setf (get gizmo_msgs::Deafen :request) gizmo_msgs::DeafenRequest)
(setf (get gizmo_msgs::Deafen :response) gizmo_msgs::DeafenResponse)

(defmethod gizmo_msgs::DeafenRequest
  (:response () (instance gizmo_msgs::DeafenResponse :init)))

(setf (get gizmo_msgs::DeafenRequest :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get gizmo_msgs::DeafenRequest :datatype-) "gizmo_msgs/DeafenRequest")
(setf (get gizmo_msgs::DeafenRequest :definition-)
      "---
string state

")

(setf (get gizmo_msgs::DeafenResponse :md5sum-) "af6d3a99f0fbeb66d3248fa4b3e675fb")
(setf (get gizmo_msgs::DeafenResponse :datatype-) "gizmo_msgs/DeafenResponse")
(setf (get gizmo_msgs::DeafenResponse :definition-)
      "---
string state

")



(provide :gizmo_msgs/Deafen "af6d3a99f0fbeb66d3248fa4b3e675fb")


