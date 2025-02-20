;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::VolumeButton)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'VolumeButton (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::VOLUMEBUTTON")
  (make-package "GIZMO_MSGS::VOLUMEBUTTON"))

(in-package "ROS")
;;//! \htmlinclude VolumeButton.msg.html


(defclass gizmo_msgs::VolumeButton
  :super ros::object
  :slots (_up_button_pressed _down_button_pressed ))

(defmethod gizmo_msgs::VolumeButton
  (:init
   (&key
    ((:up_button_pressed __up_button_pressed) nil)
    ((:down_button_pressed __down_button_pressed) nil)
    )
   (send-super :init)
   (setq _up_button_pressed __up_button_pressed)
   (setq _down_button_pressed __down_button_pressed)
   self)
  (:up_button_pressed
   (&optional (__up_button_pressed :null))
   (if (not (eq __up_button_pressed :null)) (setq _up_button_pressed __up_button_pressed)) _up_button_pressed)
  (:down_button_pressed
   (&optional (__down_button_pressed :null))
   (if (not (eq __down_button_pressed :null)) (setq _down_button_pressed __down_button_pressed)) _down_button_pressed)
  (:serialization-length
   ()
   (+
    ;; bool _up_button_pressed
    1
    ;; bool _down_button_pressed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _up_button_pressed
       (if _up_button_pressed (write-byte -1 s) (write-byte 0 s))
     ;; bool _down_button_pressed
       (if _down_button_pressed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _up_button_pressed
     (setq _up_button_pressed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _down_button_pressed
     (setq _down_button_pressed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get gizmo_msgs::VolumeButton :md5sum-) "521894f40e8f5ce718766f39cf828cea")
(setf (get gizmo_msgs::VolumeButton :datatype-) "gizmo_msgs/VolumeButton")
(setf (get gizmo_msgs::VolumeButton :definition-)
      "bool up_button_pressed
bool down_button_pressed
")



(provide :gizmo_msgs/VolumeButton "521894f40e8f5ce718766f39cf828cea")


