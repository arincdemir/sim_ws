;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::HeadPose)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'HeadPose (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::HEADPOSE")
  (make-package "GIZMO_MSGS::HEADPOSE"))

(in-package "ROS")
;;//! \htmlinclude HeadPose.msg.html


(defclass gizmo_msgs::HeadPose
  :super ros::object
  :slots (_pan _tilt ))

(defmethod gizmo_msgs::HeadPose
  (:init
   (&key
    ((:pan __pan) 0.0)
    ((:tilt __tilt) 0.0)
    )
   (send-super :init)
   (setq _pan (float __pan))
   (setq _tilt (float __tilt))
   self)
  (:pan
   (&optional __pan)
   (if __pan (setq _pan __pan)) _pan)
  (:tilt
   (&optional __tilt)
   (if __tilt (setq _tilt __tilt)) _tilt)
  (:serialization-length
   ()
   (+
    ;; float32 _pan
    4
    ;; float32 _tilt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pan
       (sys::poke _pan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tilt
       (sys::poke _tilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pan
     (setq _pan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tilt
     (setq _tilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gizmo_msgs::HeadPose :md5sum-) "938e11f380abc0513a5b7367d0f157bf")
(setf (get gizmo_msgs::HeadPose :datatype-) "gizmo_msgs/HeadPose")
(setf (get gizmo_msgs::HeadPose :definition-)
      "float32 pan
float32 tilt

")



(provide :gizmo_msgs/HeadPose "938e11f380abc0513a5b7367d0f157bf")


