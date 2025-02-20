;; Auto-generated. Do not edit!


(when (boundp 'audio_msgs::GetField)
  (if (not (find-package "AUDIO_MSGS"))
    (make-package "AUDIO_MSGS"))
  (shadow 'GetField (find-package "AUDIO_MSGS")))
(unless (find-package "AUDIO_MSGS::GETFIELD")
  (make-package "AUDIO_MSGS::GETFIELD"))
(unless (find-package "AUDIO_MSGS::GETFIELDREQUEST")
  (make-package "AUDIO_MSGS::GETFIELDREQUEST"))
(unless (find-package "AUDIO_MSGS::GETFIELDRESPONSE")
  (make-package "AUDIO_MSGS::GETFIELDRESPONSE"))

(in-package "ROS")





(defclass audio_msgs::GetFieldRequest
  :super ros::object
  :slots (_name ))

(defmethod audio_msgs::GetFieldRequest
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

(defclass audio_msgs::GetFieldResponse
  :super ros::object
  :slots (_json_value ))

(defmethod audio_msgs::GetFieldResponse
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

(defclass audio_msgs::GetField
  :super ros::object
  :slots ())

(setf (get audio_msgs::GetField :md5sum-) "fefc1eaa409232c39ae3f696ddd678d5")
(setf (get audio_msgs::GetField :datatype-) "audio_msgs/GetField")
(setf (get audio_msgs::GetField :request) audio_msgs::GetFieldRequest)
(setf (get audio_msgs::GetField :response) audio_msgs::GetFieldResponse)

(defmethod audio_msgs::GetFieldRequest
  (:response () (instance audio_msgs::GetFieldResponse :init)))

(setf (get audio_msgs::GetFieldRequest :md5sum-) "fefc1eaa409232c39ae3f696ddd678d5")
(setf (get audio_msgs::GetFieldRequest :datatype-) "audio_msgs/GetFieldRequest")
(setf (get audio_msgs::GetFieldRequest :definition-)
      "string name
---
string json_value

")

(setf (get audio_msgs::GetFieldResponse :md5sum-) "fefc1eaa409232c39ae3f696ddd678d5")
(setf (get audio_msgs::GetFieldResponse :datatype-) "audio_msgs/GetFieldResponse")
(setf (get audio_msgs::GetFieldResponse :definition-)
      "string name
---
string json_value

")



(provide :audio_msgs/GetField "fefc1eaa409232c39ae3f696ddd678d5")


