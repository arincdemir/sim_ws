;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::BatteryCapacity)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'BatteryCapacity (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::BATTERYCAPACITY")
  (make-package "MOBILE_BASE_DRIVER::BATTERYCAPACITY"))

(in-package "ROS")
;;//! \htmlinclude BatteryCapacity.msg.html


(defclass mobile_base_driver::BatteryCapacity
  :super ros::object
  :slots (_mAh _pct _rounded_pct ))

(defmethod mobile_base_driver::BatteryCapacity
  (:init
   (&key
    ((:mAh __mAh) 0)
    ((:pct __pct) 0)
    ((:rounded_pct __rounded_pct) 0)
    )
   (send-super :init)
   (setq _mAh (round __mAh))
   (setq _pct (round __pct))
   (setq _rounded_pct (round __rounded_pct))
   self)
  (:mAh
   (&optional __mAh)
   (if __mAh (setq _mAh __mAh)) _mAh)
  (:pct
   (&optional __pct)
   (if __pct (setq _pct __pct)) _pct)
  (:rounded_pct
   (&optional __rounded_pct)
   (if __rounded_pct (setq _rounded_pct __rounded_pct)) _rounded_pct)
  (:serialization-length
   ()
   (+
    ;; int16 _mAh
    2
    ;; int8 _pct
    1
    ;; int8 _rounded_pct
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _mAh
       (write-word _mAh s)
     ;; int8 _pct
       (write-byte _pct s)
     ;; int8 _rounded_pct
       (write-byte _rounded_pct s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _mAh
     (setq _mAh (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _pct
     (setq _pct (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pct 127) (setq _pct (- _pct 256)))
   ;; int8 _rounded_pct
     (setq _rounded_pct (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _rounded_pct 127) (setq _rounded_pct (- _rounded_pct 256)))
   ;;
   self)
  )

(setf (get mobile_base_driver::BatteryCapacity :md5sum-) "44e1b0249db4fca04e974c31a68c58b0")
(setf (get mobile_base_driver::BatteryCapacity :datatype-) "mobile_base_driver/BatteryCapacity")
(setf (get mobile_base_driver::BatteryCapacity :definition-)
      "int16 mAh
int8 pct
int8 rounded_pct # capacity percentage estimate, rounded to the nearest 5 and
                 # subjected to hysteresis so it can only change if the value has
                 # changed by at least 5

")



(provide :mobile_base_driver/BatteryCapacity "44e1b0249db4fca04e974c31a68c58b0")


