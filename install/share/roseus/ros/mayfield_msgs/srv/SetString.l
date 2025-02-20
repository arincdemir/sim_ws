;; Auto-generated. Do not edit!


(when (boundp 'mayfield_msgs::SetString)
  (if (not (find-package "MAYFIELD_MSGS"))
    (make-package "MAYFIELD_MSGS"))
  (shadow 'SetString (find-package "MAYFIELD_MSGS")))
(unless (find-package "MAYFIELD_MSGS::SETSTRING")
  (make-package "MAYFIELD_MSGS::SETSTRING"))
(unless (find-package "MAYFIELD_MSGS::SETSTRINGREQUEST")
  (make-package "MAYFIELD_MSGS::SETSTRINGREQUEST"))
(unless (find-package "MAYFIELD_MSGS::SETSTRINGRESPONSE")
  (make-package "MAYFIELD_MSGS::SETSTRINGRESPONSE"))

(in-package "ROS")





(defclass mayfield_msgs::SetStringRequest
  :super ros::object
  :slots (_data ))

(defmethod mayfield_msgs::SetStringRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mayfield_msgs::SetStringResponse
  :super ros::object
  :slots ())

(defmethod mayfield_msgs::SetStringResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mayfield_msgs::SetString
  :super ros::object
  :slots ())

(setf (get mayfield_msgs::SetString :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get mayfield_msgs::SetString :datatype-) "mayfield_msgs/SetString")
(setf (get mayfield_msgs::SetString :request) mayfield_msgs::SetStringRequest)
(setf (get mayfield_msgs::SetString :response) mayfield_msgs::SetStringResponse)

(defmethod mayfield_msgs::SetStringRequest
  (:response () (instance mayfield_msgs::SetStringResponse :init)))

(setf (get mayfield_msgs::SetStringRequest :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get mayfield_msgs::SetStringRequest :datatype-) "mayfield_msgs/SetStringRequest")
(setf (get mayfield_msgs::SetStringRequest :definition-)
      "string data
---

")

(setf (get mayfield_msgs::SetStringResponse :md5sum-) "992ce8a1687cec8c8bd883ec73ca41d1")
(setf (get mayfield_msgs::SetStringResponse :datatype-) "mayfield_msgs/SetStringResponse")
(setf (get mayfield_msgs::SetStringResponse :definition-)
      "string data
---

")



(provide :mayfield_msgs/SetString "992ce8a1687cec8c8bd883ec73ca41d1")


