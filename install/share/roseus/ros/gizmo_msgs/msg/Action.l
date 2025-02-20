;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::Action)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'Action (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::ACTION")
  (make-package "GIZMO_MSGS::ACTION"))

(in-package "ROS")
;;//! \htmlinclude Action.msg.html


(defclass gizmo_msgs::Action
  :super ros::object
  :slots (_task _reaction ))

(defmethod gizmo_msgs::Action
  (:init
   (&key
    ((:task __task) "")
    ((:reaction __reaction) "")
    )
   (send-super :init)
   (setq _task (string __task))
   (setq _reaction (string __reaction))
   self)
  (:task
   (&optional __task)
   (if __task (setq _task __task)) _task)
  (:reaction
   (&optional __reaction)
   (if __reaction (setq _reaction __reaction)) _reaction)
  (:serialization-length
   ()
   (+
    ;; string _task
    4 (length _task)
    ;; string _reaction
    4 (length _reaction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _task
       (write-long (length _task) s) (princ _task s)
     ;; string _reaction
       (write-long (length _reaction) s) (princ _reaction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _task
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _task (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reaction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reaction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gizmo_msgs::Action :md5sum-) "94680f3b84515f8e73b6bd5aa20b4f8d")
(setf (get gizmo_msgs::Action :datatype-) "gizmo_msgs/Action")
(setf (get gizmo_msgs::Action :definition-)
      "# ROS message to broadcast the robot's current task and/or reaction
string task
string reaction

")



(provide :gizmo_msgs/Action "94680f3b84515f8e73b6bd5aa20b4f8d")


