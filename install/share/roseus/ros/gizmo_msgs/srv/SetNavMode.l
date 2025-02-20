;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::SetNavMode)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'SetNavMode (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::SETNAVMODE")
  (make-package "GIZMO_MSGS::SETNAVMODE"))
(unless (find-package "GIZMO_MSGS::SETNAVMODEREQUEST")
  (make-package "GIZMO_MSGS::SETNAVMODEREQUEST"))
(unless (find-package "GIZMO_MSGS::SETNAVMODERESPONSE")
  (make-package "GIZMO_MSGS::SETNAVMODERESPONSE"))

(in-package "ROS")





(defclass gizmo_msgs::SetNavModeRequest
  :super ros::object
  :slots (_mode ))

(defmethod gizmo_msgs::SetNavModeRequest
  (:init
   (&key
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _mode (string __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gizmo_msgs::SetNavModeResponse
  :super ros::object
  :slots (_success ))

(defmethod gizmo_msgs::SetNavModeResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass gizmo_msgs::SetNavMode
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::SetNavMode :md5sum-) "939409827c5731ec5346c99677bd2a1d")
(setf (get gizmo_msgs::SetNavMode :datatype-) "gizmo_msgs/SetNavMode")
(setf (get gizmo_msgs::SetNavMode :request) gizmo_msgs::SetNavModeRequest)
(setf (get gizmo_msgs::SetNavMode :response) gizmo_msgs::SetNavModeResponse)

(defmethod gizmo_msgs::SetNavModeRequest
  (:response () (instance gizmo_msgs::SetNavModeResponse :init)))

(setf (get gizmo_msgs::SetNavModeRequest :md5sum-) "939409827c5731ec5346c99677bd2a1d")
(setf (get gizmo_msgs::SetNavModeRequest :datatype-) "gizmo_msgs/SetNavModeRequest")
(setf (get gizmo_msgs::SetNavModeRequest :definition-)
      "string mode
---
bool success

")

(setf (get gizmo_msgs::SetNavModeResponse :md5sum-) "939409827c5731ec5346c99677bd2a1d")
(setf (get gizmo_msgs::SetNavModeResponse :datatype-) "gizmo_msgs/SetNavModeResponse")
(setf (get gizmo_msgs::SetNavModeResponse :definition-)
      "string mode
---
bool success

")



(provide :gizmo_msgs/SetNavMode "939409827c5731ec5346c99677bd2a1d")


