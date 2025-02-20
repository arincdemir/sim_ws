;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::WheelTrajPoint)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'WheelTrajPoint (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::WHEELTRAJPOINT")
  (make-package "MOBILE_BASE_DRIVER::WHEELTRAJPOINT"))

(in-package "ROS")
;;//! \htmlinclude WheelTrajPoint.msg.html


(defclass mobile_base_driver::WheelTrajPoint
  :super ros::object
  :slots (_time_from_start _linear_vel _angular_vel ))

(defmethod mobile_base_driver::WheelTrajPoint
  (:init
   (&key
    ((:time_from_start __time_from_start) (instance ros::time :init))
    ((:linear_vel __linear_vel) 0.0)
    ((:angular_vel __angular_vel) 0.0)
    )
   (send-super :init)
   (setq _time_from_start __time_from_start)
   (setq _linear_vel (float __linear_vel))
   (setq _angular_vel (float __angular_vel))
   self)
  (:time_from_start
   (&optional __time_from_start)
   (if __time_from_start (setq _time_from_start __time_from_start)) _time_from_start)
  (:linear_vel
   (&optional __linear_vel)
   (if __linear_vel (setq _linear_vel __linear_vel)) _linear_vel)
  (:angular_vel
   (&optional __angular_vel)
   (if __angular_vel (setq _angular_vel __angular_vel)) _angular_vel)
  (:serialization-length
   ()
   (+
    ;; duration _time_from_start
    8
    ;; float64 _linear_vel
    8
    ;; float64 _angular_vel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _time_from_start
       (write-long (send _time_from_start :sec) s) (write-long (send _time_from_start :nsec) s)
     ;; float64 _linear_vel
       (sys::poke _linear_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_vel
       (sys::poke _angular_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _time_from_start
     (send _time_from_start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_from_start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _linear_vel
     (setq _linear_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_vel
     (setq _angular_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mobile_base_driver::WheelTrajPoint :md5sum-) "83f621b6e10790ea4ea291815a52bf4a")
(setf (get mobile_base_driver::WheelTrajPoint :datatype-) "mobile_base_driver/WheelTrajPoint")
(setf (get mobile_base_driver::WheelTrajPoint :definition-)
      "duration time_from_start
float64 linear_vel
float64 angular_vel

")



(provide :mobile_base_driver/WheelTrajPoint "83f621b6e10790ea4ea291815a52bf4a")


