;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::ChestLED)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'ChestLED (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::CHESTLED")
  (make-package "GIZMO_MSGS::CHESTLED"))

(in-package "ROS")
;;//! \htmlinclude ChestLED.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gizmo_msgs::ChestLED
  :super ros::object
  :slots (_array ))

(defmethod gizmo_msgs::ChestLED
  (:init
   (&key
    ((:array __array) ())
    )
   (send-super :init)
   (setq _array __array)
   self)
  (:array
   (&rest __array)
   (if (keywordp (car __array))
       (send* _array __array)
     (progn
       (if __array (setq _array (car __array)))
       _array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/ColorRGBA[] _array
    (apply #'+ (send-all _array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/ColorRGBA[] _array
     (write-long (length _array) s)
     (dolist (elem _array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/ColorRGBA[] _array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _array (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get gizmo_msgs::ChestLED :md5sum-) "00ea539b8abace8c98c145055575f66f")
(setf (get gizmo_msgs::ChestLED :datatype-) "gizmo_msgs/ChestLED")
(setf (get gizmo_msgs::ChestLED :definition-)
      "std_msgs/ColorRGBA[] array

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :gizmo_msgs/ChestLED "00ea539b8abace8c98c145055575f66f")


