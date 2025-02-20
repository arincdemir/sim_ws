;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::CliffSensor)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'CliffSensor (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR")
  (make-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))

(in-package "ROS")
;;//! \htmlinclude CliffSensor.msg.html


(intern "*RIGHT*" (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(shadow '*RIGHT* (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(defconstant mobile_base_driver::CliffSensor::*RIGHT* 0)
(intern "*MIDRIGHT*" (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(shadow '*MIDRIGHT* (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(defconstant mobile_base_driver::CliffSensor::*MIDRIGHT* 1)
(intern "*MIDLEFT*" (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(shadow '*MIDLEFT* (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(defconstant mobile_base_driver::CliffSensor::*MIDLEFT* 2)
(intern "*LEFT*" (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(shadow '*LEFT* (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(defconstant mobile_base_driver::CliffSensor::*LEFT* 3)
(intern "*BACKLEFT*" (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(shadow '*BACKLEFT* (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(defconstant mobile_base_driver::CliffSensor::*BACKLEFT* 4)
(intern "*BACKRIGHT*" (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(shadow '*BACKRIGHT* (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(defconstant mobile_base_driver::CliffSensor::*BACKRIGHT* 5)
(intern "*FLOOR*" (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(shadow '*FLOOR* (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(defconstant mobile_base_driver::CliffSensor::*FLOOR* 0)
(intern "*CLIFF*" (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(shadow '*CLIFF* (find-package "MOBILE_BASE_DRIVER::CLIFFSENSOR"))
(defconstant mobile_base_driver::CliffSensor::*CLIFF* 1)

(defun mobile_base_driver::CliffSensor-to-symbol (const)
  (cond
        ((= const 0) 'mobile_base_driver::CliffSensor::*RIGHT*)
        ((= const 1) 'mobile_base_driver::CliffSensor::*MIDRIGHT*)
        ((= const 2) 'mobile_base_driver::CliffSensor::*MIDLEFT*)
        ((= const 3) 'mobile_base_driver::CliffSensor::*LEFT*)
        ((= const 4) 'mobile_base_driver::CliffSensor::*BACKLEFT*)
        ((= const 5) 'mobile_base_driver::CliffSensor::*BACKRIGHT*)
        ((= const 0) 'mobile_base_driver::CliffSensor::*FLOOR*)
        ((= const 1) 'mobile_base_driver::CliffSensor::*CLIFF*)
        (t nil)))

(defclass mobile_base_driver::CliffSensor
  :super ros::object
  :slots (_sensor _state _distance _return_rate ))

(defmethod mobile_base_driver::CliffSensor
  (:init
   (&key
    ((:sensor __sensor) 0)
    ((:state __state) 0)
    ((:distance __distance) 0.0)
    ((:return_rate __return_rate) 0.0)
    )
   (send-super :init)
   (setq _sensor (round __sensor))
   (setq _state (round __state))
   (setq _distance (float __distance))
   (setq _return_rate (float __return_rate))
   self)
  (:sensor
   (&optional __sensor)
   (if __sensor (setq _sensor __sensor)) _sensor)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:return_rate
   (&optional __return_rate)
   (if __return_rate (setq _return_rate __return_rate)) _return_rate)
  (:serialization-length
   ()
   (+
    ;; uint8 _sensor
    1
    ;; uint8 _state
    1
    ;; float32 _distance
    4
    ;; float32 _return_rate
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _sensor
       (write-byte _sensor s)
     ;; uint8 _state
       (write-byte _state s)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _return_rate
       (sys::poke _return_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _sensor
     (setq _sensor (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _return_rate
     (setq _return_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mobile_base_driver::CliffSensor :md5sum-) "df8e935c1e6098b4bc39e9a6c6ab00d2")
(setf (get mobile_base_driver::CliffSensor :datatype-) "mobile_base_driver/CliffSensor")
(setf (get mobile_base_driver::CliffSensor :definition-)
      "# Provides a cliff sensor reading
# This message is generated whenever a particular cliff sensor signals that the
# robot approaches or moves away from a cliff.

# cliff sensor
uint8 RIGHT     = 0
uint8 MIDRIGHT  = 1
uint8 MIDLEFT   = 2
uint8 LEFT      = 3
uint8 BACKLEFT  = 4
uint8 BACKRIGHT = 5

# cliff sensor state
uint8 FLOOR = 0
uint8 CLIFF = 1

uint8 sensor
uint8 state

# distance to floor when cliff was detected
float32 distance

# return rate from the vl6180x, rear cliff sensors only
float32 return_rate
")



(provide :mobile_base_driver/CliffSensor "df8e935c1e6098b4bc39e9a6c6ab00d2")


