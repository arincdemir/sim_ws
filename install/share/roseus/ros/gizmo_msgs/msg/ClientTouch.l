;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::ClientTouch)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'ClientTouch (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::CLIENTTOUCH")
  (make-package "GIZMO_MSGS::CLIENTTOUCH"))

(in-package "ROS")
;;//! \htmlinclude ClientTouch.msg.html


(defclass gizmo_msgs::ClientTouch
  :super ros::object
  :slots (_request_id _x _y ))

(defmethod gizmo_msgs::ClientTouch
  (:init
   (&key
    ((:request_id __request_id) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _request_id (string __request_id))
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:request_id
   (&optional __request_id)
   (if __request_id (setq _request_id __request_id)) _request_id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; string _request_id
    4 (length _request_id)
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _request_id
       (write-long (length _request_id) s) (princ _request_id s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _request_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gizmo_msgs::ClientTouch :md5sum-) "610826be44921ea1b77cfd12a76976f0")
(setf (get gizmo_msgs::ClientTouch :datatype-) "gizmo_msgs/ClientTouch")
(setf (get gizmo_msgs::ClientTouch :definition-)
      "string request_id
float32 x
float32 y

")



(provide :gizmo_msgs/ClientTouch "610826be44921ea1b77cfd12a76976f0")


