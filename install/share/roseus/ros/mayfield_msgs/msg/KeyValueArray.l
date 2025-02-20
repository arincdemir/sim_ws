;; Auto-generated. Do not edit!


(when (boundp 'mayfield_msgs::KeyValueArray)
  (if (not (find-package "MAYFIELD_MSGS"))
    (make-package "MAYFIELD_MSGS"))
  (shadow 'KeyValueArray (find-package "MAYFIELD_MSGS")))
(unless (find-package "MAYFIELD_MSGS::KEYVALUEARRAY")
  (make-package "MAYFIELD_MSGS::KEYVALUEARRAY"))

(in-package "ROS")
;;//! \htmlinclude KeyValueArray.msg.html


(defclass mayfield_msgs::KeyValueArray
  :super ros::object
  :slots (_key_values ))

(defmethod mayfield_msgs::KeyValueArray
  (:init
   (&key
    ((:key_values __key_values) ())
    )
   (send-super :init)
   (setq _key_values __key_values)
   self)
  (:key_values
   (&rest __key_values)
   (if (keywordp (car __key_values))
       (send* _key_values __key_values)
     (progn
       (if __key_values (setq _key_values (car __key_values)))
       _key_values)))
  (:serialization-length
   ()
   (+
    ;; mayfield_msgs/KeyValue[] _key_values
    (apply #'+ (send-all _key_values :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mayfield_msgs/KeyValue[] _key_values
     (write-long (length _key_values) s)
     (dolist (elem _key_values)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mayfield_msgs/KeyValue[] _key_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _key_values (let (r) (dotimes (i n) (push (instance mayfield_msgs::KeyValue :init) r)) r))
     (dolist (elem- _key_values)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mayfield_msgs::KeyValueArray :md5sum-) "cefc47b26ef37767a965df2b47d24771")
(setf (get mayfield_msgs::KeyValueArray :datatype-) "mayfield_msgs/KeyValueArray")
(setf (get mayfield_msgs::KeyValueArray :definition-)
      "KeyValue[] key_values
================================================================================
MSG: mayfield_msgs/KeyValue
# Key value pair, with values represented as strings
string k
string v

")



(provide :mayfield_msgs/KeyValueArray "cefc47b26ef37767a965df2b47d24771")


