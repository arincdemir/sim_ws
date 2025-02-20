;; Auto-generated. Do not edit!


(when (boundp 'mayfield_msgs::KeyValue)
  (if (not (find-package "MAYFIELD_MSGS"))
    (make-package "MAYFIELD_MSGS"))
  (shadow 'KeyValue (find-package "MAYFIELD_MSGS")))
(unless (find-package "MAYFIELD_MSGS::KEYVALUE")
  (make-package "MAYFIELD_MSGS::KEYVALUE"))

(in-package "ROS")
;;//! \htmlinclude KeyValue.msg.html


(defclass mayfield_msgs::KeyValue
  :super ros::object
  :slots (_k _v ))

(defmethod mayfield_msgs::KeyValue
  (:init
   (&key
    ((:k __k) "")
    ((:v __v) "")
    )
   (send-super :init)
   (setq _k (string __k))
   (setq _v (string __v))
   self)
  (:k
   (&optional __k)
   (if __k (setq _k __k)) _k)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:serialization-length
   ()
   (+
    ;; string _k
    4 (length _k)
    ;; string _v
    4 (length _v)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _k
       (write-long (length _k) s) (princ _k s)
     ;; string _v
       (write-long (length _v) s) (princ _v s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _k
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _k (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _v
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _v (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get mayfield_msgs::KeyValue :md5sum-) "ecd078d493bbb685fc79824134b47497")
(setf (get mayfield_msgs::KeyValue :datatype-) "mayfield_msgs/KeyValue")
(setf (get mayfield_msgs::KeyValue :definition-)
      "# Key value pair, with values represented as strings
string k
string v

")



(provide :mayfield_msgs/KeyValue "ecd078d493bbb685fc79824134b47497")


