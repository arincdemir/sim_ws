;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::Touch)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'Touch (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::TOUCH")
  (make-package "MOBILE_BASE_DRIVER::TOUCH"))

(in-package "ROS")
;;//! \htmlinclude Touch.msg.html


(defclass mobile_base_driver::Touch
  :super ros::object
  :slots (_electrodes ))

(defmethod mobile_base_driver::Touch
  (:init
   (&key
    ((:electrodes __electrodes) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _electrodes __electrodes)
   self)
  (:electrodes
   (&optional __electrodes)
   (if __electrodes (setq _electrodes __electrodes)) _electrodes)
  (:serialization-length
   ()
   (+
    ;; bool[] _electrodes
    (* 1    (length _electrodes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _electrodes
     (write-long (length _electrodes) s)
     (dotimes (i (length _electrodes))
       (if (elt _electrodes i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _electrodes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _electrodes (make-list n))
     (dotimes (i n)
     (setf (elt _electrodes i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get mobile_base_driver::Touch :md5sum-) "45f8d1c4c44dcc7ee376d119a02375bb")
(setf (get mobile_base_driver::Touch :datatype-) "mobile_base_driver/Touch")
(setf (get mobile_base_driver::Touch :definition-)
      "# true means touched
# [FRONT_LEFT, LEFT, REAR_LEFT, CENTER, FRONT, REAR_RIGHT, RIGHT, FRONT_RIGHT]
bool[] electrodes

")



(provide :mobile_base_driver/Touch "45f8d1c4c44dcc7ee376d119a02375bb")


