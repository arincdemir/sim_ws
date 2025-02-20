;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::Bumper)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'Bumper (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::BUMPER")
  (make-package "MOBILE_BASE_DRIVER::BUMPER"))

(in-package "ROS")
;;//! \htmlinclude Bumper.msg.html


(intern "*RIGHT*" (find-package "MOBILE_BASE_DRIVER::BUMPER"))
(shadow '*RIGHT* (find-package "MOBILE_BASE_DRIVER::BUMPER"))
(defconstant mobile_base_driver::Bumper::*RIGHT* 0)
(intern "*CENTER*" (find-package "MOBILE_BASE_DRIVER::BUMPER"))
(shadow '*CENTER* (find-package "MOBILE_BASE_DRIVER::BUMPER"))
(defconstant mobile_base_driver::Bumper::*CENTER* 1)
(intern "*LEFT*" (find-package "MOBILE_BASE_DRIVER::BUMPER"))
(shadow '*LEFT* (find-package "MOBILE_BASE_DRIVER::BUMPER"))
(defconstant mobile_base_driver::Bumper::*LEFT* 2)
(intern "*RELEASED*" (find-package "MOBILE_BASE_DRIVER::BUMPER"))
(shadow '*RELEASED* (find-package "MOBILE_BASE_DRIVER::BUMPER"))
(defconstant mobile_base_driver::Bumper::*RELEASED* 0)
(intern "*PRESSED*" (find-package "MOBILE_BASE_DRIVER::BUMPER"))
(shadow '*PRESSED* (find-package "MOBILE_BASE_DRIVER::BUMPER"))
(defconstant mobile_base_driver::Bumper::*PRESSED* 1)

(defun mobile_base_driver::Bumper-to-symbol (const)
  (cond
        ((= const 0) 'mobile_base_driver::Bumper::*RIGHT*)
        ((= const 1) 'mobile_base_driver::Bumper::*CENTER*)
        ((= const 2) 'mobile_base_driver::Bumper::*LEFT*)
        ((= const 0) 'mobile_base_driver::Bumper::*RELEASED*)
        ((= const 1) 'mobile_base_driver::Bumper::*PRESSED*)
        (t nil)))

(defclass mobile_base_driver::Bumper
  :super ros::object
  :slots (_bumper _state ))

(defmethod mobile_base_driver::Bumper
  (:init
   (&key
    ((:bumper __bumper) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _bumper (round __bumper))
   (setq _state (round __state))
   self)
  (:bumper
   (&optional __bumper)
   (if __bumper (setq _bumper __bumper)) _bumper)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _bumper
    1
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _bumper
       (write-byte _bumper s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _bumper
     (setq _bumper (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mobile_base_driver::Bumper :md5sum-) "96ae89263ef90e8520c31ccfe1d3540a")
(setf (get mobile_base_driver::Bumper :datatype-) "mobile_base_driver/Bumper")
(setf (get mobile_base_driver::Bumper :definition-)
      "# Provides a bumper stae

# bumper
uint8 RIGHT     = 0
uint8 CENTER    = 1
uint8 LEFT      = 2

# bumper state
uint8 RELEASED = 0
uint8 PRESSED = 1

uint8 bumper
uint8 state

")



(provide :mobile_base_driver/Bumper "96ae89263ef90e8520c31ccfe1d3540a")


