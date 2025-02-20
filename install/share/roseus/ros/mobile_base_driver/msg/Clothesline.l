;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::Clothesline)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'Clothesline (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::CLOTHESLINE")
  (make-package "MOBILE_BASE_DRIVER::CLOTHESLINE"))

(in-package "ROS")
;;//! \htmlinclude Clothesline.msg.html


(intern "*NOTHING*" (find-package "MOBILE_BASE_DRIVER::CLOTHESLINE"))
(shadow '*NOTHING* (find-package "MOBILE_BASE_DRIVER::CLOTHESLINE"))
(defconstant mobile_base_driver::Clothesline::*NOTHING* 0)
(intern "*SOMETHING*" (find-package "MOBILE_BASE_DRIVER::CLOTHESLINE"))
(shadow '*SOMETHING* (find-package "MOBILE_BASE_DRIVER::CLOTHESLINE"))
(defconstant mobile_base_driver::Clothesline::*SOMETHING* 1)

(defun mobile_base_driver::Clothesline-to-symbol (const)
  (cond
        ((= const 0) 'mobile_base_driver::Clothesline::*NOTHING*)
        ((= const 1) 'mobile_base_driver::Clothesline::*SOMETHING*)
        (t nil)))

(defclass mobile_base_driver::Clothesline
  :super ros::object
  :slots (_state _distance ))

(defmethod mobile_base_driver::Clothesline
  (:init
   (&key
    ((:state __state) 0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _distance (float __distance))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mobile_base_driver::Clothesline :md5sum-) "86c594a65048cb5ab786bd284ae19bfc")
(setf (get mobile_base_driver::Clothesline :datatype-) "mobile_base_driver/Clothesline")
(setf (get mobile_base_driver::Clothesline :definition-)
      "# clothesline sensor state

uint8 NOTHING   = 0
uint8 SOMETHING = 1

uint8   state
float32 distance

")



(provide :mobile_base_driver/Clothesline "86c594a65048cb5ab786bd284ae19bfc")


