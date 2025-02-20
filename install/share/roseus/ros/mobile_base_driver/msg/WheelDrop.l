;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::WheelDrop)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'WheelDrop (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::WHEELDROP")
  (make-package "MOBILE_BASE_DRIVER::WHEELDROP"))

(in-package "ROS")
;;//! \htmlinclude WheelDrop.msg.html


(intern "*RIGHT*" (find-package "MOBILE_BASE_DRIVER::WHEELDROP"))
(shadow '*RIGHT* (find-package "MOBILE_BASE_DRIVER::WHEELDROP"))
(defconstant mobile_base_driver::WheelDrop::*RIGHT* 0)
(intern "*LEFT*" (find-package "MOBILE_BASE_DRIVER::WHEELDROP"))
(shadow '*LEFT* (find-package "MOBILE_BASE_DRIVER::WHEELDROP"))
(defconstant mobile_base_driver::WheelDrop::*LEFT* 1)
(intern "*RAISED*" (find-package "MOBILE_BASE_DRIVER::WHEELDROP"))
(shadow '*RAISED* (find-package "MOBILE_BASE_DRIVER::WHEELDROP"))
(defconstant mobile_base_driver::WheelDrop::*RAISED* 0)
(intern "*DROPPED*" (find-package "MOBILE_BASE_DRIVER::WHEELDROP"))
(shadow '*DROPPED* (find-package "MOBILE_BASE_DRIVER::WHEELDROP"))
(defconstant mobile_base_driver::WheelDrop::*DROPPED* 1)

(defun mobile_base_driver::WheelDrop-to-symbol (const)
  (cond
        ((= const 0) 'mobile_base_driver::WheelDrop::*RIGHT*)
        ((= const 1) 'mobile_base_driver::WheelDrop::*LEFT*)
        ((= const 0) 'mobile_base_driver::WheelDrop::*RAISED*)
        ((= const 1) 'mobile_base_driver::WheelDrop::*DROPPED*)
        (t nil)))

(defclass mobile_base_driver::WheelDrop
  :super ros::object
  :slots (_wheel _state ))

(defmethod mobile_base_driver::WheelDrop
  (:init
   (&key
    ((:wheel __wheel) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _wheel (round __wheel))
   (setq _state (round __state))
   self)
  (:wheel
   (&optional __wheel)
   (if __wheel (setq _wheel __wheel)) _wheel)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _wheel
    1
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _wheel
       (write-byte _wheel s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _wheel
     (setq _wheel (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mobile_base_driver::WheelDrop :md5sum-) "fb4521cb4dace44ce1858348261dd098")
(setf (get mobile_base_driver::WheelDrop :datatype-) "mobile_base_driver/WheelDrop")
(setf (get mobile_base_driver::WheelDrop :definition-)
      "# Provides a wheeldrop sensor stae

# wheel
uint8 RIGHT = 0
uint8 LEFT  = 1

# wheel state
uint8 RAISED  = 0
uint8 DROPPED = 1

uint8 wheel
uint8 state

")



(provide :mobile_base_driver/WheelDrop "fb4521cb4dace44ce1858348261dd098")


