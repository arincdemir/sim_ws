;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::RecordBagfileGoal)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'RecordBagfileGoal (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::RECORDBAGFILEGOAL")
  (make-package "GIZMO_MSGS::RECORDBAGFILEGOAL"))

(in-package "ROS")
;;//! \htmlinclude RecordBagfileGoal.msg.html


(defclass gizmo_msgs::RecordBagfileGoal
  :super ros::object
  :slots (_mode ))

(defmethod gizmo_msgs::RecordBagfileGoal
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

(setf (get gizmo_msgs::RecordBagfileGoal :md5sum-) "e84dc3ad5dc323bb64f0aca01c2d1eef")
(setf (get gizmo_msgs::RecordBagfileGoal :datatype-) "gizmo_msgs/RecordBagfileGoal")
(setf (get gizmo_msgs::RecordBagfileGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# mode is 'mapping' or 'localization' or 'stopped'
string mode

")



(provide :gizmo_msgs/RecordBagfileGoal "e84dc3ad5dc323bb64f0aca01c2d1eef")


