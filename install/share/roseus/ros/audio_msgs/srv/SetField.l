;; Auto-generated. Do not edit!


(when (boundp 'audio_msgs::SetField)
  (if (not (find-package "AUDIO_MSGS"))
    (make-package "AUDIO_MSGS"))
  (shadow 'SetField (find-package "AUDIO_MSGS")))
(unless (find-package "AUDIO_MSGS::SETFIELD")
  (make-package "AUDIO_MSGS::SETFIELD"))
(unless (find-package "AUDIO_MSGS::SETFIELDREQUEST")
  (make-package "AUDIO_MSGS::SETFIELDREQUEST"))
(unless (find-package "AUDIO_MSGS::SETFIELDRESPONSE")
  (make-package "AUDIO_MSGS::SETFIELDRESPONSE"))

(in-package "ROS")





(defclass audio_msgs::SetFieldRequest
  :super ros::object
  :slots (_name _json_value ))

(defmethod audio_msgs::SetFieldRequest
  (:init
   (&key
    ((:name __name) "")
    ((:json_value __json_value) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _json_value (string __json_value))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:json_value
   (&optional __json_value)
   (if __json_value (setq _json_value __json_value)) _json_value)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _json_value
    4 (length _json_value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _json_value
       (write-long (length _json_value) s) (princ _json_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _json_value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _json_value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass audio_msgs::SetFieldResponse
  :super ros::object
  :slots ())

(defmethod audio_msgs::SetFieldResponse
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

(defclass audio_msgs::SetField
  :super ros::object
  :slots ())

(setf (get audio_msgs::SetField :md5sum-) "bed64f0c585e577c90cce651a3e4553f")
(setf (get audio_msgs::SetField :datatype-) "audio_msgs/SetField")
(setf (get audio_msgs::SetField :request) audio_msgs::SetFieldRequest)
(setf (get audio_msgs::SetField :response) audio_msgs::SetFieldResponse)

(defmethod audio_msgs::SetFieldRequest
  (:response () (instance audio_msgs::SetFieldResponse :init)))

(setf (get audio_msgs::SetFieldRequest :md5sum-) "bed64f0c585e577c90cce651a3e4553f")
(setf (get audio_msgs::SetFieldRequest :datatype-) "audio_msgs/SetFieldRequest")
(setf (get audio_msgs::SetFieldRequest :definition-)
      "string name
string json_value
---

")

(setf (get audio_msgs::SetFieldResponse :md5sum-) "bed64f0c585e577c90cce651a3e4553f")
(setf (get audio_msgs::SetFieldResponse :datatype-) "audio_msgs/SetFieldResponse")
(setf (get audio_msgs::SetFieldResponse :definition-)
      "string name
string json_value
---

")



(provide :audio_msgs/SetField "bed64f0c585e577c90cce651a3e4553f")


