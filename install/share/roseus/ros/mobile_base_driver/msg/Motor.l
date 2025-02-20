;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::Motor)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'Motor (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::MOTOR")
  (make-package "MOBILE_BASE_DRIVER::MOTOR"))

(in-package "ROS")
;;//! \htmlinclude Motor.msg.html


(intern "*RIGHTWHEEL*" (find-package "MOBILE_BASE_DRIVER::MOTOR"))
(shadow '*RIGHTWHEEL* (find-package "MOBILE_BASE_DRIVER::MOTOR"))
(defconstant mobile_base_driver::Motor::*RIGHTWHEEL* 0)
(intern "*LEFTWHEEL*" (find-package "MOBILE_BASE_DRIVER::MOTOR"))
(shadow '*LEFTWHEEL* (find-package "MOBILE_BASE_DRIVER::MOTOR"))
(defconstant mobile_base_driver::Motor::*LEFTWHEEL* 1)
(intern "*PAN*" (find-package "MOBILE_BASE_DRIVER::MOTOR"))
(shadow '*PAN* (find-package "MOBILE_BASE_DRIVER::MOTOR"))
(defconstant mobile_base_driver::Motor::*PAN* 2)
(intern "*TILT*" (find-package "MOBILE_BASE_DRIVER::MOTOR"))
(shadow '*TILT* (find-package "MOBILE_BASE_DRIVER::MOTOR"))
(defconstant mobile_base_driver::Motor::*TILT* 3)
(intern "*EYES*" (find-package "MOBILE_BASE_DRIVER::MOTOR"))
(shadow '*EYES* (find-package "MOBILE_BASE_DRIVER::MOTOR"))
(defconstant mobile_base_driver::Motor::*EYES* 4)

(defun mobile_base_driver::Motor-to-symbol (const)
  (cond
        ((= const 0) 'mobile_base_driver::Motor::*RIGHTWHEEL*)
        ((= const 1) 'mobile_base_driver::Motor::*LEFTWHEEL*)
        ((= const 2) 'mobile_base_driver::Motor::*PAN*)
        ((= const 3) 'mobile_base_driver::Motor::*TILT*)
        ((= const 4) 'mobile_base_driver::Motor::*EYES*)
        (t nil)))

(defclass mobile_base_driver::Motor
  :super ros::object
  :slots (_stalled _pushed ))

(defmethod mobile_base_driver::Motor
  (:init
   (&key
    ((:stalled __stalled) nil)
    ((:pushed __pushed) nil)
    )
   (send-super :init)
   (setq _stalled __stalled)
   (setq _pushed __pushed)
   self)
  (:stalled
   (&optional (__stalled :null))
   (if (not (eq __stalled :null)) (setq _stalled __stalled)) _stalled)
  (:pushed
   (&optional (__pushed :null))
   (if (not (eq __pushed :null)) (setq _pushed __pushed)) _pushed)
  (:serialization-length
   ()
   (+
    ;; bool _stalled
    1
    ;; bool _pushed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stalled
       (if _stalled (write-byte -1 s) (write-byte 0 s))
     ;; bool _pushed
       (if _pushed (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stalled
     (setq _stalled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pushed
     (setq _pushed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mobile_base_driver::Motor :md5sum-) "474302a9ee5ae83e0d6191474935a690")
(setf (get mobile_base_driver::Motor :datatype-) "mobile_base_driver/Motor")
(setf (get mobile_base_driver::Motor :definition-)
      "# Provides a motor state

# motor
uint8 RIGHTWHEEL     = 0
uint8 LEFTWHEEL      = 1
uint8 PAN            = 2
uint8 TILT           = 3
uint8 EYES           = 4

bool  stalled
bool  pushed
")



(provide :mobile_base_driver/Motor "474302a9ee5ae83e0d6191474935a690")


