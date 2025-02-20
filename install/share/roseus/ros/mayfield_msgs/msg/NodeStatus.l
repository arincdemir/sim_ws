;; Auto-generated. Do not edit!


(when (boundp 'mayfield_msgs::NodeStatus)
  (if (not (find-package "MAYFIELD_MSGS"))
    (make-package "MAYFIELD_MSGS"))
  (shadow 'NodeStatus (find-package "MAYFIELD_MSGS")))
(unless (find-package "MAYFIELD_MSGS::NODESTATUS")
  (make-package "MAYFIELD_MSGS::NODESTATUS"))

(in-package "ROS")
;;//! \htmlinclude NodeStatus.msg.html


(defclass mayfield_msgs::NodeStatus
  :super ros::object
  :slots (_node_name _online ))

(defmethod mayfield_msgs::NodeStatus
  (:init
   (&key
    ((:node_name __node_name) "")
    ((:online __online) nil)
    )
   (send-super :init)
   (setq _node_name (string __node_name))
   (setq _online __online)
   self)
  (:node_name
   (&optional __node_name)
   (if __node_name (setq _node_name __node_name)) _node_name)
  (:online
   (&optional (__online :null))
   (if (not (eq __online :null)) (setq _online __online)) _online)
  (:serialization-length
   ()
   (+
    ;; string _node_name
    4 (length _node_name)
    ;; bool _online
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _node_name
       (write-long (length _node_name) s) (princ _node_name s)
     ;; bool _online
       (if _online (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _node_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _node_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _online
     (setq _online (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mayfield_msgs::NodeStatus :md5sum-) "2938585155f971aea1e199f84d3637b6")
(setf (get mayfield_msgs::NodeStatus :datatype-) "mayfield_msgs/NodeStatus")
(setf (get mayfield_msgs::NodeStatus :definition-)
      "string node_name
bool online

")



(provide :mayfield_msgs/NodeStatus "2938585155f971aea1e199f84d3637b6")


