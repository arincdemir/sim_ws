;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::ChestLeds)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'ChestLeds (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::CHESTLEDS")
  (make-package "MOBILE_BASE_DRIVER::CHESTLEDS"))

(in-package "ROS")
;;//! \htmlinclude ChestLeds.msg.html


(defclass mobile_base_driver::ChestLeds
  :super ros::object
  :slots (_leds ))

(defmethod mobile_base_driver::ChestLeds
  (:init
   (&key
    ((:leds __leds) (let (r) (dotimes (i 15) (push (instance mobile_base_driver::Led :init) r)) r))
    )
   (send-super :init)
   (setq _leds __leds)
   self)
  (:leds
   (&rest __leds)
   (if (keywordp (car __leds))
       (send* _leds __leds)
     (progn
       (if __leds (setq _leds (car __leds)))
       _leds)))
  (:serialization-length
   ()
   (+
    ;; mobile_base_driver/Led[15] _leds
    (apply #'+ (send-all _leds :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mobile_base_driver/Led[15] _leds
     (dolist (elem _leds)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mobile_base_driver/Led[15] _leds
   (dotimes (i 15)
     (send (elt _leds i) :deserialize buf ptr-) (incf ptr- (send (elt _leds i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get mobile_base_driver::ChestLeds :md5sum-) "ef09340f131b3099106bbb45d67c5ff0")
(setf (get mobile_base_driver::ChestLeds :datatype-) "mobile_base_driver/ChestLeds")
(setf (get mobile_base_driver::ChestLeds :definition-)
      "# Provide chest LEDs frame
# Index 0 is the center LED
# With 0 degrees straight up increasing clockwise

# Inner ring
# Index 1 : 150 degrees
# Index 2 : 210 degrees
# Index 3 : 270 degrees
# Index 4 : 330 degrees
# Index 5 : 30 degrees
# Index 6 : 90 degrees

# Outter ring
# Index 13 : 22 degrees
# Index 14 : 67 degrees
# Index 7  : 112 degrees
# Index 8  : 157 degrees
# Index 9  : 202 degrees
# Index 10 : 247 degrees
# Index 11 : 292 degrees
# Index 12 : 337 degrees

Led[15]    leds

================================================================================
MSG: mobile_base_driver/Led
# Provides a three color LED state

uint8 red
uint8 green
uint8 blue
")



(provide :mobile_base_driver/ChestLeds "ef09340f131b3099106bbb45d67c5ff0")


