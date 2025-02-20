;; Auto-generated. Do not edit!


(when (boundp 'audio_msgs::ListFields)
  (if (not (find-package "AUDIO_MSGS"))
    (make-package "AUDIO_MSGS"))
  (shadow 'ListFields (find-package "AUDIO_MSGS")))
(unless (find-package "AUDIO_MSGS::LISTFIELDS")
  (make-package "AUDIO_MSGS::LISTFIELDS"))
(unless (find-package "AUDIO_MSGS::LISTFIELDSREQUEST")
  (make-package "AUDIO_MSGS::LISTFIELDSREQUEST"))
(unless (find-package "AUDIO_MSGS::LISTFIELDSRESPONSE")
  (make-package "AUDIO_MSGS::LISTFIELDSRESPONSE"))

(in-package "ROS")





(defclass audio_msgs::ListFieldsRequest
  :super ros::object
  :slots ())

(defmethod audio_msgs::ListFieldsRequest
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

(defclass audio_msgs::ListFieldsResponse
  :super ros::object
  :slots (_fields ))

(defmethod audio_msgs::ListFieldsResponse
  (:init
   (&key
    ((:fields __fields) ())
    )
   (send-super :init)
   (setq _fields __fields)
   self)
  (:fields
   (&rest __fields)
   (if (keywordp (car __fields))
       (send* _fields __fields)
     (progn
       (if __fields (setq _fields (car __fields)))
       _fields)))
  (:serialization-length
   ()
   (+
    ;; audio_msgs/Field[] _fields
    (apply #'+ (send-all _fields :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; audio_msgs/Field[] _fields
     (write-long (length _fields) s)
     (dolist (elem _fields)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; audio_msgs/Field[] _fields
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fields (let (r) (dotimes (i n) (push (instance audio_msgs::Field :init) r)) r))
     (dolist (elem- _fields)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass audio_msgs::ListFields
  :super ros::object
  :slots ())

(setf (get audio_msgs::ListFields :md5sum-) "83d03de94261ba4e29b909e51c50d482")
(setf (get audio_msgs::ListFields :datatype-) "audio_msgs/ListFields")
(setf (get audio_msgs::ListFields :request) audio_msgs::ListFieldsRequest)
(setf (get audio_msgs::ListFields :response) audio_msgs::ListFieldsResponse)

(defmethod audio_msgs::ListFieldsRequest
  (:response () (instance audio_msgs::ListFieldsResponse :init)))

(setf (get audio_msgs::ListFieldsRequest :md5sum-) "83d03de94261ba4e29b909e51c50d482")
(setf (get audio_msgs::ListFieldsRequest :datatype-) "audio_msgs/ListFieldsRequest")
(setf (get audio_msgs::ListFieldsRequest :definition-)
      "---
audio_msgs/Field[] fields


================================================================================
MSG: audio_msgs/Field
string name
string type
uint32 length
string description
string mode
")

(setf (get audio_msgs::ListFieldsResponse :md5sum-) "83d03de94261ba4e29b909e51c50d482")
(setf (get audio_msgs::ListFieldsResponse :datatype-) "audio_msgs/ListFieldsResponse")
(setf (get audio_msgs::ListFieldsResponse :definition-)
      "---
audio_msgs/Field[] fields


================================================================================
MSG: audio_msgs/Field
string name
string type
uint32 length
string description
string mode
")



(provide :audio_msgs/ListFields "83d03de94261ba4e29b909e51c50d482")


