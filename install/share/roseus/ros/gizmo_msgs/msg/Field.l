;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::Field)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'Field (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::FIELD")
  (make-package "GIZMO_MSGS::FIELD"))

(in-package "ROS")
;;//! \htmlinclude Field.msg.html


(defclass gizmo_msgs::Field
  :super ros::object
  :slots (_name _type _length _description _mode ))

(defmethod gizmo_msgs::Field
  (:init
   (&key
    ((:name __name) "")
    ((:type __type) "")
    ((:length __length) 0)
    ((:description __description) "")
    ((:mode __mode) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _type (string __type))
   (setq _length (round __length))
   (setq _description (string __description))
   (setq _mode (string __mode))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _type
    4 (length _type)
    ;; uint32 _length
    4
    ;; string _description
    4 (length _description)
    ;; string _mode
    4 (length _mode)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; uint32 _length
       (write-long _length s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gizmo_msgs::Field :md5sum-) "c5f99874fbe65807b9f7f41274d5feb1")
(setf (get gizmo_msgs::Field :datatype-) "gizmo_msgs/Field")
(setf (get gizmo_msgs::Field :definition-)
      "string name
string type
uint32 length
string description
string mode

")



(provide :gizmo_msgs/Field "c5f99874fbe65807b9f7f41274d5feb1")


