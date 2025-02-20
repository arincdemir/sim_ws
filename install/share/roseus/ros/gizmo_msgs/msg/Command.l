;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::Command)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'Command (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::COMMAND")
  (make-package "GIZMO_MSGS::COMMAND"))

(in-package "ROS")
;;//! \htmlinclude Command.msg.html
(if (not (find-package "MAYFIELD_MSGS"))
  (ros::roseus-add-msgs "mayfield_msgs"))


(defclass gizmo_msgs::Command
  :super ros::object
  :slots (_name _params ))

(defmethod gizmo_msgs::Command
  (:init
   (&key
    ((:name __name) "")
    ((:params __params) ())
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _params __params)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:params
   (&rest __params)
   (if (keywordp (car __params))
       (send* _params __params)
     (progn
       (if __params (setq _params (car __params)))
       _params)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; mayfield_msgs/KeyValue[] _params
    (apply #'+ (send-all _params :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; mayfield_msgs/KeyValue[] _params
     (write-long (length _params) s)
     (dolist (elem _params)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; mayfield_msgs/KeyValue[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (let (r) (dotimes (i n) (push (instance mayfield_msgs::KeyValue :init) r)) r))
     (dolist (elem- _params)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gizmo_msgs::Command :md5sum-) "390c1250bfe4c9f56e75739bb0b6475f")
(setf (get gizmo_msgs::Command :datatype-) "gizmo_msgs/Command")
(setf (get gizmo_msgs::Command :definition-)
      "string name
mayfield_msgs/KeyValue[] params

================================================================================
MSG: mayfield_msgs/KeyValue
# Key value pair, with values represented as strings
string k
string v

")



(provide :gizmo_msgs/Command "390c1250bfe4c9f56e75739bb0b6475f")


