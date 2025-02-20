;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::ListFields)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'ListFields (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::LISTFIELDS")
  (make-package "GIZMO_MSGS::LISTFIELDS"))
(unless (find-package "GIZMO_MSGS::LISTFIELDSREQUEST")
  (make-package "GIZMO_MSGS::LISTFIELDSREQUEST"))
(unless (find-package "GIZMO_MSGS::LISTFIELDSRESPONSE")
  (make-package "GIZMO_MSGS::LISTFIELDSRESPONSE"))

(in-package "ROS")



(if (not (find-package "AUDIO_MSGS"))
  (ros::roseus-add-msgs "audio_msgs"))


(defclass gizmo_msgs::ListFieldsRequest
  :super ros::object
  :slots ())

(defmethod gizmo_msgs::ListFieldsRequest
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

(defclass gizmo_msgs::ListFieldsResponse
  :super ros::object
  :slots (_fields ))

(defmethod gizmo_msgs::ListFieldsResponse
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

(defclass gizmo_msgs::ListFields
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::ListFields :md5sum-) "83d03de94261ba4e29b909e51c50d482")
(setf (get gizmo_msgs::ListFields :datatype-) "gizmo_msgs/ListFields")
(setf (get gizmo_msgs::ListFields :request) gizmo_msgs::ListFieldsRequest)
(setf (get gizmo_msgs::ListFields :response) gizmo_msgs::ListFieldsResponse)

(defmethod gizmo_msgs::ListFieldsRequest
  (:response () (instance gizmo_msgs::ListFieldsResponse :init)))

(setf (get gizmo_msgs::ListFieldsRequest :md5sum-) "83d03de94261ba4e29b909e51c50d482")
(setf (get gizmo_msgs::ListFieldsRequest :datatype-) "gizmo_msgs/ListFieldsRequest")
(setf (get gizmo_msgs::ListFieldsRequest :definition-)
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

(setf (get gizmo_msgs::ListFieldsResponse :md5sum-) "83d03de94261ba4e29b909e51c50d482")
(setf (get gizmo_msgs::ListFieldsResponse :datatype-) "gizmo_msgs/ListFieldsResponse")
(setf (get gizmo_msgs::ListFieldsResponse :definition-)
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



(provide :gizmo_msgs/ListFields "83d03de94261ba4e29b909e51c50d482")


