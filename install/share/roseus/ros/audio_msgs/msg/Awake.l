;; Auto-generated. Do not edit!


(when (boundp 'audio_msgs::Awake)
  (if (not (find-package "AUDIO_MSGS"))
    (make-package "AUDIO_MSGS"))
  (shadow 'Awake (find-package "AUDIO_MSGS")))
(unless (find-package "AUDIO_MSGS::AWAKE")
  (make-package "AUDIO_MSGS::AWAKE"))

(in-package "ROS")
;;//! \htmlinclude Awake.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass audio_msgs::Awake
  :super ros::object
  :slots (_direction _relative_angle _score ))

(defmethod audio_msgs::Awake
  (:init
   (&key
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    ((:relative_angle __relative_angle) 0)
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _direction __direction)
   (setq _relative_angle (round __relative_angle))
   (setq _score (float __score))
   self)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:relative_angle
   (&optional __relative_angle)
   (if __relative_angle (setq _relative_angle __relative_angle)) _relative_angle)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ;; uint16 _relative_angle
    2
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;; uint16 _relative_angle
       (write-word _relative_angle s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; uint16 _relative_angle
     (setq _relative_angle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get audio_msgs::Awake :md5sum-) "b67c4c1f2cbb59c79b9f56d85e60a268")
(setf (get audio_msgs::Awake :datatype-) "audio_msgs/Awake")
(setf (get audio_msgs::Awake :definition-)
      "geometry_msgs/Vector3 direction
uint16 relative_angle
float32 score

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :audio_msgs/Awake "b67c4c1f2cbb59c79b9f56d85e60a268")


