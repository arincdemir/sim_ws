;; Auto-generated. Do not edit!


(when (boundp 'vision_msgs::VisionQuery)
  (if (not (find-package "VISION_MSGS"))
    (make-package "VISION_MSGS"))
  (shadow 'VisionQuery (find-package "VISION_MSGS")))
(unless (find-package "VISION_MSGS::VISIONQUERY")
  (make-package "VISION_MSGS::VISIONQUERY"))
(unless (find-package "VISION_MSGS::VISIONQUERYREQUEST")
  (make-package "VISION_MSGS::VISIONQUERYREQUEST"))
(unless (find-package "VISION_MSGS::VISIONQUERYRESPONSE")
  (make-package "VISION_MSGS::VISIONQUERYRESPONSE"))

(in-package "ROS")



(if (not (find-package "MAYFIELD_MSGS"))
  (ros::roseus-add-msgs "mayfield_msgs"))


(defclass vision_msgs::VisionQueryRequest
  :super ros::object
  :slots (_module ))

(defmethod vision_msgs::VisionQueryRequest
  (:init
   (&key
    ((:module __module) "")
    )
   (send-super :init)
   (setq _module (string __module))
   self)
  (:module
   (&optional __module)
   (if __module (setq _module __module)) _module)
  (:serialization-length
   ()
   (+
    ;; string _module
    4 (length _module)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _module
       (write-long (length _module) s) (princ _module s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _module
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _module (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vision_msgs::VisionQueryResponse
  :super ros::object
  :slots (_params ))

(defmethod vision_msgs::VisionQueryResponse
  (:init
   (&key
    ((:params __params) ())
    )
   (send-super :init)
   (setq _params __params)
   self)
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
    ;; mayfield_msgs/KeyValue[] _params
    (apply #'+ (send-all _params :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mayfield_msgs/KeyValue[] _params
     (write-long (length _params) s)
     (dolist (elem _params)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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

(defclass vision_msgs::VisionQuery
  :super ros::object
  :slots ())

(setf (get vision_msgs::VisionQuery :md5sum-) "a18a49860895521a1824a72a6363fcaf")
(setf (get vision_msgs::VisionQuery :datatype-) "vision_msgs/VisionQuery")
(setf (get vision_msgs::VisionQuery :request) vision_msgs::VisionQueryRequest)
(setf (get vision_msgs::VisionQuery :response) vision_msgs::VisionQueryResponse)

(defmethod vision_msgs::VisionQueryRequest
  (:response () (instance vision_msgs::VisionQueryResponse :init)))

(setf (get vision_msgs::VisionQueryRequest :md5sum-) "a18a49860895521a1824a72a6363fcaf")
(setf (get vision_msgs::VisionQueryRequest :datatype-) "vision_msgs/VisionQueryRequest")
(setf (get vision_msgs::VisionQueryRequest :definition-)
      "string module
---
mayfield_msgs/KeyValue[] params


================================================================================
MSG: mayfield_msgs/KeyValue
# Key value pair, with values represented as strings
string k
string v
")

(setf (get vision_msgs::VisionQueryResponse :md5sum-) "a18a49860895521a1824a72a6363fcaf")
(setf (get vision_msgs::VisionQueryResponse :datatype-) "vision_msgs/VisionQueryResponse")
(setf (get vision_msgs::VisionQueryResponse :definition-)
      "string module
---
mayfield_msgs/KeyValue[] params


================================================================================
MSG: mayfield_msgs/KeyValue
# Key value pair, with values represented as strings
string k
string v
")



(provide :vision_msgs/VisionQuery "a18a49860895521a1824a72a6363fcaf")


