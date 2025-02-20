;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::GetField)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'GetField (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::GETFIELD")
  (make-package "GIZMO_MSGS::GETFIELD"))
(unless (find-package "GIZMO_MSGS::GETFIELDREQUEST")
  (make-package "GIZMO_MSGS::GETFIELDREQUEST"))
(unless (find-package "GIZMO_MSGS::GETFIELDRESPONSE")
  (make-package "GIZMO_MSGS::GETFIELDRESPONSE"))

(in-package "ROS")





(defclass gizmo_msgs::GetFieldRequest
  :super ros::object
  :slots (_name ))

(defmethod gizmo_msgs::GetFieldRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gizmo_msgs::GetFieldResponse
  :super ros::object
  :slots (_json_value ))

(defmethod gizmo_msgs::GetFieldResponse
  (:init
   (&key
    ((:json_value __json_value) "")
    )
   (send-super :init)
   (setq _json_value (string __json_value))
   self)
  (:json_value
   (&optional __json_value)
   (if __json_value (setq _json_value __json_value)) _json_value)
  (:serialization-length
   ()
   (+
    ;; string _json_value
    4 (length _json_value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _json_value
       (write-long (length _json_value) s) (princ _json_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _json_value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _json_value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass gizmo_msgs::GetField
  :super ros::object
  :slots ())

(setf (get gizmo_msgs::GetField :md5sum-) "fefc1eaa409232c39ae3f696ddd678d5")
(setf (get gizmo_msgs::GetField :datatype-) "gizmo_msgs/GetField")
(setf (get gizmo_msgs::GetField :request) gizmo_msgs::GetFieldRequest)
(setf (get gizmo_msgs::GetField :response) gizmo_msgs::GetFieldResponse)

(defmethod gizmo_msgs::GetFieldRequest
  (:response () (instance gizmo_msgs::GetFieldResponse :init)))

(setf (get gizmo_msgs::GetFieldRequest :md5sum-) "fefc1eaa409232c39ae3f696ddd678d5")
(setf (get gizmo_msgs::GetFieldRequest :datatype-) "gizmo_msgs/GetFieldRequest")
(setf (get gizmo_msgs::GetFieldRequest :definition-)
      "string name
---
string json_value

")

(setf (get gizmo_msgs::GetFieldResponse :md5sum-) "fefc1eaa409232c39ae3f696ddd678d5")
(setf (get gizmo_msgs::GetFieldResponse :datatype-) "gizmo_msgs/GetFieldResponse")
(setf (get gizmo_msgs::GetFieldResponse :definition-)
      "string name
---
string json_value

")



(provide :gizmo_msgs/GetField "fefc1eaa409232c39ae3f696ddd678d5")


