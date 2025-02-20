;; Auto-generated. Do not edit!


(when (boundp 'mayfield_msgs::StringExchange)
  (if (not (find-package "MAYFIELD_MSGS"))
    (make-package "MAYFIELD_MSGS"))
  (shadow 'StringExchange (find-package "MAYFIELD_MSGS")))
(unless (find-package "MAYFIELD_MSGS::STRINGEXCHANGE")
  (make-package "MAYFIELD_MSGS::STRINGEXCHANGE"))
(unless (find-package "MAYFIELD_MSGS::STRINGEXCHANGEREQUEST")
  (make-package "MAYFIELD_MSGS::STRINGEXCHANGEREQUEST"))
(unless (find-package "MAYFIELD_MSGS::STRINGEXCHANGERESPONSE")
  (make-package "MAYFIELD_MSGS::STRINGEXCHANGERESPONSE"))

(in-package "ROS")





(defclass mayfield_msgs::StringExchangeRequest
  :super ros::object
  :slots (_in_str ))

(defmethod mayfield_msgs::StringExchangeRequest
  (:init
   (&key
    ((:in_str __in_str) "")
    )
   (send-super :init)
   (setq _in_str (string __in_str))
   self)
  (:in_str
   (&optional __in_str)
   (if __in_str (setq _in_str __in_str)) _in_str)
  (:serialization-length
   ()
   (+
    ;; string _in_str
    4 (length _in_str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _in_str
       (write-long (length _in_str) s) (princ _in_str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _in_str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _in_str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mayfield_msgs::StringExchangeResponse
  :super ros::object
  :slots (_out_str ))

(defmethod mayfield_msgs::StringExchangeResponse
  (:init
   (&key
    ((:out_str __out_str) "")
    )
   (send-super :init)
   (setq _out_str (string __out_str))
   self)
  (:out_str
   (&optional __out_str)
   (if __out_str (setq _out_str __out_str)) _out_str)
  (:serialization-length
   ()
   (+
    ;; string _out_str
    4 (length _out_str)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _out_str
       (write-long (length _out_str) s) (princ _out_str s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _out_str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _out_str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mayfield_msgs::StringExchange
  :super ros::object
  :slots ())

(setf (get mayfield_msgs::StringExchange :md5sum-) "8b07386faeaa10fd20f5d838aa59f460")
(setf (get mayfield_msgs::StringExchange :datatype-) "mayfield_msgs/StringExchange")
(setf (get mayfield_msgs::StringExchange :request) mayfield_msgs::StringExchangeRequest)
(setf (get mayfield_msgs::StringExchange :response) mayfield_msgs::StringExchangeResponse)

(defmethod mayfield_msgs::StringExchangeRequest
  (:response () (instance mayfield_msgs::StringExchangeResponse :init)))

(setf (get mayfield_msgs::StringExchangeRequest :md5sum-) "8b07386faeaa10fd20f5d838aa59f460")
(setf (get mayfield_msgs::StringExchangeRequest :datatype-) "mayfield_msgs/StringExchangeRequest")
(setf (get mayfield_msgs::StringExchangeRequest :definition-)
      "string in_str
---
string out_str

")

(setf (get mayfield_msgs::StringExchangeResponse :md5sum-) "8b07386faeaa10fd20f5d838aa59f460")
(setf (get mayfield_msgs::StringExchangeResponse :datatype-) "mayfield_msgs/StringExchangeResponse")
(setf (get mayfield_msgs::StringExchangeResponse :definition-)
      "string in_str
---
string out_str

")



(provide :mayfield_msgs/StringExchange "8b07386faeaa10fd20f5d838aa59f460")


