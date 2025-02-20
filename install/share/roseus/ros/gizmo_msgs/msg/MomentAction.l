;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::MomentAction)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'MomentAction (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::MOMENTACTION")
  (make-package "GIZMO_MSGS::MOMENTACTION"))

(in-package "ROS")
;;//! \htmlinclude MomentAction.msg.html


(defclass gizmo_msgs::MomentAction
  :super ros::object
  :slots (_event _uuid ))

(defmethod gizmo_msgs::MomentAction
  (:init
   (&key
    ((:event __event) "")
    ((:uuid __uuid) "")
    )
   (send-super :init)
   (setq _event (string __event))
   (setq _uuid (string __uuid))
   self)
  (:event
   (&optional __event)
   (if __event (setq _event __event)) _event)
  (:uuid
   (&optional __uuid)
   (if __uuid (setq _uuid __uuid)) _uuid)
  (:serialization-length
   ()
   (+
    ;; string _event
    4 (length _event)
    ;; string _uuid
    4 (length _uuid)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _event
       (write-long (length _event) s) (princ _event s)
     ;; string _uuid
       (write-long (length _uuid) s) (princ _uuid s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _event
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _event (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _uuid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _uuid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gizmo_msgs::MomentAction :md5sum-) "c9dc0fac8b817df8f7b99ae1839315e4")
(setf (get gizmo_msgs::MomentAction :datatype-) "gizmo_msgs/MomentAction")
(setf (get gizmo_msgs::MomentAction :definition-)
      "string event
string uuid

")



(provide :gizmo_msgs/MomentAction "c9dc0fac8b817df8f7b99ae1839315e4")


