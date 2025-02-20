;; Auto-generated. Do not edit!


(when (boundp 'mobile_base_driver::Power)
  (if (not (find-package "MOBILE_BASE_DRIVER"))
    (make-package "MOBILE_BASE_DRIVER"))
  (shadow 'Power (find-package "MOBILE_BASE_DRIVER")))
(unless (find-package "MOBILE_BASE_DRIVER::POWER")
  (make-package "MOBILE_BASE_DRIVER::POWER"))

(in-package "ROS")
;;//! \htmlinclude Power.msg.html


(defclass mobile_base_driver::Power
  :super ros::object
  :slots (_adc_channels _v_dock _v_batt _i_batt _t_batt _dock_present _is_charging _power_button_pressed _battery ))

(defmethod mobile_base_driver::Power
  (:init
   (&key
    ((:adc_channels __adc_channels) (make-array 0 :initial-element 0 :element-type :integer))
    ((:v_dock __v_dock) 0.0)
    ((:v_batt __v_batt) 0.0)
    ((:i_batt __i_batt) 0.0)
    ((:t_batt __t_batt) 0.0)
    ((:dock_present __dock_present) nil)
    ((:is_charging __is_charging) nil)
    ((:power_button_pressed __power_button_pressed) nil)
    ((:battery __battery) (instance mobile_base_driver::BatteryCapacity :init))
    )
   (send-super :init)
   (setq _adc_channels __adc_channels)
   (setq _v_dock (float __v_dock))
   (setq _v_batt (float __v_batt))
   (setq _i_batt (float __i_batt))
   (setq _t_batt (float __t_batt))
   (setq _dock_present __dock_present)
   (setq _is_charging __is_charging)
   (setq _power_button_pressed __power_button_pressed)
   (setq _battery __battery)
   self)
  (:adc_channels
   (&optional __adc_channels)
   (if __adc_channels (setq _adc_channels __adc_channels)) _adc_channels)
  (:v_dock
   (&optional __v_dock)
   (if __v_dock (setq _v_dock __v_dock)) _v_dock)
  (:v_batt
   (&optional __v_batt)
   (if __v_batt (setq _v_batt __v_batt)) _v_batt)
  (:i_batt
   (&optional __i_batt)
   (if __i_batt (setq _i_batt __i_batt)) _i_batt)
  (:t_batt
   (&optional __t_batt)
   (if __t_batt (setq _t_batt __t_batt)) _t_batt)
  (:dock_present
   (&optional (__dock_present :null))
   (if (not (eq __dock_present :null)) (setq _dock_present __dock_present)) _dock_present)
  (:is_charging
   (&optional (__is_charging :null))
   (if (not (eq __is_charging :null)) (setq _is_charging __is_charging)) _is_charging)
  (:power_button_pressed
   (&optional (__power_button_pressed :null))
   (if (not (eq __power_button_pressed :null)) (setq _power_button_pressed __power_button_pressed)) _power_button_pressed)
  (:battery
   (&rest __battery)
   (if (keywordp (car __battery))
       (send* _battery __battery)
     (progn
       (if __battery (setq _battery (car __battery)))
       _battery)))
  (:serialization-length
   ()
   (+
    ;; uint16[] _adc_channels
    (* 2    (length _adc_channels)) 4
    ;; float32 _v_dock
    4
    ;; float32 _v_batt
    4
    ;; float32 _i_batt
    4
    ;; float32 _t_batt
    4
    ;; bool _dock_present
    1
    ;; bool _is_charging
    1
    ;; bool _power_button_pressed
    1
    ;; mobile_base_driver/BatteryCapacity _battery
    (send _battery :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[] _adc_channels
     (write-long (length _adc_channels) s)
     (dotimes (i (length _adc_channels))
       (write-word (elt _adc_channels i) s)
       )
     ;; float32 _v_dock
       (sys::poke _v_dock (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_batt
       (sys::poke _v_batt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _i_batt
       (sys::poke _i_batt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _t_batt
       (sys::poke _t_batt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _dock_present
       (if _dock_present (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_charging
       (if _is_charging (write-byte -1 s) (write-byte 0 s))
     ;; bool _power_button_pressed
       (if _power_button_pressed (write-byte -1 s) (write-byte 0 s))
     ;; mobile_base_driver/BatteryCapacity _battery
       (send _battery :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[] _adc_channels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _adc_channels (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _adc_channels i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float32 _v_dock
     (setq _v_dock (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_batt
     (setq _v_batt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _i_batt
     (setq _i_batt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _t_batt
     (setq _t_batt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _dock_present
     (setq _dock_present (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_charging
     (setq _is_charging (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _power_button_pressed
     (setq _power_button_pressed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; mobile_base_driver/BatteryCapacity _battery
     (send _battery :deserialize buf ptr-) (incf ptr- (send _battery :serialization-length))
   ;;
   self)
  )

(setf (get mobile_base_driver::Power :md5sum-) "64de407003b036b2169e0188bd020101")
(setf (get mobile_base_driver::Power :datatype-) "mobile_base_driver/Power")
(setf (get mobile_base_driver::Power :definition-)
      "uint16[] adc_channels
float32 v_dock
float32 v_batt
float32 i_batt
float32 t_batt
bool dock_present
bool is_charging
bool power_button_pressed
BatteryCapacity battery

================================================================================
MSG: mobile_base_driver/BatteryCapacity
int16 mAh
int8 pct
int8 rounded_pct # capacity percentage estimate, rounded to the nearest 5 and
                 # subjected to hysteresis so it can only change if the value has
                 # changed by at least 5

")



(provide :mobile_base_driver/Power "64de407003b036b2169e0188bd020101")


