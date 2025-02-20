;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::MomentActions)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'MomentActions (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::MOMENTACTIONS")
  (make-package "GIZMO_MSGS::MOMENTACTIONS"))

(in-package "ROS")
;;//! \htmlinclude MomentActions.msg.html


(defclass gizmo_msgs::MomentActions
  :super ros::object
  :slots (_actions ))

(defmethod gizmo_msgs::MomentActions
  (:init
   (&key
    ((:actions __actions) ())
    )
   (send-super :init)
   (setq _actions __actions)
   self)
  (:actions
   (&rest __actions)
   (if (keywordp (car __actions))
       (send* _actions __actions)
     (progn
       (if __actions (setq _actions (car __actions)))
       _actions)))
  (:serialization-length
   ()
   (+
    ;; gizmo_msgs/MomentAction[] _actions
    (apply #'+ (send-all _actions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; gizmo_msgs/MomentAction[] _actions
     (write-long (length _actions) s)
     (dolist (elem _actions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; gizmo_msgs/MomentAction[] _actions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actions (let (r) (dotimes (i n) (push (instance gizmo_msgs::MomentAction :init) r)) r))
     (dolist (elem- _actions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gizmo_msgs::MomentActions :md5sum-) "6d12004285292c1609e1a1a3054cc536")
(setf (get gizmo_msgs::MomentActions :datatype-) "gizmo_msgs/MomentActions")
(setf (get gizmo_msgs::MomentActions :definition-)
      "MomentAction[] actions

================================================================================
MSG: gizmo_msgs/MomentAction
string event
string uuid

")



(provide :gizmo_msgs/MomentActions "6d12004285292c1609e1a1a3054cc536")


