;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::RomojiGoal)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'RomojiGoal (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::ROMOJIGOAL")
  (make-package "GIZMO_MSGS::ROMOJIGOAL"))

(in-package "ROS")
;;//! \htmlinclude RomojiGoal.msg.html


(defclass gizmo_msgs::RomojiGoal
  :super ros::object
  :slots (_name _sound _request_id ))

(defmethod gizmo_msgs::RomojiGoal
  (:init
   (&key
    ((:name __name) "")
    ((:sound __sound) nil)
    ((:request_id __request_id) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _sound __sound)
   (setq _request_id (string __request_id))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:sound
   (&optional (__sound :null))
   (if (not (eq __sound :null)) (setq _sound __sound)) _sound)
  (:request_id
   (&optional __request_id)
   (if __request_id (setq _request_id __request_id)) _request_id)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; bool _sound
    1
    ;; string _request_id
    4 (length _request_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; bool _sound
       (if _sound (write-byte -1 s) (write-byte 0 s))
     ;; string _request_id
       (write-long (length _request_id) s) (princ _request_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _sound
     (setq _sound (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _request_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _request_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gizmo_msgs::RomojiGoal :md5sum-) "e81e783d10916ab9bbf83e484eaeac29")
(setf (get gizmo_msgs::RomojiGoal :datatype-) "gizmo_msgs/RomojiGoal")
(setf (get gizmo_msgs::RomojiGoal :definition-)
      "# Name of romoji to play
string name
# Whether to play sound or not (if the animation has sounds)
bool sound
# Request ID of the animation
string request_id

")



(provide :gizmo_msgs/RomojiGoal "e81e783d10916ab9bbf83e484eaeac29")


