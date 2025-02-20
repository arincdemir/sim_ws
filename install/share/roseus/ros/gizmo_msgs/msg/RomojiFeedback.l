;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::RomojiFeedback)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'RomojiFeedback (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::ROMOJIFEEDBACK")
  (make-package "GIZMO_MSGS::ROMOJIFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude RomojiFeedback.msg.html


(defclass gizmo_msgs::RomojiFeedback
  :super ros::object
  :slots (_request_id _feedback ))

(defmethod gizmo_msgs::RomojiFeedback
  (:init
   (&key
    ((:request_id __request_id) "")
    ((:feedback __feedback) "")
    )
   (send-super :init)
   (setq _request_id (string __request_id))
   (setq _feedback (string __feedback))
   self)
  (:request_id
   (&optional __request_id)
   (if __request_id (setq _request_id __request_id)) _request_id)
  (:feedback
   (&optional __feedback)
   (if __feedback (setq _feedback __feedback)) _feedback)
  (:serialization-length
   ()
   (+
    ;; string _request_id
    4 (length _request_id)
    ;; string _feedback
    4 (length _feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _request_id
       (write-long (length _request_id) s) (princ _request_id s)
     ;; string _feedback
       (write-long (length _feedback) s) (princ _feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _request_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gizmo_msgs::RomojiFeedback :md5sum-) "779c10426637afb40e1ff669a0a1211a")
(setf (get gizmo_msgs::RomojiFeedback :datatype-) "gizmo_msgs/RomojiFeedback")
(setf (get gizmo_msgs::RomojiFeedback :definition-)
      "string request_id
string feedback

")



(provide :gizmo_msgs/RomojiFeedback "779c10426637afb40e1ff669a0a1211a")


