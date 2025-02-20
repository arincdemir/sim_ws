;; Auto-generated. Do not edit!


(when (boundp 'gizmo_msgs::FilteredBattery)
  (if (not (find-package "GIZMO_MSGS"))
    (make-package "GIZMO_MSGS"))
  (shadow 'FilteredBattery (find-package "GIZMO_MSGS")))
(unless (find-package "GIZMO_MSGS::FILTEREDBATTERY")
  (make-package "GIZMO_MSGS::FILTEREDBATTERY"))

(in-package "ROS")
;;//! \htmlinclude FilteredBattery.msg.html


(defclass gizmo_msgs::FilteredBattery
  :super ros::object
  :slots (_rounded_pct _dock_present _is_charging ))

(defmethod gizmo_msgs::FilteredBattery
  (:init
   (&key
    ((:rounded_pct __rounded_pct) 0)
    ((:dock_present __dock_present) nil)
    ((:is_charging __is_charging) nil)
    )
   (send-super :init)
   (setq _rounded_pct (round __rounded_pct))
   (setq _dock_present __dock_present)
   (setq _is_charging __is_charging)
   self)
  (:rounded_pct
   (&optional __rounded_pct)
   (if __rounded_pct (setq _rounded_pct __rounded_pct)) _rounded_pct)
  (:dock_present
   (&optional (__dock_present :null))
   (if (not (eq __dock_present :null)) (setq _dock_present __dock_present)) _dock_present)
  (:is_charging
   (&optional (__is_charging :null))
   (if (not (eq __is_charging :null)) (setq _is_charging __is_charging)) _is_charging)
  (:serialization-length
   ()
   (+
    ;; uint8 _rounded_pct
    1
    ;; bool _dock_present
    1
    ;; bool _is_charging
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _rounded_pct
       (write-byte _rounded_pct s)
     ;; bool _dock_present
       (if _dock_present (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_charging
       (if _is_charging (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _rounded_pct
     (setq _rounded_pct (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _dock_present
     (setq _dock_present (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_charging
     (setq _is_charging (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get gizmo_msgs::FilteredBattery :md5sum-) "82098baeacd5c1019567d710d5140fd2")
(setf (get gizmo_msgs::FilteredBattery :datatype-) "gizmo_msgs/FilteredBattery")
(setf (get gizmo_msgs::FilteredBattery :definition-)
      "uint8 rounded_pct
bool dock_present
bool is_charging

")



(provide :gizmo_msgs/FilteredBattery "82098baeacd5c1019567d710d5140fd2")


